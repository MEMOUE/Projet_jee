package servlets;

import dao.UtilisateurDao;
import beans.Utilisateur;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/update")
public class UpdateUser extends HttpServlet {
    private static final String VUE_UPDATE_USER = "/WEB-INF/modifierUtilisateur.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int userId = Integer.parseInt(request.getParameter("id"));
            Utilisateur user = UtilisateurDao.getUserById(userId);

            if (user != null) {
                // Set user as an attribute to pre-fill the form
                request.setAttribute("utilisateur", user);
                request.getRequestDispatcher(VUE_UPDATE_USER).forward(request, response);
            } else {
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Utilisateur introuvable");
            }
        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID utilisateur invalide");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int userId = Integer.parseInt(request.getParameter("id"));
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String login = request.getParameter("login");
            String password = request.getParameter("password");

            Utilisateur user = new Utilisateur(nom, prenom, login, password);

            boolean success = UtilisateurDao.updateUser(userId, user);

            if (success) {
                response.sendRedirect("list");
            } else {
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Échec de la mise à jour");
            }
        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID utilisateur invalide");
        }
    }
}
