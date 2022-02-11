package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.employee.Employee;

import util.DatabaseConnection;

public class EmployeeDao {

	public void insertData(Employee employee) throws SQLException, NullPointerException, ClassNotFoundException {
		Connection connection = DatabaseConnection.initializeDatabase();
		PreparedStatement preparedStatement = null;

		try {
			String insertQuery = "INSERT INTO employee (firstname, lastname, username, password, address, mobileno) VALUES (?, ?, ?, ?, ?, ?);";
			preparedStatement = connection.prepareStatement(insertQuery);

			preparedStatement.setString(1, employee.getFirstname());
			preparedStatement.setString(2, employee.getLastname());
			preparedStatement.setString(3, employee.getUsername());
			preparedStatement.setString(4, employee.getPassword());
			preparedStatement.setString(5, employee.getAddress());
			preparedStatement.setString(6, employee.getMobileno());

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (preparedStatement != null) {
				preparedStatement.close();
			}
			if (connection != null) {
				connection.close();
			}
		}
	}

}
