<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8">    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value='/css/style.css' />">
    <!-- Ajouter Font Awesome pour les icônes -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <title>Liste des utilisateurs</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #ffffff;
            color: #000000;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #000000;
            color: #ffffff;
            padding: 20px;
            text-align: center;
        }

        nav {
            background-color: #f1f1f1;
            padding: 15px;
            margin-top: 10px;
            border-top: 2px solid #000000;
        }

        nav ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        nav ul li {
            display: inline;
            margin-right: 15px;
        }

        nav ul li a {
            text-decoration: none;
            color: #000000;
            font-weight: bold;
        }

        nav ul li a:hover {
            color: #555555;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            border: 1px solid #000000;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #000000;
            color: #ffffff;
        }

        .button {
            text-decoration: none;
            padding: 5px 10px;
            background-color: #000000;
            color: white;
            border-radius: 5px;
        }

        .button:hover {
            background-color: #555555;
        }

        .delete {
            background-color: red;
        }

        .delete:hover {
            background-color: darkred;
        }

        .text-center {
            text-align: center;
        }
    </style>
</head>
<body>
    <!-- Premier en-tête : Gestion Utilisateur -->
    <header>
        <h1>Gestion des utilisateurs</h1>
    </header>
    
    <!-- Deuxième en-tête : Liste Employé, Ajout, Connexion, Déconnexion -->
    <nav>
        <ul>
            <li><a href="<c:url value='/' />">Accueil</a></li>
            <li><a href="<c:url value='/list' />">Liste Employés</a></li>
            <li><a href="<c:url value='/add' />">Ajouter un Employé</a></li>
            <li><a href="<c:url value='/login' />">Connexion</a></li>
            <li><a href="<c:url value='/logout' />">Déconnexion</a></li>
        </ul>
    </nav>

    <!-- Contenu principal : Liste des utilisateurs -->
    <main class="container">
        <h2>Liste des utilisateurs</h2>
        <a href="add" class="button"><i class="fas fa-user-plus"></i> Ajouter utilisateur</a>
        
        <c:choose>
            <c:when test="${empty utilisateurs}">
                <p class="text-center">La liste des utilisateurs est vide !</p>
            </c:when>
            <c:otherwise>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nom</th>
                            <th>Prénom</th>
                            <th>Login</th>
                            <th>Password</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="utilisateur" items="${utilisateurs}">
                            <tr>
                                <td><c:out value="${utilisateur.id}"/></td>
                                <td><c:out value="${utilisateur.nom}"/></td>
                                <td><c:out value="${utilisateur.prenom}"/></td>
                                <td><c:out value="${utilisateur.login}"/></td>
                                <td><c:out value="${utilisateur.password}"/></td>
                                <td>
                                    <a href="update?id=<c:out value='${utilisateur.id}'/>" class="button">
                                        <i class="fas fa-edit"></i> Modifier
                                    </a>
                                    <a href="delete?id=<c:out value='${utilisateur.id}'/>" class="button delete" onclick="return confirm('Êtes-vous sûr de vouloir supprimer cet utilisateur ?');">
                                        <i class="fas fa-trash"></i> Supprimer
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:otherwise>
        </c:choose>
    </main>

    <%@include file="inc/footer.jsp" %>
</body>
</html>
