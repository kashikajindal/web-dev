<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Cold Brew Website</title>
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            list-style: none;
            text-decoration: none;
            font-family: "Roboto", sans-serif;
        }

        :root {
            --bg-color: #0c0c0c;
            --text-color: #fff;
            --main-color: #ae8957;
            --big-font: 6.6rem;
            --p-font: 1rem;
        }

        body {
            background: var(--bg-color);
            color: var(--text-color);
        }

        header {
            position: fixed;
            width: 100%;
            top: 0;
            right: 0;
            z-index: 1000;
            padding: 35px 7%;
            display: flex;
            align-items: center;
            justify-content: space-between;
            transition: all .50s ease;
        }

        .logo img {
            width: 100%;
            height: auto;
        }

        .navlist {
            display: flex;
        }

        .navlist a {
            display: inline-block;
            margin: 0 35px;
            color: var(--text-color);
            font-size: var(--p-font);
            transition: all .6s ease;
        }

        .navlist a:hover {
            color: var(--main-color);
        }

        .right-content {
            display: flex;
            align-items: center;
        }

        .nav-btn {
            display: inline-block;
            padding: 9px 24px;
            background: transparent;
            border: 2px solid var(--text-color);
            border-radius: 7px;
            color: var(--text-color);
            font-size: 15px;
            font-weight: 500;
            transition: all .6s ease;
        }

        .nav-btn:hover {
            transform: translateY(-5px);
            border: 2px solid var(--main-color);
            color: var(--main-color);
        }

        #menu-icon {
            font-size: 42px;
            z-index: 10001;
            cursor: pointer;
            margin-left: 25px;
            display: none;
        }

        section {
            padding: 0 13%;
        }

        .hero {
            position: relative;
            width: 100%;
            height: 100vh;
            background: url(bg.png);
            background-size: cover;
            background-position: center;
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            align-items: center;
            gap: 2rem;
        }

        .hero-img img {
            width: 100%;
            height: auto;
        }

        .hero-text h1 {
            font-size: var(--big-font);
            font-weight: 900;
            margin: 15px 0;
        }

        .hero-text h5 {
            font-size: 18px;
            font-weight: 400;
            letter-spacing: 1px;
        }

        .hero-text p {
            width: 100%;
            max-width: 620px;
            font-size: var(--p-font);
            font-weight: 400;
            line-height: 32px;
            color: var(--text-color);
            margin-bottom: 40px;
        }

        .main-hero {
            display: flex;
            align-items: center;
        }

        .btn {
            display: inline-block;
            padding: 13px 32px;
            background: var(--main-color);
            border: 2px solid transparent;
            border-radius: 7px;
            color: var(--text-color);
            font-size: 15px;
            font-weight: 500;
            transition: all .6s ease;
            margin-right: 20px;
        }

        .btn:hover {
            transform: scale(1.1);
        }

        .price {
            display: flex;
            align-items: center;
            font-size: 28px;
            font-weight: bold;
            color: var(--text-color);
        }

        .price span {
            font-size: 17px;
            font-weight: 400;
            color: var(--main-color);
            margin-left: 10px;
        }

        .icons {
            position: absolute;
            top: 50%;
            padding: 0 7%;
            transform: translateY(-50%);
        }

        .icons i {
            display: block;
            margin: 35px 0;
            color: var(--text-color);
            font-size: 23px;
            transition: all .6s;
        }

        .icons i:hover {
            transform: translateY(-5px);
            color: var(--main-color);
        }

        .scroll {
            position: absolute;
            top: 92%;
            right: 7%;
            transform: translateY(-50%);
        }

        .scroll a {
            color: var(--text-color);
            font-size: 16px;
        }

        .scroll i {
            font-size: 20px;
            color: var(--text-color);
            margin-right: 6px;
        }

        @media(max-width:1770px) {
            header {
                padding: 22px 4%;
            }

            .icons {
                padding: 0 4%;
            }

            .scroll {
                right: 4%;
            }
        }

        @media(max-width:1670px) {
            :root {
                --big-font: 5.5rem;
                --p-font: 15px;
            }
        }

        @media(max-width:1370px) {
            .icons {
                display: none;

            }

            section {
                padding: 0 4%;
            }
        }

        @media(max-width:1550px) {
            :root {
                --big-font: 20px;
            }

            .price {
                font-size: 20px;
            }

            .btn {
                padding: 10px 23px;
            }
        }
    </style>

    <!-- boxicons -->
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">

    <!-- remix icons -->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.3.0/fonts/remixicon.css" rel="stylesheet" />

    <!-- google fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">


</head>

<body>
    <header>
        <a href="#" class="logo">
            <img src="logo.png" alt="">
        </a>

        <ul class="navlist">
            <li><a href="#">About</a></li>
            <li><a href="#">Memborship</a></li>
            <li><a href="#">Events</a></li>
            <li><a href="#">Contact</a></li>
        </ul>

        <div class="right-content">
            <a href="#" class="nav-btn">Sign In</a>
            <div class="bx bx-menu" id="menu-icon"></div>
        </div>
    </header>

    <section class="hero">
        <div class="hero-text">
            <h5>#Coffee for hot days</h5>
            <h1>- Cold Brew</h1>
            <p>Boots your productivity and build your mood with a glass of coffee in the morning. Coffee has a
                stimulating effect.</p>

            <div class="main-hero">
                <a href="#" class="btn">Order Now</a>
                <a href="#" class="price">
                    $16.00 | <span>Regular Price</span>
                </a>
            </div>
        </div>

        <div class="hero-img">
            <img src="hero.png" alt="">
        </div>

        <div class="icons">
            <a href="#"><i class="ri-facebook-fill"></i></a>
            <a href="#"><i class="ri-youtube-fill"></i></a>
            <a href="#"><i class="ri-twitter-fill"></i></a>
        </div>

        <div class="scroll">
            <a href="#">
                <i class="ri-scroll-to-bottom-line"></i>
                SCROLL DOWN
            </a>
        </div>
    </section>
</body>

</html>
