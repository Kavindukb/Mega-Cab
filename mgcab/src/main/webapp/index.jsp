<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Mega City Cab - Home</title>
  <style>
    /* Internal CSS with Animations */
    body {
      font-family: 'Arial', sans-serif;
      margin: 0;
      padding: 0;
      background: #f4f4f4;
      color: #333;
      overflow-x: hidden;
    }

    header {
      background: #0078d7;
      color: #fff;
      padding: 60px 20px;
      text-align: center;
      animation: fadeInDown 1s ease-in-out;
    }

    header h1 {
      margin: 0;
      font-size: 3rem;
      font-weight: bold;
      animation: slideInLeft 1s ease-in-out;
    }

    header p {
      font-size: 1.2rem;
      animation: slideInRight 1s ease-in-out;
    }

    .container {
      max-width: 1200px;
      margin: 50px auto;
      padding: 20px;
      background: #fff;
      border-radius: 10px;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
      animation: fadeInUp 1.5s ease-in-out;
    }

    .features {
      display: flex;
      justify-content: space-around;
      flex-wrap: wrap;
      gap: 20px;
      margin-top: 40px;
    }

    .feature {
      flex: 1;
      min-width: 250px;
      text-align: center;
      padding: 20px;
      background: #f9f9f9;
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .feature:hover {
      transform: translateY(-10px);
      box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
    }

    .feature img {
      width: 80px;
      height: 80px;
      margin-bottom: 20px;
      animation: fadeIn 2s ease-in-out;
    }

    .feature h3 {
      font-size: 1.5rem;
      color: #0078d7;
      margin-bottom: 10px;
    }

    .feature p {
      font-size: 1rem;
      line-height: 1.6;
    }

    .cta-button {
      display: inline-block;
      margin-top: 20px;
      padding: 12px 24px;
      background: #0078d7;
      color: #fff;
      text-decoration: none;
      border-radius: 5px;
      font-size: 1rem;
      transition: background 0.3s ease, transform 0.3s ease;
      animation: pulse 2s infinite;
    }

    .cta-button:hover {
      background: #005bb5;
      transform: scale(1.05);
    }

    footer {
      text-align: center;
      margin-top: 40px;
      padding: 20px;
      background: #0078d7;
      color: #fff;
      animation: fadeInUp 2s ease-in-out;
    }

    /* Keyframes for Animations */
    @keyframes fadeInDown {
      from {
        opacity: 0;
        transform: translateY(-20px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    @keyframes slideInLeft {
      from {
        opacity: 0;
        transform: translateX(-50px);
      }
      to {
        opacity: 1;
        transform: translateX(0);
      }
    }

    @keyframes slideInRight {
      from {
        opacity: 0;
        transform: translateX(50px);
      }
      to {
        opacity: 1;
        transform: translateX(0);
      }
    }

    @keyframes fadeInUp {
      from {
        opacity: 0;
        transform: translateY(20px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    @keyframes fadeIn {
      from {
        opacity: 0;
      }
      to {
        opacity: 1;
      }
    }

    @keyframes pulse {
      0% {
        transform: scale(1);
      }
      50% {
        transform: scale(1.05);
      }
      100% {
        transform: scale(1);
      }
    }
  </style>
</head>
<body>
  <header>
    <h1>Mega City Cab</h1>
    <p>Fastest & Cheapest Cab Service in Colombo City</p>
  </header>

  <div class="container">
    <h2>Why Choose Mega City Cab?</h2>
    <div class="features">
      <div class="feature">
        <img src="https://via.placeholder.com/80" alt="Icon 1">
        <h3>Fastest Service</h3>
        <p>Get to your destination in record time with our efficient service.</p>
      </div>
      <div class="feature">
        <img src="https://via.placeholder.com/80" alt="Icon 2">
        <h3>Affordable Rates</h3>
        <p>Enjoy competitive pricing with no hidden charges.</p>
      </div>
      <div class="feature">
        <img src="https://via.placeholder.com/80" alt="Icon 3">
        <h3>24/7 Support</h3>
        <p>We're here for you round the clock. Anytime, anywhere.</p>
      </div>
    </div>
    <a href="#" class="cta-button">Book a Cab Now</a>
  </div>

  <footer>
    <p>&copy; 2023 Mega City Cab. All rights reserved.</p>
  </footer>
</body>
</html>