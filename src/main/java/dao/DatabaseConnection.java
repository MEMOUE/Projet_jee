package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {

    private static final String URL = "jdbc:mysql://localhost:3306/gesusers";  // Nom de votre base de données
    private static final String USER = "root";  // Nom d'utilisateur de la base de données
    private static final String PASSWORD = "";  // Mot de passe de la base de données

    public static Connection getConnection() {
        try {
            // Chargement du driver JDBC pour MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }
}
