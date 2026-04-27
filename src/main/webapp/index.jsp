<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>KP Gym</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">

    <!-- AOS Animation -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: black;
            color: white;
        }

        /* HERO SECTION */
        .hero {
            height: 100vh;
            background: url('https://images.unsplash.com/photo-1558611848-73f7eb4001a1') no-repeat center center/cover;
            position: relative;
        }

        .overlay {
            position: absolute;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,0.7);
        }

        .hero-content {
            position: relative;
            z-index: 2;
            top: 50%;
            transform: translateY(-50%);
            text-align: center;
        }

        .hero h1 {
            font-size: 60px;
            font-weight: 700;
        }

        .hero p {
            font-size: 20px;
            margin-bottom: 30px;
        }

        .btn-custom {
            background: linear-gradient(45deg, #ff9800, #ff5722);
            border: none;
            padding: 12px 30px;
            font-size: 18px;
            border-radius: 30px;
            transition: 0.3s;
        }

        .btn-custom:hover {
            transform: scale(1.1);
            box-shadow: 0px 0px 20px rgba(255, 152, 0, 0.8);
        }

        /* FEATURES */
        .features {
            padding: 60px 0;
            background: #111;
        }

        .card {
            background: #1c1c1c;
            border: none;
            color: white;
            transition: 0.3s;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 0 20px rgba(255,255,255,0.2);
        }

        /* FOOTER */
        footer {
            background: #000;
            padding: 20px;
            text-align: center;
            color: #aaa;
        }
    </style>
</head>

<body>

<!-- HERO -->
<section class="hero">
    <div class="overlay"></div>
    <div class="container hero-content">
        <h1 data-aos="fade-up">KP GYM</h1>
        <p data-aos="fade-up" data-aos-delay="200">Train Hard. Stay Fit. Be Strong.</p>
        <a href="products" class="btn btn-custom" data-aos="zoom-in" data-aos-delay="400">
            Explore Equipment
        </a>
    </div>
</section>

<!-- FEATURES -->
<section class="features">
    <div class="container text-center">
        <h2 class="mb-5" data-aos="fade-up">Why Choose Us?</h2>

        <div class="row">
            <div class="col-md-4" data-aos="fade-right">
                <div class="card p-4">
                    <h4>🏋️ Premium Equipment</h4>
                    <p>Top-quality machines and weights for all workouts.</p>
                </div>
            </div>

            <div class="col-md-4" data-aos="fade-up">
                <div class="card p-4">
                    <h4>🔥 Expert Trainers</h4>
                    <p>Professional guidance to achieve your fitness goals.</p>
                </div>
            </div>

            <div class="col-md-4" data-aos="fade-left">
                <div class="card p-4">
                    <h4>💪 Affordable Plans</h4>
                    <p>Best pricing with maximum value for members.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- FOOTER -->
<footer>
    <p>© 2026 KP Gym | Stay Strong 💪</p>
</footer>

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

<script>
    AOS.init();
</script>

</body>
</html>
