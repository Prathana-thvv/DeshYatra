<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Log In — DeshYatra</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Fraunces:wght@500;600;700&family=Work+Sans:wght@400;500;600&family=JetBrains+Mono:wght@400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="style.css">
</head>
<body>

<nav class="navbar navbar-expand-lg dy-navbar">
  <div class="container">
    <a class="navbar-brand" href="index.jsp">Desh<span>Yatra</span></a>
    <a href="signup.jsp" class="btn btn-dy-outline ms-auto">New here? Sign Up</a>
  </div>
</nav>

<section class="container" style="max-width: 460px; padding: 5rem 0;">
  <div class="text-center mb-4">
    <span class="eyebrow">Welcome back</span>
    <h1 class="h2 mt-1">Log in to DeshYatra</h1>
  </div>
  <form class="dy-form-card" action="LoginServlet" method="post">
    <div class="mb-3">
      <label>Email Address</label>
      <input type="email" name="email" class="form-control" placeholder="you@example.com" required>
    </div>
    <div class="mb-3">
      <label>Password</label>
      <input type="password" name="password" class="form-control" placeholder="••••••••" required>
    </div>
    <div class="d-flex justify-content-between align-items-center mb-4">
      <div class="form-check">
        <input class="form-check-input" type="checkbox" id="remember">
        <label class="form-check-label small text-muted" for="remember">Remember me</label>
      </div>
      <a href="#" class="small">Forgot password?</a>
    </div>
    <button type="submit" class="btn btn-dy-primary w-100">Log In</button>
  </form>
  <p class="text-center text-muted small mt-4">Don't have an account? <a href="signup.jsp">Create one</a></p>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>