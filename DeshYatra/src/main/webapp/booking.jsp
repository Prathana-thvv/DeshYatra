<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Book a Trip — DeshYatra</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Fraunces:wght@500;600;700&family=Work+Sans:wght@400;500;600&family=JetBrains+Mono:wght@400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="style.css">
</head>
<body>

<jsp:include page="includes/navbar.jsp"><jsp:param name="activePage" value="booking"/></jsp:include>

<header class="dy-hero" style="padding: 2.8rem 0;">
  <div class="container">
    <span class="eyebrow">Almost there</span>
    <h1 style="font-size: clamp(2rem, 4vw, 2.8rem);">Book Your Trip</h1>
    <p class="lead">Fill in your travel details — we'll confirm availability by email.</p>
  </div>
</header>

<section class="container py-5">
  <div class="row g-4">
    <div class="col-lg-8">
      <form class="dy-form-card" action="BookingServlet" method="post">
        <h3 class="h6 mb-3">Traveler Details</h3>
        <div class="row">
          <div class="col-md-6 mb-3">
            <label>Full Name</label>
            <input type="text" name="fullName" class="form-control" required>
          </div>
          <div class="col-md-6 mb-3">
            <label>Email Address</label>
            <input type="email" name="email" class="form-control" required>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 mb-3">
            <label>Phone Number</label>
            <input type="tel" name="phone" class="form-control" required>
          </div>
          <div class="col-md-6 mb-3">
            <label>Number of Travelers</label>
            <input type="number" name="travelers" min="1" value="1" class="form-control" required>
          </div>
        </div>

        <h3 class="h6 mb-3 mt-4">Trip Details</h3>
        <div class="mb-3">
          <label>Select Package</label>
          <select name="packageId" class="form-control">
			  <option value="1">Golden Triangle Express — &#8377;16,999</option>
			  <option value="2">Kerala Backwater Trail — &#8377;21,499</option>
			  <option value="3">Ladakh High Passes — &#8377;24,900</option>
			  <option value="4">Goa Coastal Getaway — &#8377;12,499</option>
			  <option value="5">Varanasi Spiritual Trail — &#8377;7,299</option>
		  </select>
        </div>
        <div class="row">
          <div class="col-md-6 mb-3">
            <label>Travel Date</label>
            <input type="date" name="travelDate" class="form-control" required>
          </div>
          <div class="col-md-6 mb-3">
            <label>Room Type</label>
            <select name="roomType" class="form-control">
              <option>Standard</option>
              <option>Deluxe</option>
              <option>Suite</option>
            </select>
          </div>
        </div>
        <div class="mb-4">
          <label>Special Requests (optional)</label>
          <textarea name="notes" class="form-control" rows="3" placeholder="Dietary needs, accessibility, etc."></textarea>
        </div>
        <button type="submit" class="btn btn-dy-primary w-100 btn-lg">Confirm Booking</button>
      </form>
    </div>

    <div class="col-lg-4">
      <div class="dy-form-card">
        <h3 class="h6 mb-3">Booking Summary</h3>
        <p class="d-flex justify-content-between small"><span>Package</span><span>Golden Triangle</span></p>
        <p class="d-flex justify-content-between small"><span>Duration</span><span>5D / 4N</span></p>
        <p class="d-flex justify-content-between small"><span>Travelers</span><span>1</span></p>
        <hr>
        <p class="d-flex justify-content-between fw-semibold"><span>Total</span><span class="dest-price">&#8377;16,999</span></p>
        <p class="text-muted small mt-3 mb-0">Prices update automatically once booking is wired to the backend.</p>
      </div>
    </div>
  </div>
</section>

<jsp:include page="includes/footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>