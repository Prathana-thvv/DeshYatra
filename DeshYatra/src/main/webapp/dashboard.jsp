<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.deshyatra.dao.BookingDAO" %>
<%@ page import="com.deshyatra.dao.TourPackageDAO" %>
<%@ page import="com.deshyatra.model.Booking" %>
<%@ page import="com.deshyatra.model.TourPackage" %>
<%@ page import="com.deshyatra.model.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.math.BigDecimal" %>
<%@ page import="java.time.LocalDate" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Trips — DeshYatra</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Fraunces:wght@500;600;700&family=Work+Sans:wght@400;500;600&family=JetBrains+Mono:wght@400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="style.css">
</head>
<body>

<%
    User loggedInUser = (User) session.getAttribute("user");
    if (loggedInUser == null) {
        response.sendRedirect("login.jsp?error=loginRequired");
        return;
    }

    BookingDAO bookingDAO = new BookingDAO();
    TourPackageDAO packageDAO = new TourPackageDAO();
    List<Booking> allBookings = bookingDAO.getByUser(loggedInUser.getUserId());

    LocalDate today = LocalDate.now();
    int upcomingCount = 0, pastCount = 0;
    BigDecimal totalSpent = BigDecimal.ZERO;
%>

<jsp:include page="includes/navbar.jsp"><jsp:param name="activePage" value="dashboard"/></jsp:include>

<header class="dy-hero" style="padding: 2.8rem 0;">
  <div class="container">
    <span class="eyebrow">Your account</span>
    <h1 style="font-size: clamp(2rem, 4vw, 2.8rem);">My Trips</h1>
    <p class="lead">Track upcoming bookings and revisit past journeys.</p>
  </div>
</header>

<section class="container py-5">

<%
    // First pass: compute stats
    for (Booking b : allBookings) {
        totalSpent = totalSpent.add(b.getAmount());
        if (b.getTravelDate().toLocalDate().isBefore(today)) {
            pastCount++;
        } else {
            upcomingCount++;
        }
    }
%>

  <div class="row g-4 mb-4">
    <div class="col-md-4">
      <div class="stat-card">
        <div class="num"><%= upcomingCount %></div>
        <div class="label">Upcoming Trips</div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="stat-card">
        <div class="num"><%= pastCount %></div>
        <div class="label">Trips Completed</div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="stat-card">
        <div class="num">&#8377;<%= totalSpent %></div>
        <div class="label">Total Spent</div>
      </div>
    </div>
  </div>

  <h3 class="h5 mb-3">Upcoming Bookings</h3>
  <div class="table-responsive mb-5">
    <table class="table dy-table">
      <thead>
        <tr><th>Package</th><th>Travel Date</th><th>Travelers</th><th>Amount</th><th>Status</th></tr>
      </thead>
      <tbody>
        <%
            boolean hasUpcoming = false;
            for (Booking b : allBookings) {
                if (!b.getTravelDate().toLocalDate().isBefore(today)) {
                    hasUpcoming = true;
                    TourPackage pkg = packageDAO.getById(b.getPackageId());
                    String pkgName = (pkg != null) ? pkg.getName() : "Unknown Package";
                    String badgeClass = "Confirmed".equals(b.getStatus()) ? "badge-status-confirmed" : "badge-status-pending";
        %>
        <tr>
          <td><%= pkgName %></td>
          <td><%= b.getTravelDate() %></td>
          <td><%= b.getTravelers() %></td>
          <td>&#8377;<%= b.getAmount() %></td>
          <td><span class="badge <%= badgeClass %> px-2 py-1"><%= b.getStatus() %></span></td>
        </tr>
        <% } } if (!hasUpcoming) { %>
        <tr><td colspan="5" class="text-muted text-center">No upcoming bookings yet.</td></tr>
        <% } %>
      </tbody>
    </table>
  </div>

  <h3 class="h5 mb-3">Past Trips</h3>
  <div class="table-responsive">
    <table class="table dy-table">
      <thead>
        <tr><th>Package</th><th>Travel Date</th><th>Travelers</th><th>Amount</th></tr>
      </thead>
      <tbody>
        <%
            boolean hasPast = false;
            for (Booking b : allBookings) {
                if (b.getTravelDate().toLocalDate().isBefore(today)) {
                    hasPast = true;
                    TourPackage pkg = packageDAO.getById(b.getPackageId());
                    String pkgName = (pkg != null) ? pkg.getName() : "Unknown Package";
        %>
        <tr>
          <td><%= pkgName %></td>
          <td><%= b.getTravelDate() %></td>
          <td><%= b.getTravelers() %></td>
          <td>&#8377;<%= b.getAmount() %></td>
        </tr>
        <% } } if (!hasPast) { %>
        <tr><td colspan="4" class="text-muted text-center">No past trips yet.</td></tr>
        <% } %>
      </tbody>
    </table>
  </div>
</section>

<jsp:include page="includes/footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>