package com.deshyatra.servlet;

import com.deshyatra.dao.UserDAO;
import com.deshyatra.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fullName = request.getParameter("fullName");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        UserDAO userDAO = new UserDAO();

        if (!password.equals(confirmPassword)) {
            response.sendRedirect("signup.jsp?error=mismatch");
            return;
        }
        if (userDAO.emailExists(email)) {
            response.sendRedirect("signup.jsp?error=exists");
            return;
        }

        User newUser = new User();
        newUser.setFullName(fullName);
        newUser.setPhone(phone);
        newUser.setEmail(email);
        newUser.setPassword(password);
        newUser.setRole("USER");

        boolean success = userDAO.insert(newUser);

        if (success) {
            response.sendRedirect("login.jsp?signup=success");
        } else {
            response.sendRedirect("signup.jsp?error=failed");
        }
    }
}