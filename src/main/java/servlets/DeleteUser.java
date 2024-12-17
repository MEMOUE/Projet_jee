package servlets;

import dao.UtilisateurDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete")
public class DeleteUser extends HttpServlet {
    private static final String VUE_LIST_USERS = "/WEB-INF/listerUtilisateur.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int userId = Integer.parseInt(request.getParameter("id"));

            boolean success = UtilisateurDao.deleteUser(userId);

            if (success) {
                // Redirect to the list of users after deletion
                response.sendRedirect("list");
            } else {
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Utilisateur avec l'ID " + userId + " introuvable");
            }
        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID utilisateur invalide");
        }
    }
}
