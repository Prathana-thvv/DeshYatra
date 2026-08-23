package com.deshyatra.servlet;

import com.deshyatra.dao.BookingDAO;
import com.deshyatra.dao.TourPackageDAO;
import com.deshyatra.model.Booking;
import com.deshyatra.model.TourPackage;
import com.deshyatra.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Date;

@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Require login before booking
        HttpSession session = request.getSession();
        User loggedInUser = (User) session.getAttribute("user");

        if (loggedInUser == null) {
            response.sendRedirect("login.jsp?error=loginRequired");
            return;
        }

        int packageId = Integer.parseInt(request.getParameter("packageId"));
        int travelers = Integer.parseInt(request.getParameter("travelers"));
        String travelDateStr = request.getParameter("travelDate"); // format: yyyy-MM-dd from <input type="date">
        String roomType = request.getParameter("roomType");
        String notes = request.getParameter("notes");

        // Look up the package to get its price
        TourPackageDAO packageDAO = new TourPackageDAO();
        TourPackage pkg = packageDAO.getById(packageId);

        if (pkg == null) {
            response.sendRedirect("booking.jsp?error=invalidPackage");
            return;
        }

        // Total amount = package price * number of travelers
        BigDecimal amount = pkg.getPrice().multiply(BigDecimal.valueOf(travelers));

        Booking booking = new Booking();
        booking.setUserId(loggedInUser.getUserId());
        booking.setPackageId(packageId);
        booking.setTravelDate(Date.valueOf(travelDateStr));
        booking.setTravelers(travelers);
        booking.setRoomType(roomType);
        booking.setStatus("Pending");
        booking.setAmount(amount);
        booking.setNotes(notes);

        BookingDAO bookingDAO = new BookingDAO();
        boolean success = bookingDAO.insert(booking);

        if (success) {
            response.sendRedirect("dashboard.jsp?booking=success");
        } else {
            response.sendRedirect("booking.jsp?error=failed");
        }
    }
}