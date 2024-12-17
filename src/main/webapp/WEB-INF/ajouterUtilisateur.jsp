<%@ include file="inc/header.jsp" %>

<main class="container">
    <%-- <c:if test="${ !empty statusMessage }">
        <div class="error">Erreur lors de l'ajout de l'utilisateur</div>
    </c:if> --%>
    <h2>Ajout d'un utilisateur</h2>
    <form method="post" class="user-form">
        <div class="form-group">
            <label for="nom">Nom</label>
            <input type="text" name="nom" id="nom" value="${utilisateur.nom}">
            <c:if test="${ !empty erreurs.nom }">
                <span class="error">${ erreurs.nom }</span>
            </c:if>
        </div>

        <div class="form-group">
            <label for="prenom">Prénom</label>
            <input type="text" name="prenom" id="prenom" value="${utilisateur.prenom}">
            <c:if test="${ !empty erreurs.prenom }">
                <span class="error">${ erreurs.prenom }</span>
            </c:if>
        </div>

        <div class="form-group">
            <label for="login">Login</label>
            <input type="text" name="login" id="login" value="${utilisateur.login}">
            <c:if test="${ !empty erreurs.login }">
                <span class="error">${ erreurs.login }</span>
            </c:if>
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" name="password" id="password" value="${utilisateur.password}">
            <c:if test="${ !empty erreurs.password }">
                <span class="error">${ erreurs.password }</span>
            </c:if>
        </div>

        <div class="form-group">
            <label for="confirmation">Confirmation</label>
            <input type="password" name="confirmation" id="confirmation">
            <c:if test="${ !empty erreurs.confirmation }">
                <span class="error">${ erreurs.confirmation }</span>
            </c:if>
        </div>

        <div class="form-group">
            <input type="submit" value="Ajouter" class="submit-btn">
        </div>
    </form>
</main>

<%@ include file="inc/footer.jsp" %>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        color: #333;
    }

    .container {
        max-width: 800px;
        margin: 0 auto;
        padding: 40px;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
    }

    h2 {
        text-align: center;
        color: #333;
        font-size: 2em;
        margin-bottom: 20px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    label {
        font-size: 1.2em;
        color: #333;
        display: block;
        margin-bottom: 8px;
    }

    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 10px;
        font-size: 1em;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        background-color: #333;
        color: #fff;
        border: none;
        padding: 15px 30px;
        font-size: 1.2em;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
        margin-top: 20px;
    }

    input[type="submit"]:hover {
        background-color: #555;
    }

    .error {
        color: #e74c3c;
        font-size: 0.9em;
        margin-top: 5px;
        display: block;
    }

    .submit-btn {
        background-color: #2c3e50;
        color: #fff;
        padding: 12px;
        border-radius: 4px;
        font-size: 1.1em;
        cursor: pointer;
    }

    .submit-btn:hover {
        background-color: #34495e;
    }

    .error {
        font-size: 0.9em;
        color: #e74c3c;
    }

</style>

