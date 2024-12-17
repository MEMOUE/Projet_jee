package servlets;

import dao.UtilisateurDao;
import beans.Utilisateur;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/list")
public class ListUsers extends HttpServlet {
    private static final String VUE_LIST_USERS = "/WEB-INF/listerUtilisateur.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve the list of users via UtilisateurDao
        List<Utilisateur> utilisateurs = UtilisateurDao.getUsers();

        // Set users as an attribute to be displayed in the view
        request.setAttribute("utilisateurs", utilisateurs);

        // Forward to the view (listerUtilisateur.jsp)
        getServletContext().getRequestDispatcher(VUE_LIST_USERS).forward(request, response);
    }
}
