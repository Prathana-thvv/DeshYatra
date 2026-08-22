<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
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

<jsp:include page="includes/navbar.jsp"><jsp:param name="activePage" value="dashboard"/></jsp:include>

<header class="dy-hero" style="padding: 2.8rem 0;">
  <div class="container">
    <span class="eyebrow">Your account</span>
    <h1 style="font-size: clamp(2rem, 4vw, 2.8rem);">My Trips</h1>
    <p class="lead">Track upcoming bookings and revisit past journeys.</p>
  </div>
</header>

<section class="container py-5">
  <div class="row g-4 mb-4">
    <div class="col-md-4">
      <div class="stat-card">
        <div class="num">2</div>
        <div class="label">Upcoming Trips</div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="stat-card">
        <div class="num">5</div>
        <div class="label">Trips Completed</div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="stat-card">
        <div class="num">&#8377;62,497</div>
        <div class="label">Total Spent</div>
      </div>
    </div>
  </div>

  <h3 class="h5 mb-3">Upcoming Bookings</h3>
  <div class="table-responsive mb-5">
    <table class="table dy-table">
      <thead>
        <tr><th>Package</th><th>Travel Date</th><th>Travelers</th><th>Amount</th><th>Status</th><th></th></tr>
      </thead>
      <tbody>
        <tr>
          <td>Kerala Backwater Trail</td>
          <td>12 Sep 2026</td>
          <td>2</td>
          <td>&#8377;42,998</td>
          <td><span class="badge badge-status-confirmed px-2 py-1">Confirmed</span></td>
          <td><a href="#" class="small">View</a></td>
        </tr>
        <tr>
          <td>Ladakh High Passes</td>
          <td>03 Oct 2026</td>
          <td>1</td>
          <td>&#8377;24,900</td>
          <td><span class="badge badge-status-pending px-2 py-1">Pending</span></td>
          <td><a href="#" class="small">View</a></td>
        </tr>
      </tbody>
    </table>
  </div>

  <h3 class="h5 mb-3">Past Trips</h3>
  <div class="table-responsive">
    <table class="table dy-table">
      <thead>
        <tr><th>Package</th><th>Travel Date</th><th>Travelers</th><th>Amount</th><th></th></tr>
      </thead>
      <tbody>
        <tr>
          <td>Golden Triangle Express</td>
          <td>18 Jan 2026</td>
          <td>2</td>
          <td>&#8377;33,998</td>
          <td><a href="#" class="small">Leave a Review</a></td>
        </tr>
        <tr>
          <td>Goa Coastal Getaway</td>
          <td>02 Nov 2025</td>
          <td>1</td>
          <td>&#8377;12,499</td>
          <td><a href="#" class="small">Leave a Review</a></td>
        </tr>
      </tbody>
    </table>
  </div>
</section>

<jsp:include page="includes/footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>