<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Packages — DeshYatra</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Fraunces:wght@500;600;700&family=Work+Sans:wght@400;500;600&family=JetBrains+Mono:wght@400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="style.css">
</head>
<body>

<jsp:include page="includes/navbar.jsp"><jsp:param name="activePage" value="packages"/></jsp:include>

<header class="dy-hero" style="padding: 2.8rem 0;">
  <div class="container">
    <span class="eyebrow">Curated</span>
    <h1 style="font-size: clamp(2rem, 4vw, 2.8rem);">Tour Packages</h1>
    <p class="lead">Multi-day itineraries with stays, transfers, and guides sorted out for you.</p>
  </div>
</header>

<section class="container py-5">
  <div class="row g-4">
    <div class="col-md-4">
      <div class="pkg-card d-flex flex-column h-100">
        <span class="eyebrow">5 Days / 4 Nights</span>
        <h3 class="h5">Golden Triangle Express</h3>
        <p class="text-muted small">Delhi &middot; Agra &middot; Jaipur</p>
        <ul class="flex-grow-1">
          <li>Hotel + breakfast included</li>
          <li>Private AC cab transfers</li>
          <li>Guided monument tours</li>
        </ul>
        <span class="dest-price d-block mb-3">&#8377;16,999 / person</span>
        <a href="booking.jsp" class="btn btn-dy-primary w-100">Book This Package</a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="pkg-card d-flex flex-column h-100">
        <span class="eyebrow">6 Days / 5 Nights</span>
        <h3 class="h5">Kerala Backwater Trail</h3>
        <p class="text-muted small">Kochi &middot; Alleppey &middot; Munnar</p>
        <ul class="flex-grow-1">
          <li>1 night houseboat stay</li>
          <li>All meals included</li>
          <li>Tea garden trek</li>
        </ul>
        <span class="dest-price d-block mb-3">&#8377;21,499 / person</span>
        <a href="booking.jsp" class="btn btn-dy-primary w-100">Book This Package</a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="pkg-card d-flex flex-column h-100">
        <span class="eyebrow">4 Days / 3 Nights</span>
        <h3 class="h5">Ladakh High Passes</h3>
        <p class="text-muted small">Leh &middot; Nubra &middot; Pangong</p>
        <ul class="flex-grow-1">
          <li>Oxygen-support briefing</li>
          <li>Permits handled for you</li>
          <li>Camping at Pangong Tso</li>
        </ul>
        <span class="dest-price d-block mb-3">&#8377;24,900 / person</span>
        <a href="booking.jsp" class="btn btn-dy-primary w-100">Book This Package</a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="pkg-card d-flex flex-column h-100">
        <span class="eyebrow">3 Days / 2 Nights</span>
        <h3 class="h5">Goa Coastal Getaway</h3>
        <p class="text-muted small">North Goa &middot; South Goa</p>
        <ul class="flex-grow-1">
          <li>Beachfront resort stay</li>
          <li>Sunset cruise included</li>
          <li>Airport transfers</li>
        </ul>
        <span class="dest-price d-block mb-3">&#8377;12,499 / person</span>
        <a href="booking.jsp" class="btn btn-dy-primary w-100">Book This Package</a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="pkg-card d-flex flex-column h-100">
        <span class="eyebrow">7 Days / 6 Nights</span>
        <h3 class="h5">Northeast Explorer</h3>
        <p class="text-muted small">Guwahati &middot; Shillong &middot; Kaziranga</p>
        <ul class="flex-grow-1">
          <li>Wildlife safari included</li>
          <li>Living root bridge trek</li>
          <li>Local homestay night</li>
        </ul>
        <span class="dest-price d-block mb-3">&#8377;27,999 / person</span>
        <a href="booking.jsp" class="btn btn-dy-primary w-100">Book This Package</a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="pkg-card d-flex flex-column h-100">
        <span class="eyebrow">2 Days / 1 Night</span>
        <h3 class="h5">Varanasi Spiritual Trail</h3>
        <p class="text-muted small">Ganga Ghats &middot; Sarnath</p>
        <ul class="flex-grow-1">
          <li>Evening Ganga Aarti view</li>
          <li>Boat ride at sunrise</li>
          <li>Heritage walk</li>
        </ul>
        <span class="dest-price d-block mb-3">&#8377;7,299 / person</span>
        <a href="booking.jsp" class="btn btn-dy-primary w-100">Book This Package</a>
      </div>
    </div>
  </div>
</section>

<jsp:include page="includes/footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>