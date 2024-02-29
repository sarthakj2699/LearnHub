package com.learnhub.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.learnhub.javabeans.ContactBean;



public class ContactDao {

	public int getContact(ContactBean contact) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO contacts" +
            "  (name, id, email, message) VALUES " +
            " (?, ?, ?, ?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/learnhub", "root", "root@123");

            
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            
            preparedStatement.setString(1, contact.getName());
            preparedStatement.setString(2, contact.getId());
            preparedStatement.setString(3, contact.getEmail());
            preparedStatement.setString(4, contact.getMessage());
            
            
            System.out.println(preparedStatement);
            
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
           
            printSQLException(e);
        }
        return result;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}


