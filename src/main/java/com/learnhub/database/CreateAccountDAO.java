package com.learnhub.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.learnhub.javabeans.*;

public class CreateAccountDAO {

    public int registerStudents(Students students) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO students_data" +
            "  (name, email, id, pass, cpass, mobile, address) VALUES " +
            " (?, ?, ?, ?, ?,?,?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/learnhub", "root", "root@123");

            
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            
            preparedStatement.setString(1, students.getName());
            preparedStatement.setString(2, students.getEmail());
            preparedStatement.setString(3, students.getId());
            preparedStatement.setString(4, students.getPass());
            preparedStatement.setString(5, students.getCpass());
            preparedStatement.setString(6, students.getMobile());
            preparedStatement.setString(7, students.getAddress());
            
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
