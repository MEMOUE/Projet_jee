<footer>
    <div class="footer-container">
        <div class="footer-content">
            <p>&copy; 2024 - Gestion des utilisateurs | Tous droits réservés</p>
        </div>
        <div class="footer-links">
            <ul>
                <li><a href="<c:url value='/about' />">À propos</a></li>
                <li><a href="<c:url value='/contact' />">Contact</a></li>
                <li><a href="<c:url value='/privacy-policy' />">Politique de confidentialité</a></li>
                <li><a href="<c:url value='/terms' />">Conditions d'utilisation</a></li>
            </ul>
        </div>
        <div class="footer-social">
            <ul>
                <li><a href="#" class="social-icon"><i class="fab fa-facebook"></i></a></li>
                <li><a href="#" class="social-icon"><i class="fab fa-twitter"></i></a></li>
                <li><a href="#" class="social-icon"><i class="fab fa-linkedin"></i></a></li>
            </ul>
        </div>
    </div>
</footer>

<!-- Intégrer Font Awesome pour les icônes sociales -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>

<style>
    footer {
        background-color: #000000;
        color: #ffffff;
        padding: 20px;
        text-align: center;
        font-size: 14px;
    }

    .footer-container {
        max-width: 1200px;
        margin: 0 auto;
        display: flex;
        justify-content: space-between;
        align-items: center;
        flex-wrap: wrap;
    }

    .footer-content {
        flex: 1;
        text-align: left;
    }

    .footer-links ul,
    .footer-social ul {
        list-style-type: none;
        padding: 0;
        margin: 0;
    }

    .footer-links li,
    .footer-social li {
        display: inline;
        margin-right: 15px;
    }

    .footer-links a,
    .footer-social a {
        text-decoration: none;
        color: #ffffff;
    }

    .footer-links a:hover,
    .footer-social a:hover {
        color: #ddd;
    }

    .footer-social .social-icon {
        font-size: 20px;
    }

    .footer-social li {
        display: inline-block;
    }
</style>
