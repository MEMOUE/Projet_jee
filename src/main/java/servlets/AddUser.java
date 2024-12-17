package servlets;

import java.io.IOException;

import beans.Utilisateur;
import dao.UtilisateurDao;
import forms.AddUserForm;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/add")
public class AddUser extends HttpServlet {
    private static final String VUE_ADD_USER = "/WEB-INF/ajouterUtilisateur.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher(VUE_ADD_USER).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AddUserForm form = new AddUserForm(request);

        // Validate and add user
        boolean status = form.add();

        if (status) {
            response.sendRedirect("list");  // Redirect to list after successful addition
        } else {
            // If errors occur, set attributes for the error message and user input for repopulation
            request.setAttribute("erreurs", form.getErreurs());
            request.setAttribute("statusMessage", form.getStatusMessage());
            request.setAttribute("status", form.getStatus());
            request.setAttribute("utilisateur", form.getUtilisateur());
            getServletContext().getRequestDispatcher(VUE_ADD_USER).forward(request, response);
        }
    }
}
