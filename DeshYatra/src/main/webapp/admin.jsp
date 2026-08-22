<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin — DeshYatra</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Fraunces:wght@500;600;700&family=Work+Sans:wght@400;500;600&family=JetBrains+Mono:wght@400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="style.css">
</head>
<body>

<div class="d-flex">
  <!-- Sidebar -->
  <div class="dy-sidebar" style="width: 240px;">
    <a href="index.jsp" class="brand">Desh<span style="color:var(--marigold)">Yatra</span></a>
    <a href="admin.jsp" class="active"><i class="fa-solid fa-gauge me-2"></i>Dashboard</a>
    <a href="#"><i class="fa-solid fa-map-location-dot me-2"></i>Destinations</a>
    <a href="#"><i class="fa-solid fa-box-open me-2"></i>Packages</a>
    <a href="#"><i class="fa-solid fa-calendar-check me-2"></i>Bookings</a>
    <a href="#"><i class="fa-solid fa-users me-2"></i>Users</a>
    <a href="#"><i class="fa-solid fa-star me-2"></i>Reviews</a>
    <a href="login.jsp" class="mt-4"><i class="fa-solid fa-right-from-bracket me-2"></i>Log Out</a>
  </div>

  <!-- Main -->
  <div class="flex-grow-1 py-4 px-5" style="background: var(--sand);">
    <div class="d-flex justify-content-between align-items-center mb-4">
      <div>
        <span class="eyebrow">Admin Panel</span>
        <h1 class="h3 mb-0">Overview</h1>
      </div>
      <button class="btn btn-dy-primary"><i class="fa-solid fa-plus me-2"></i>Add Destination</button>
    </div>

    <div class="row g-4 mb-4">
      <div class="col-md-3">
        <div class="stat-card">
          <div class="num">128</div>
          <div class="label">Destinations</div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="stat-card">
          <div class="num">64</div>
          <div class="label">Packages</div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="stat-card">
          <div class="num">312</div>
          <div class="label">Bookings This Month</div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="stat-card">
          <div class="num">15,042</div>
          <div class="label">Registered Users</div>
        </div>
      </div>
    </div>

    <div class="dy-form-card">
      <div class="d-flex justify-content-between align-items-center mb-3">
        <h3 class="h6 mb-0">Recent Bookings</h3>
        <a href="#" class="small">View all</a>
      </div>
      <div class="table-responsive">
        <table class="table dy-table">
          <thead>
            <tr><th>Booking ID</th><th>User</th><th>Package</th><th>Date</th><th>Amount</th><th>Status</th><th></th></tr>
          </thead>
          <tbody>
            <tr>
              <td>#DY-2041</td>
              <td>Aditi Sharma</td>
              <td>Kerala Backwater Trail</td>
              <td>12 Sep 2026</td>
              <td>&#8377;42,998</td>
              <td><span class="badge badge-status-confirmed px-2 py-1">Confirmed</span></td>
              <td><a href="#" class="small">Manage</a></td>
            </tr>
            <tr>
              <td>#DY-2040</td>
              <td>Rohan Verma</td>
              <td>Ladakh High Passes</td>
              <td>03 Oct 2026</td>
              <td>&#8377;24,900</td>
              <td><span class="badge badge-status-pending px-2 py-1">Pending</span></td>
              <td><a href="#" class="small">Manage</a></td>
            </tr>
            <tr>
              <td>#DY-2039</td>
              <td>Meera Nair</td>
              <td>Goa Coastal Getaway</td>
              <td>28 Aug 2026</td>
              <td>&#8377;12,499</td>
              <td><span class="badge badge-status-confirmed px-2 py-1">Confirmed</span></td>
              <td><a href="#" class="small">Manage</a></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>