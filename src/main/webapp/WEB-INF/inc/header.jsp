<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8">    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value='/css/style.css' />">
    <title>Accueil</title>
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
</body>
</html>
