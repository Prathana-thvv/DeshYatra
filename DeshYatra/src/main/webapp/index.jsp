<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>DeshYatra — Journeys Across India</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Fraunces:wght@500;600;700&family=Work+Sans:wght@400;500;600&family=JetBrains+Mono:wght@400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="style.css">
</head>
<body>

<!-- Navbar -->
<jsp:include page="includes/navbar.jsp"><jsp:param name="activePage" value="home"/></jsp:include>

<!-- Hero -->
<header class="dy-hero">
  <div class="container">
    <div class="row align-items-center g-5">
      <div class="col-lg-6">
        <span class="eyebrow">Plan · Book · Wander</span>
        <h1 class="mt-2">Every state has<br>a story. Go find it.</h1>
        <p class="lead mt-3">From Kerala's backwaters to Ladakh's high passes — DeshYatra plans, books, and tracks your journey across India in one place.</p>
        <div class="d-flex gap-3 mt-4">
          <a href="destinations.jsp" class="btn btn-dy-primary btn-lg">Explore Destinations</a>
          <a href="packages.jsp" class="btn btn-dy-outline btn-lg">View Packages</a>
        </div>
        <div class="dy-hero-stats">
          <div><strong>28+</strong>States Covered</div>
          <div><strong>120+</strong>Curated Packages</div>
          <div><strong>15k+</strong>Travelers</div>
        </div>
      </div>
      <div class="col-lg-6">
        <div class="dy-hero-collage">
          <img class="img-a" src="https://picsum.photos/seed/deshyatra-taj/700/700" alt="Heritage monument">
          <img class="img-b" src="https://picsum.photos/seed/deshyatra-kerala/500/500" alt="Backwaters">
          <img class="img-c" src="https://picsum.photos/seed/deshyatra-himalaya/400/400" alt="Mountains">
        </div>
      </div>
    </div>
  </div>
</header>

<!-- Route line: how it works -->
<section class="container route-line-wrap">
  <div class="section-head text-center">
    <span class="eyebrow">The Route</span>
    <h2>Your journey, in four stops</h2>
  </div>
  <svg class="route-line-svg" viewBox="0 0 1000 40" preserveAspectRatio="none">
    <line x1="60" y1="20" x2="940" y2="20" stroke="#C9962C" stroke-width="2" stroke-dasharray="2 10" stroke-linecap="round"/>
  </svg>
  <div class="row text-center gy-4">
    <div class="col-6 col-md-3 route-waypoint">
      <div class="pin">01</div>
      <h3 class="h6 mb-1">Pick a Destination</h3>
      <div class="km">Browse 28 states</div>
    </div>
    <div class="col-6 col-md-3 route-waypoint">
      <div class="pin">02</div>
      <h3 class="h6 mb-1">Choose a Package</h3>
      <div class="km">Curated itineraries</div>
    </div>
    <div class="col-6 col-md-3 route-waypoint">
      <div class="pin">03</div>
      <h3 class="h6 mb-1">Book &amp; Confirm</h3>
      <div class="km">Secure checkout</div>
    </div>
    <div class="col-6 col-md-3 route-waypoint">
      <div class="pin">04</div>
      <h3 class="h6 mb-1">Track in Dashboard</h3>
      <div class="km">Manage your trip</div>
    </div>
  </div>
</section>

<!-- Featured Destinations -->
<section class="container py-5 mt-4">
  <div class="section-head d-flex justify-content-between align-items-end">
    <div>
      <span class="eyebrow">Featured</span>
      <h2>Popular destinations</h2>
    </div>
    <a href="destinations.jsp" class="d-none d-md-inline-block">View all &rarr;</a>
  </div>
  <div class="row g-4">
    <div class="col-md-4">
      <div class="dest-card">
        <img class="dest-img" src="https://picsum.photos/seed/dy-goa/500/400" alt="Goa">
        <div class="dest-body">
          <div class="dest-loc"><i class="fa-solid fa-location-dot"></i> Goa · West Coast</div>
          <h3>Beaches &amp; Old Latin Quarters</h3>
          <p class="text-muted small mb-2">Palm-lined shores, Portuguese-era streets, sunset shacks.</p>
          <span class="dest-price">From &#8377;8,999</span>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="dest-card">
        <img class="dest-img" src="https://picsum.photos/seed/dy-jaipur/500/400" alt="Jaipur">
        <div class="dest-body">
          <div class="dest-loc"><i class="fa-solid fa-location-dot"></i> Jaipur · Rajasthan</div>
          <h3>Forts, Bazaars &amp; Pink Streets</h3>
          <p class="text-muted small mb-2">Amber Fort, Hawa Mahal, and living royal history.</p>
          <span class="dest-price">From &#8377;11,499</span>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="dest-card">
        <img class="dest-img" src="https://picsum.photos/seed/dy-munnar/500/400" alt="Munnar">
        <div class="dest-body">
          <div class="dest-loc"><i class="fa-solid fa-location-dot"></i> Munnar · Kerala</div>
          <h3>Tea Gardens &amp; Misty Hills</h3>
          <p class="text-muted small mb-2">Rolling plantations and backwater houseboats.</p>
          <span class="dest-price">From &#8377;9,750</span>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Packages strip -->
<section class="container py-5">
  <div class="section-head">
    <span class="eyebrow">Curated</span>
    <h2>Popular packages</h2>
  </div>
  <div class="row g-4">
    <div class="col-md-4">
      <div class="pkg-card">
        <span class="eyebrow">5 Days / 4 Nights</span>
        <h3 class="h5">Golden Triangle Express</h3>
        <ul>
          <li>Delhi · Agra · Jaipur</li>
          <li>Hotel + breakfast included</li>
          <li>Private AC cab transfers</li>
        </ul>
        <span class="dest-price d-block mt-2">&#8377;16,999 / person</span>
      </div>
    </div>
    <div class="col-md-4">
      <div class="pkg-card">
        <span class="eyebrow">6 Days / 5 Nights</span>
        <h3 class="h5">Kerala Backwater Trail</h3>
        <ul>
          <li>Kochi · Alleppey · Munnar</li>
          <li>1 night houseboat stay</li>
          <li>All meals included</li>
        </ul>
        <span class="dest-price d-block mt-2">&#8377;21,499 / person</span>
      </div>
    </div>
    <div class="col-md-4">
      <div class="pkg-card">
        <span class="eyebrow">4 Days / 3 Nights</span>
        <h3 class="h5">Ladakh High Passes</h3>
        <ul>
          <li>Leh · Nubra · Pangong</li>
          <li>Oxygen-support briefing</li>
          <li>Permits handled for you</li>
        </ul>
        <span class="dest-price d-block mt-2">&#8377;24,900 / person</span>
      </div>
    </div>
  </div>
</section>

<!-- CTA -->
<section class="dy-cta">
  <div class="container">
    <h2>Ready to plan your next Yatra?</h2>
    <p class="mb-4">Create an account to save destinations and track bookings in one dashboard.</p>
    <a href="signup.jsp" class="btn btn-dy-primary btn-lg">Get Started</a>
  </div>
</section>

<!-- Footer -->
<footer class="dy-footer">
  <div class="container">
    <div class="row g-4">
      <div class="col-md-4">
        <h5>DeshYatra</h5>
        <p>Plan, book, and track journeys across every corner of India.</p>
      </div>
      <div class="col-md-2">
        <h5>Explore</h5>
        <p><a href="destinations.jsp">Destinations</a></p>
        <p><a href="packages.jsp">Packages</a></p>
      </div>
      <div class="col-md-2">
        <h5>Account</h5>
        <p><a href="login.jsp">Log In</a></p>
        <p><a href="signup.jsp">Sign Up</a></p>
      </div>
      <div class="col-md-4">
        <h5>Contact</h5>
        <p>support@deshyatra.in</p>
        <p>+91 33 4000 1234</p>
      </div>
    </div>
    <div class="bottom">&copy; 2026 DESHYATRA — TRAVEL &amp; TOURISM PLATFORM</div>
  </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>