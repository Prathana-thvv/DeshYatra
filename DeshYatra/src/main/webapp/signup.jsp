<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign Up — DeshYatra</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Fraunces:wght@500;600;700&family=Work+Sans:wght@400;500;600&family=JetBrains+Mono:wght@400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="style.css">
</head>
<body>

<nav class="navbar navbar-expand-lg dy-navbar">
  <div class="container">
    <a class="navbar-brand" href="index.jsp">Desh<span>Yatra</span></a>
    <a href="login.jsp" class="btn btn-dy-outline ms-auto">Already have an account? Log In</a>
  </div>
</nav>

<section class="container" style="max-width: 520px; padding: 4rem 0;">
  <div class="text-center mb-4">
    <span class="eyebrow">Join DeshYatra</span>
    <h1 class="h2 mt-1">Create your account</h1>
  </div>
  <form class="dy-form-card" action="SignupServlet" method="post">
    <div class="row">
      <div class="col-md-6 mb-3">
        <label>Full Name</label>
        <input type="text" name="fullName" class="form-control" placeholder="Aditi Sharma" required>
      </div>
      <div class="col-md-6 mb-3">
        <label>Phone Number</label>
        <input type="tel" name="phone" class="form-control" placeholder="+91 9xxxxxxxxx" required>
      </div>
    </div>
    <div class="mb-3">
      <label>Email Address</label>
      <input type="email" name="email" class="form-control" placeholder="you@example.com" required>
    </div>
    <div class="row">
      <div class="col-md-6 mb-3">
        <label>Password</label>
        <input type="password" name="password" class="form-control" placeholder="••••••••" required>
      </div>
      <div class="col-md-6 mb-3">
        <label>Confirm Password</label>
        <input type="password" name="confirmPassword" class="form-control" placeholder="••••••••" required>
      </div>
    </div>
    <div class="form-check mb-4">
      <input class="form-check-input" type="checkbox" id="terms" required>
      <label class="form-check-label small text-muted" for="terms">I agree to the Terms &amp; Privacy Policy</label>
    </div>
    <button type="submit" class="btn btn-dy-primary w-100">Create Account</button>
  </form>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>