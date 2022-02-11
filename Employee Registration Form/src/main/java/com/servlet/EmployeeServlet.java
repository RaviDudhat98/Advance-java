package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.dao.EmployeeDao;
import com.employee.Employee;

public class EmployeeServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Employee employee = new Employee();

		employee.setFirstname(request.getParameter("firstname"));
		employee.setLastname(request.getParameter("lastname"));
		employee.setUsername(request.getParameter("username"));
		employee.setPassword(request.getParameter("password"));
		employee.setAddress(request.getParameter("address"));
		employee.setMobileno(request.getParameter("mobileno"));

		System.out.println("Firstname:- " + employee.getFirstname());
		System.out.println("Lastname:- " + employee.getLastname());
		System.out.println("Username:- " + employee.getUsername());
		System.out.println("Password:- " + employee.getPassword());
		System.out.println("Address:- " + employee.getAddress());
		System.out.println("Mobileno:- " + employee.getMobileno());

		try {
			EmployeeDao employeedao = new EmployeeDao();
			employeedao.insertData(employee); 
			request.getRequestDispatcher("home.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
