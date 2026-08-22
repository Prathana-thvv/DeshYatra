<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String activePage = request.getParameter("activePage");
    if (activePage == null) activePage = "";
%>
<nav class="navbar navbar-expand-lg dy-navbar sticky-top">
  <div class="container">
    <a class="navbar-brand" href="index.jsp">Desh<span>Yatra</span></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMain">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navMain">
      <ul class="navbar-nav mx-auto">
        <li class="nav-item"><a class="nav-link <%= "home".equals(activePage) ? "active" : "" %>" href="index.jsp">Home</a></li>
        <li class="nav-item"><a class="nav-link <%= "destinations".equals(activePage) ? "active" : "" %>" href="destinations.jsp">Destinations</a></li>
        <li class="nav-item"><a class="nav-link <%= "packages".equals(activePage) ? "active" : "" %>" href="packages.jsp">Packages</a></li>
        <li class="nav-item"><a class="nav-link <%= "booking".equals(activePage) ? "active" : "" %>" href="booking.jsp">Book a Trip</a></li>
        <li class="nav-item"><a class="nav-link <%= "dashboard".equals(activePage) ? "active" : "" %>" href="dashboard.jsp">My Trips</a></li>
      </ul>
      <div class="d-flex gap-2">
        <a href="login.jsp" class="btn btn-dy-outline">Log In</a>
        <a href="signup.jsp" class="btn btn-dy-primary">Sign Up</a>
      </div>
    </div>
  </div>
</nav>