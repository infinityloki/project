<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CharanMart - Your Shopping Destination</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;600;700&family=Inter:wght@400;500;600&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-blue: #2874f0;
            --secondary-blue: #1976d2;
            --accent-orange: #ff9f00;
            --dark-blue: #172337;
            --light-blue: #f1f3f6;
            --success-green: #388e3c;
            --white: #ffffff;
            --gray-100: #f8f9fa;
            --gray-200: #e9ecef;
            --gray-300: #dee2e6;
            --gray-700: #495057;
            --gray-900: #212529;
            --shadow: 0 2px 4px rgba(0,0,0,0.08);
            --shadow-lg: 0 8px 25px rgba(0,0,0,0.1);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Roboto', sans-serif;
            line-height: 1.6;
            color: var(--gray-900);
            background-color: var(--light-blue);
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 16px;
        }

        /* Header Styles */
        .header {
            background: var(--primary-blue);
            color: white;
            position: sticky;
            top: 0;
            z-index: 1000;
            box-shadow: var(--shadow-lg);
        }

        .header-top {
            background: var(--dark-blue);
            padding: 8px 0;
            font-size: 12px;
        }

        .header-top-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header-main {
            padding: 12px 0;
        }

        .header-content {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
        }

        .logo {
            font-size: 28px;
            font-weight: 700;
            color: white;
            text-decoration: none;
            font-style: italic;
        }

        .logo span {
            color: var(--accent-orange);
            font-size: 14px;
            font-style: normal;
            vertical-align: super;
        }

        .search-container {
            flex: 1;
            max-width: 500px;
            position: relative;
        }

        .search-box {
            display: flex;
            background: white;
            border-radius: 2px;
            overflow: hidden;
            box-shadow: var(--shadow);
        }

        .search-box input {
            flex: 1;
            padding: 10px 16px;
            border: none;
            outline: none;
            font-size: 14px;
        }

        .search-box button {
            background: var(--accent-orange);
            border: none;
            padding: 0 20px;
            color: white;
            cursor: pointer;
            transition: background 0.3s;
        }

        .search-box button:hover {
            background: #e68900;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 30px;
        }

        .header-btn {
            display: flex;
            align-items: center;
            gap: 8px;
            color: white;
            text-decoration: none;
            font-weight: 500;
            font-size: 16px;
            transition: opacity 0.3s;
        }

        .header-btn:hover {
            opacity: 0.8;
        }

        .cart-badge {
            background: var(--accent-orange);
            color: white;
            border-radius: 50%;
            width: 20px;
            height: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 11px;
            font-weight: 600;
            position: absolute;
            top: -8px;
            right: -8px;
        }

        /* Navigation */
        .nav-bar {
            background: white;
            box-shadow: var(--shadow);
            padding: 0;
        }

        .nav-content {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .categories-dropdown {
            position: relative;
        }

        .categories-btn {
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 16px 20px;
            background: none;
            border: none;
            font-size: 14px;
            font-weight: 500;
            cursor: pointer;
            color: var(--gray-900);
            transition: background 0.3s;
        }

        .categories-btn:hover {
            background: var(--gray-100);
        }

        .categories-menu {
            position: absolute;
            top: 100%;
            left: 0;
            background: white;
            min-width: 250px;
            box-shadow: var(--shadow-lg);
            border-radius: 4px;
            opacity: 0;
            visibility: hidden;
            transform: translateY(-10px);
            transition: all 0.3s;
            z-index: 1000;
        }

        .categories-dropdown:hover .categories-menu {
            opacity: 1;
            visibility: visible;
            transform: translateY(0);
        }

        .category-item {
            padding: 12px 20px;
            display: flex;
            align-items: center;
            gap: 12px;
            text-decoration: none;
            color: var(--gray-900);
            font-size: 14px;
            transition: background 0.3s;
        }

        .category-item:hover {
            background: var(--gray-100);
        }

        .category-icon {
            width: 20px;
            color: var(--primary-blue);
        }

        .nav-links {
            display: flex;
            gap: 40px;
        }

        .nav-link {
            text-decoration: none;
            color: var(--gray-900);
            font-weight: 500;
            font-size: 14px;
            padding: 16px 0;
            border-bottom: 2px solid transparent;
            transition: all 0.3s;
        }

        .nav-link:hover, .nav-link.active {
            color: var(--primary-blue);
            border-bottom-color: var(--primary-blue);
        }

        /* Hero Banner */
        .hero-banner {
            margin: 20px 0;
            border-radius: 8px;
            overflow: hidden;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            position: relative;
            min-height: 300px;
            display: flex;
            align-items: center;
        }

        .hero-content {
            padding: 60px;
            max-width: 50%;
        }

        .hero-title {
            font-size: 48px;
            font-weight: 700;
            margin-bottom: 16px;
            line-height: 1.2;
        }

        .hero-subtitle {
            font-size: 20px;
            margin-bottom: 24px;
            opacity: 0.9;
        }

        .hero-cta {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: var(--accent-orange);
            color: white;
            padding: 14px 28px;
            border-radius: 4px;
            text-decoration: none;
            font-weight: 600;
            font-size: 16px;
            transition: all 0.3s;
        }

        .hero-cta:hover {
            background: #e68900;
            transform: translateY(-2px);
        }

        /* Categories Grid */
        .categories-section {
            margin: 40px 0;
        }

        .section-title {
            font-size: 24px;
            font-weight: 600;
            margin-bottom: 20px;
            color: var(--gray-900);
        }

        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 20px;
            margin-bottom: 40px;
        }

        .category-card {
            background: white;
            border-radius: 8px;
            padding: 24px 16px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: all 0.3s;
            cursor: pointer;
            text-decoration: none;
            color: var(--gray-900);
        }

        .category-card:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-lg);
        }

        .category-card-icon {
            font-size: 36px;
            color: var(--primary-blue);
            margin-bottom: 12px;
        }

        .category-card h3 {
            font-size: 14px;
            font-weight: 600;
            margin-bottom: 4px;
        }

        .category-card p {
            font-size: 12px;
            color: var(--gray-700);
        }

        /* Product Grid */
        .products-section {
            background: white;
            margin: 40px 0;
            padding: 30px;
            border-radius: 8px;
            box-shadow: var(--shadow);
        }

        .products-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 24px;
        }

        .view-all {
            color: var(--primary-blue);
            text-decoration: none;
            font-weight: 500;
            font-size: 14px;
        }

        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 16px;
        }

        .product-card {
            border: 1px solid var(--gray-200);
            border-radius: 4px;
            overflow: hidden;
            transition: all 0.3s;
            cursor: pointer;
            background: white;
            position: relative;
        }

        .product-card:hover {
            box-shadow: var(--shadow-lg);
            border-color: var(--primary-blue);
        }

        .product-image {
            width: 100%;
            height: 200px;
            object-fit: cover;
            background: var(--gray-100);
        }

        .product-info {
            padding: 12px;
        }

        .product-title {
            font-size: 14px;
            font-weight: 400;
            margin-bottom: 4px;
            color: var(--gray-900);
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }

        .product-price {
            font-size: 16px;
            font-weight: 600;
            color: var(--gray-900);
            margin-bottom: 4px;
        }

        .product-original-price {
            font-size: 12px;
            color: var(--gray-700);
            text-decoration: line-through;
            margin-right: 8px;
        }

        .product-discount {
            font-size: 12px;
            color: var(--success-green);
            font-weight: 500;
        }

        .product-rating {
            display: flex;
            align-items: center;
            gap: 4px;
            font-size: 12px;
            margin-top: 4px;
        }

        .rating-badge {
            background: var(--success-green);
            color: white;
            padding: 2px 6px;
            border-radius: 3px;
            font-size: 11px;
            display: flex;
            align-items: center;
            gap: 2px;
        }

        .wishlist-btn {
            position: absolute;
            top: 8px;
            right: 8px;
            background: white;
            border: none;
            border-radius: 50%;
            width: 32px;
            height: 32px;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            box-shadow: var(--shadow);
            transition: all 0.3s;
        }

        .wishlist-btn:hover {
            color: #e91e63;
        }

        /* Deals Section */
        .deals-section {
            background: linear-gradient(135deg, #ff6b6b, #ee5a24);
            color: white;
            margin: 40px 0;
            border-radius: 8px;
            padding: 40px;
            position: relative;
            overflow: hidden;
        }

        .deals-content {
            position: relative;
            z-index: 2;
        }

        .deals-title {
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 16px;
        }

        .deals-subtitle {
            font-size: 18px;
            margin-bottom: 24px;
            opacity: 0.9;
        }

        .timer {
            display: flex;
            gap: 16px;
            margin-bottom: 24px;
        }

        .timer-box {
            background: rgba(255, 255, 255, 0.2);
            border-radius: 8px;
            padding: 12px;
            text-align: center;
            min-width: 80px;
        }

        .timer-number {
            font-size: 24px;
            font-weight: 700;
            display: block;
        }

        .timer-label {
            font-size: 12px;
            opacity: 0.8;
        }

        /* Footer */
        .footer {
            background: var(--dark-blue);
            color: white;
            margin-top: 60px;
            padding: 40px 0 20px;
        }

        .footer-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 40px;
            margin-bottom: 30px;
        }

        .footer-section h3 {
            font-size: 16px;
            font-weight: 600;
            margin-bottom: 16px;
        }

        .footer-section ul {
            list-style: none;
        }

        .footer-section ul li {
            margin-bottom: 8px;
        }

        .footer-section ul li a {
            color: rgba(255, 255, 255, 0.8);
            text-decoration: none;
            font-size: 14px;
            transition: color 0.3s;
        }

        .footer-section ul li a:hover {
            color: white;
        }

        .footer-bottom {
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            padding-top: 20px;
            text-align: center;
            font-size: 14px;
            color: rgba(255, 255, 255, 0.8);
        }

        /* Mobile Menu */
        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            color: white;
            font-size: 20px;
            cursor: pointer;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .header-content {
                flex-wrap: wrap;
            }

            .search-container {
                order: 3;
                width: 100%;
                margin-top: 12px;
            }

            .header-actions {
                gap: 16px;
            }

            .mobile-menu-btn {
                display: block;
            }

            .nav-links {
                display: none;
            }

            .hero-content {
                padding: 40px 20px;
                max-width: 100%;
            }

            .hero-title {
                font-size: 32px;
            }

            .categories-grid {
                grid-template-columns: repeat(auto-fit, minmax(120px, 1fr));
                gap: 12px;
            }

            .products-grid {
                grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
                gap: 12px;
            }

            .deals-section {
                padding: 24px;
            }

            .deals-title {
                font-size: 24px;
            }

            .timer {
                justify-content: center;
            }
        }

        @media (max-width: 480px) {
            .container {
                padding: 0 12px;
            }

            .hero-title {
                font-size: 24px;
            }

            .categories-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .products-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }
    </style>
</head>
<body>
    <!-- Header Top -->
    <div class="header-top">
        <div class="container">
            <div class="header-top-content">
                <div>
                    <span>Download App</span>
                    <span style="margin-left: 20px;">Sell Online</span>
                </div>
                <div>
                    <span>Customer Care</span>
                    <span style="margin-left: 20px;">Become a Seller</span>
                </div>
            </div>
        </div>
    </div>

    <!-- Header Main -->
    <header class="header">
        <div class="header-main">
            <div class="container">
                <div class="header-content">
                    <a href="#" class="logo">MukeshMart<span>+</span></a>
                    
                    <div class="search-container">
                        <div class="search-box">
                            <input type="text" placeholder="Search for products, brands and more">
                            <button type="submit">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                    </div>
                    
                    <div class="header-actions">
                        <a href="#" class="header-btn">
                            <i class="far fa-user"></i>
                            <span>Login</span>
                        </a>
                        <a href="#" class="header-btn">
                            <i class="far fa-heart"></i>
                            <span>Wishlist</span>
                        </a>
                        <a href="#" class="header-btn" style="position: relative;">
                            <i class="fas fa-shopping-cart"></i>
                            <span>Cart</span>
                            <div class="cart-badge">3</div>
                        </a>
                        <button class="mobile-menu-btn">
                            <i class="fas fa-bars"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Navigation -->
    <nav class="nav-bar">
        <div class="container">
            <div class="nav-content">
                <div class="categories-dropdown">
                    <button class="categories-btn">
                        <i class="fas fa-th"></i>
                        All Categories
                        <i class="fas fa-chevron-down"></i>
                    </button>
                    <div class="categories-menu">
                        <a href="#" class="category-item">
                            <i class="fas fa-mobile-alt category-icon"></i>
                            Mobiles & Tablets
                        </a>
                        <a href="#" class="category-item">
                            <i class="fas fa-laptop category-icon"></i>
                            Electronics
                        </a>
                        <a href="#" class="category-item">
                            <i class="fas fa-tshirt category-icon"></i>
                            Fashion
                        </a>
                        <a href="#" class="category-item">
                            <i class="fas fa-home category-icon"></i>
                            Home & Kitchen
                        </a>
                        <a href="#" class="category-item">
                            <i class="fas fa-gamepad category-icon"></i>
                            Sports & Games
                        </a>
                    </div>
                </div>
                
                <div class="nav-links">
                    <a href="#" class="nav-link active">Today's Deals</a>
                    <a href="#" class="nav-link">Fashion</a>
                    <a href="#" class="nav-link">Electronics</a>
                    <a href="#" class="nav-link">Home</a>
                    <a href="#" class="nav-link">Beauty</a>
                </div>
            </div>
        </div>
    </nav>

    <!-- Hero Banner -->
    <div class="container">
        <div class="hero-banner">
            <div class="hero-content">
                <h1 class="hero-title">Big Billion Days</h1>
                <p class="hero-subtitle">Unbelievable deals on your favorite products</p>
                <a href="#" class="hero-cta">
                    <i class="fas fa-bolt"></i>
                    Shop Now
                </a>
            </div>
        </div>
    </div>

    <!-- Categories Section -->
    <div class="container">
        <section class="categories-section">
            <h2 class="section-title">Shop by Category</h2>
            <div class="categories-grid">
                <a href="#" class="category-card">
                    <div class="category-card-icon">
                        <i class="fas fa-mobile-alt"></i>
                    </div>
                    <h3>Mobiles</h3>
                    <p>Latest Smartphones</p>
                </a>
                <a href="#" class="category-card">
                    <div class="category-card-icon">
                        <i class="fas fa-laptop"></i>
                    </div>
                    <h3>Electronics</h3>
                    <p>Gadgets & More</p>
                </a>
                <a href="#" class="category-card">
                    <div class="category-card-icon">
                        <i class="fas fa-tshirt"></i>
                    </div>
                    <h3>Fashion</h3>
                    <p>Trendy Wear</p>
                </a>
                <a href="#" class="category-card">
                    <div class="category-card-icon">
                        <i class="fas fa-home"></i>
                    </div>
                    <h3>Home</h3>
                    <p>Home & Kitchen</p>
                </a>
                <a href="#" class="category-card">
                    <div class="category-card-icon">
                        <i class="fas fa-dumbbell"></i>
                    </div>
                    <h3>Sports</h3>
                    <p>Fitness & Sports</p>
                </a>
                <a href="#" class="category-card">
                    <div class="category-card-icon">
                        <i class="fas fa-gem"></i>
                    </div>
                    <h3>Beauty</h3>
                    <p>Personal Care</p>
                </a>
            </div>
        </section>
    </div>

    <!-- Deals Section -->
    <div class="container">
        <div class="deals-section">
            <div class="deals-content">
                <h2 class="deals-title">⚡ Flash Sale</h2>
                <p class="deals-subtitle">Limited time offer - Up to 70% OFF</p>
                <div class="timer">
                    <div class="timer-box">
                        <span class="timer-number" id="hours">12</span>
                        <span class="timer-label">Hours</span>
                    </div>
                    <div class="timer-box">
                        <span class="timer-number" id="minutes">34</span>
                        <span class="timer-label">Minutes</span>
                    </div>
                    <div class="timer-box">
                        <span class="timer-number" id="seconds">56</span>
                        <span class="timer-label">Seconds</span>
                    </div>
                </div>
                <a href="#" class="hero-cta">
                    Grab Deals Now
                </a>
            </div>
        </div>
    </div>

    <!-- Products Section -->
    <div class="container">
        <section class="products-section">
            <div class="products-header">
                <h2 class="section-title">Trending Products</h2>
                <a href="#" class="view-all">View All</a>
            </div>
            <div class="products-grid">
                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?ixlib=rb-4.0.3&w=400&q=80" alt="iPhone" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">Apple iPhone 14 Pro Max (Deep Purple, 128 GB)</h3>
                        <div class="product-price">₹1,29,900</div>
                        <div>
                            <span class="product-original-price">₹1,39,900</span>
                            <span class="product-discount">7% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.5</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(1,234)</span>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?ixlib=rb-4.0.3&w=400&q=80" alt="Laptop" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">MacBook Air M2 Chip (13.6-inch, 8GB, 256GB SSD)</h3>
                        <div class="product-price">₹1,14,900</div>
                        <div>
                            <span class="product-original-price">₹1,19,900</span>
                            <span class="product-discount">4% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.6</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(890)</span>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1542272604-787c3835535d?ixlib=rb-4.0.3&w=400&q=80" alt="Shoes" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">Nike Air Max 270 React Running Shoes</h3>
                        <div class="product-price">₹12,995</div>
                        <div>
                            <span class="product-original-price">₹15,995</span>
                            <span class="product-discount">19% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.3</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(567)</span>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?ixlib=rb-4.0.3&w=400&q=80" alt="Headphones" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">Sony WH-1000XM5 Wireless Noise Cancelling Headphones</h3>
                        <div class="product-price">₹29,990</div>
                        <div>
                            <span class="product-original-price">₹34,990</span>
                            <span class="product-discount">14% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.7</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(2,341)</span>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&w=400&q=80" alt="Watch" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">Apple Watch Series 8 GPS 41mm Midnight Aluminium Case</h3>
                        <div class="product-price">₹41,900</div>
                        <div>
                            <span class="product-original-price">₹45,900</span>
                            <span class="product-discount">9% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.4</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(1,876)</span>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixlib=rb-4.0.3&w=400&q=80" alt="Sunglasses" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">Ray-Ban Aviator Classic Sunglasses RB3025</h3>
                        <div class="product-price">₹8,990</div>
                        <div>
                            <span class="product-original-price">₹11,990</span>
                            <span class="product-discount">25% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.6</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(3,456)</span>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?ixlib=rb-4.0.3&w=400&q=80" alt="Backpack" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">American Tourister Casual Backpack 32L</h3>
                        <div class="product-price">₹2,499</div>
                        <div>
                            <span class="product-original-price">₹3,299</span>
                            <span class="product-discount">24% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.2</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(789)</span>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-4.0.3&w=400&q=80" alt="Headphones" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">JBL Tune 750BTNC Wireless Over-Ear Headphones</h3>
                        <div class="product-price">₹6,999</div>
                        <div>
                            <span class="product-original-price">₹8,999</span>
                            <span class="product-discount">22% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.1</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(1,234)</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- Fashion Section -->
    <div class="container">
        <section class="products-section">
            <div class="products-header">
                <h2 class="section-title">Fashion & Lifestyle</h2>
                <a href="#" class="view-all">View All</a>
            </div>
            <div class="products-grid">
                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?ixlib=rb-4.0.3&w=400&q=80" alt="T-shirt" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">Roadster Men Navy Blue Solid Round Neck T-shirt</h3>
                        <div class="product-price">₹399</div>
                        <div>
                            <span class="product-original-price">₹999</span>
                            <span class="product-discount">60% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.0</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(2,567)</span>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1594633312681-425c7b97ccd1?ixlib=rb-4.0.3&w=400&q=80" alt="Jeans" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">Levi's 511 Slim Fit Men Blue Jeans</h3>
                        <div class="product-price">₹2,999</div>
                        <div>
                            <span class="product-original-price">₹4,999</span>
                            <span class="product-discount">40% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.3</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(1,890)</span>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1596755094514-f87e34085b2c?ixlib=rb-4.0.3&w=400&q=80" alt="Dress" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">SASSAFRAS Women Black Solid A-Line Dress</h3>
                        <div class="product-price">₹1,199</div>
                        <div>
                            <span class="product-original-price">₹2,399</span>
                            <span class="product-discount">50% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.2</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(876)</span>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1551698618-1dfe5d97d256?ixlib=rb-4.0.3&w=400&q=80" alt="Sneakers" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">Adidas Ultraboost 22 Running Shoes</h3>
                        <div class="product-price">₹16,999</div>
                        <div>
                            <span class="product-original-price">₹18,999</span>
                            <span class="product-discount">11% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.5</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(1,456)</span>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1553062407-98eeb64c6a62?ixlib=rb-4.0.3&w=400&q=80" alt="Handbag" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">Lavie Women Black Solid Handbag</h3>
                        <div class="product-price">₹1,999</div>
                        <div>
                            <span class="product-original-price">₹3,999</span>
                            <span class="product-discount">50% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.1</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(654)</span>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1560472354-b33ff0c44a43?ixlib=rb-4.0.3&w=400&q=80" alt="Jacket" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">H&M Men Black Bomber Jacket</h3>
                        <div class="product-price">₹2,499</div>
                        <div>
                            <span class="product-original-price">₹3,999</span>
                            <span class="product-discount">38% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.0</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(432)</span>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1581338834647-b0fb40704e21?ixlib=rb-4.0.3&w=400&q=80" alt="Perfume" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">Davidoff Cool Water Man EDT - 125 ml</h3>
                        <div class="product-price">₹3,999</div>
                        <div>
                            <span class="product-original-price">₹6,500</span>
                            <span class="product-discount">38% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.4</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(987)</span>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1584464491033-06628f3a6b7b?ixlib=rb-4.0.3&w=400&q=80" alt="Belt" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">Tommy Hilfiger Men Black Leather Belt</h3>
                        <div class="product-price">₹2,199</div>
                        <div>
                            <span class="product-original-price">₹2,999</span>
                            <span class="product-discount">27% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.3</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(321)</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- Home & Kitchen Section -->
    <div class="container">
        <section class="products-section">
            <div class="products-header">
                <h2 class="section-title">Home & Kitchen</h2>
                <a href="#" class="view-all">View All</a>
            </div>
            <div class="products-grid">
                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1556909114-f6e7ad7d3136?ixlib=rb-4.0.3&w=400&q=80" alt="Air Fryer" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">Philips HD9200/90 Air Fryer with Rapid Air Technology</h3>
                        <div class="product-price">₹7,999</div>
                        <div>
                            <span class="product-original-price">₹12,995</span>
                            <span class="product-discount">38% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.2</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(2,456)</span>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1586023492125-27b2c045efd7?ixlib=rb-4.0.3&w=400&q=80" alt="Vacuum Cleaner" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">Dyson V8 Absolute Cordless Vacuum Cleaner</h3>
                        <div class="product-price">₹32,900</div>
                        <div>
                            <span class="product-original-price">₹39,900</span>
                            <span class="product-discount">18% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.6</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(1,234)</span>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1571781926291-c477ebfd024b?ixlib=rb-4.0.3&w=400&q=80" alt="Coffee Maker" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">Nespresso Essenza Mini Coffee Machine</h3>
                        <div class="product-price">₹8,990</div>
                        <div>
                            <span class="product-original-price">₹10,990</span>
                            <span class="product-discount">18% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.4</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(876)</span>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1586201375761-83865001e31c?ixlib=rb-4.0.3&w=400&q=80" alt="Microwave" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">LG 28L Convection Microwave Oven</h3>
                        <div class="product-price">₹14,990</div>
                        <div>
                            <span class="product-original-price">₹18,990</span>
                            <span class="product-discount">21% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.1</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(567)</span>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1558618047-3c8c76ca7d13?ixlib=rb-4.0.3&w=400&q=80" alt="Bedsheets" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">Bombay Dyeing Cotton Double Bedsheet Set</h3>
                        <div class="product-price">₹1,199</div>
                        <div>
                            <span class="product-original-price">₹2,999</span>
                            <span class="product-discount">60% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.0</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(3,456)</span>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1586023492125-27b2c045efd7?ixlib=rb-4.0.3&w=400&q=80" alt="Curtains" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">Story@Home Blackout Door Curtains</h3>
                        <div class="product-price">₹899</div>
                        <div>
                            <span class="product-original-price">₹1,999</span>
                            <span class="product-discount">55% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>3.9</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(789)</span>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1566913485-b95607d7b2c6?ixlib=rb-4.0.3&w=400&q=80" alt="Lamp" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">Philips LED Table Lamp with Dimmer</h3>
                        <div class="product-price">₹2,499</div>
                        <div>
                            <span class="product-original-price">₹3,999</span>
                            <span class="product-discount">38% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.3</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(432)</span>
                        </div>
                    </div>
                </div>

                <div class="product-card">
                    <button class="wishlist-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <img src="https://images.unsplash.com/photo-1586201375761-83865001e31c?ixlib=rb-4.0.3&w=400&q=80" alt="Kitchen Set" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">Hawkins Stainless Steel Cookware Set</h3>
                        <div class="product-price">₹3,999</div>
                        <div>
                            <span class="product-original-price">₹7,999</span>
                            <span class="product-discount">50% off</span>
                        </div>
                        <div class="product-rating">
                            <div class="rating-badge">
                                <span>4.2</span>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(1,234)</span>
                        </div>
                    </div>
                </div>
