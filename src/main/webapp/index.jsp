<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page d'Accueil - Gestion des utilisateurs</title>
    <link rel="stylesheet" href="<c:url value='/css/style.css' />">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }

        header {
            background-color: #000;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        header h1 {
            margin: 0;
            font-size: 2.5em;
        }

        nav {
            background-color: #333;
            padding: 10px 0;
        }

        nav ul {
            list-style: none;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        nav ul li {
            display: inline;
            margin-right: 20px;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
            font-size: 1.2em;
        }

        nav ul li a:hover {
            text-decoration: underline;
        }

        .main-content {
            max-width: 1200px;
            margin: 30px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .main-content h2 {
            font-size: 2em;
            margin-bottom: 20px;
        }

        .main-content p {
            font-size: 1.2em;
            line-height: 1.6;
        }

        .button {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            text-decoration: none;
            font-size: 1.2em;
            border-radius: 5px;
            margin-top: 20px;
        }

        .button:hover {
            background-color: #555;
        }

        footer {
            background-color: #000;
            color: #fff;
            padding: 20px;
            text-align: center;
            font-size: 1em;
        }

        footer a {
            color: #fff;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<header>
    <h1>Gestion des utilisateurs</h1>
    <p>Bienvenue sur la plateforme de gestion des utilisateurs</p>
</header>

<nav>
    <ul>
        <li><a href="<c:url value='/' />">Accueil</a></li>
        <li><a href="<c:url value='/list' />">Utilisateurs</a></li>
        <li><a href="<c:url value='/add' />">Ajouter un utilisateur</a></li>
        <li><a href="<c:url value='/login' />">Se connecter</a></li>
    </ul>
</nav>

<main class="main-content">
    <h2>Bienvenue sur la plateforme de gestion des utilisateurs</h2>
    <p>Vous pouvez gérer les utilisateurs, ajouter de nouveaux utilisateurs, modifier leurs informations ou encore les supprimer. Utilisez les liens ci-dessus pour naviguer entre les différentes sections.</p>
    <a href="<c:url value='/list' />" class="button">Voir la liste des utilisateurs</a>
</main>

<footer>
    <p>&copy; 2024 - Gestion des utilisateurs | Tous droits réservés</p>
    <p><a href="<c:url value='/privacy-policy' />">Politique de confidentialité</a> | <a href="<c:url value='/terms' />">Conditions d'utilisation</a></p>
</footer>

</body>
</html>
