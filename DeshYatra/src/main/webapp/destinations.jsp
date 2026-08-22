<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Destinations — DeshYatra</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Fraunces:wght@500;600;700&family=Work+Sans:wght@400;500;600&family=JetBrains+Mono:wght@400;500;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="style.css">
</head>
<body>

<jsp:include page="includes/navbar.jsp"><jsp:param name="activePage" value="destinations"/></jsp:include>

<header class="dy-hero" style="padding: 2.8rem 0;">
  <div class="container">
    <span class="eyebrow">Explore</span>
    <h1 style="font-size: clamp(2rem, 4vw, 2.8rem);">All Destinations</h1>
    <p class="lead">28 states, hundreds of stories. Filter by region or budget to find yours.</p>
  </div>
</header>

<section class="container py-5">
  <div class="row g-4">
    <!-- Filters -->
    <div class="col-lg-3">
      <div class="dy-form-card">
        <h3 class="h6 mb-3">Filter</h3>
        <label class="d-block">Region</label>
        <select class="form-control mb-3">
          <option>All Regions</option>
          <option>North India</option>
          <option>South India</option>
          <option>East India</option>
          <option>West India</option>
          <option>Northeast</option>
        </select>
        <label class="d-block">Budget (per person)</label>
        <select class="form-control mb-3">
          <option>Any Budget</option>
          <option>Under &#8377;10,000</option>
          <option>&#8377;10,000 &ndash; &#8377;20,000</option>
          <option>Above &#8377;20,000</option>
        </select>
        <label class="d-block">Trip Type</label>
        <select class="form-control mb-4">
          <option>Any Type</option>
          <option>Beaches</option>
          <option>Hills &amp; Mountains</option>
          <option>Heritage</option>
          <option>Wildlife</option>
        </select>
        <button class="btn btn-dy-primary w-100">Apply Filters</button>
      </div>
    </div>

    <!-- Grid -->
    <div class="col-lg-9">
      <div class="row g-4">
        <div class="col-md-4">
          <div class="dest-card">
            <img class="dest-img" src="https://picsum.photos/seed/dy-goa2/500/400" alt="Goa">
            <div class="dest-body">
              <div class="dest-loc"><i class="fa-solid fa-location-dot"></i> Goa · West Coast</div>
              <h3>Beaches &amp; Latin Quarters</h3>
              <span class="dest-price">From &#8377;8,999</span>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="dest-card">
            <img class="dest-img" src="https://picsum.photos/seed/dy-jaipur2/500/400" alt="Jaipur">
            <div class="dest-body">
              <div class="dest-loc"><i class="fa-solid fa-location-dot"></i> Jaipur · Rajasthan</div>
              <h3>Forts &amp; Pink Streets</h3>
              <span class="dest-price">From &#8377;11,499</span>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="dest-card">
            <img class="dest-img" src="https://picsum.photos/seed/dy-munnar2/500/400" alt="Munnar">
            <div class="dest-body">
              <div class="dest-loc"><i class="fa-solid fa-location-dot"></i> Munnar · Kerala</div>
              <h3>Tea Gardens &amp; Misty Hills</h3>
              <span class="dest-price">From &#8377;9,750</span>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="dest-card">
            <img class="dest-img" src="https://picsum.photos/seed/dy-varanasi/500/400" alt="Varanasi">
            <div class="dest-body">
              <div class="dest-loc"><i class="fa-solid fa-location-dot"></i> Varanasi · UP</div>
              <h3>Ghats &amp; Ancient Rituals</h3>
              <span class="dest-price">From &#8377;7,299</span>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="dest-card">
            <img class="dest-img" src="https://picsum.photos/seed/dy-ladakh/500/400" alt="Ladakh">
            <div class="dest-body">
              <div class="dest-loc"><i class="fa-solid fa-location-dot"></i> Leh · Ladakh</div>
              <h3>High Passes &amp; Monasteries</h3>
              <span class="dest-price">From &#8377;24,900</span>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="dest-card">
            <img class="dest-img" src="https://picsum.photos/seed/dy-andaman/500/400" alt="Andaman">
            <div class="dest-body">
              <div class="dest-loc"><i class="fa-solid fa-location-dot"></i> Andaman Islands</div>
              <h3>Coral Reefs &amp; Blue Waters</h3>
              <span class="dest-price">From &#8377;19,999</span>
            </div>
          </div>
        </div>
      </div>

      <nav class="mt-5">
        <ul class="pagination justify-content-center">
          <li class="page-item"><a class="page-link" href="#">&laquo;</a></li>
          <li class="page-item active"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
        </ul>
      </nav>
    </div>
  </div>
</section>

<jsp:include page="includes/footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>