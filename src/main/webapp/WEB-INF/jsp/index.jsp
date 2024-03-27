<!--
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Banking Website</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <h1>Welcome to our Banking Website</h1>
        <div class="buttons">
            <a href="/register" class="btn">Register</a>
            <a href="/login" class="btn">Login</a>
        </div>
    </div>
</body>
</html>
-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/home.css">
    <title>MyBank | Best Banking Experience</title>
</head>
  <body>
    <header class="header">
      <nav class="nav">
        <img src="images/Full Logo.png" alt="Bankist logo" class="nav__logo" id="logo" instructor="Jonas" data-author="Jonas Schmedtmann" data-logo-color="dark">
        <ul class="nav__links">

			<li class="nav__item">
				<a class="nav__link1" href="#section--1">Features</a>
			</li>
			<li class="nav__item">
				<a class="nav__link2" href="#section--2">Operations</a>
			</li>
			<li class="nav__item">
				<a class="nav__link3" href="#section--3">Beware of Scams</a>
			</li>
			<li class="nav__item">
				<a class="nav__link4 nav__link--btn btn--open-modal" href="/register">Open account</a>
			</li>
			<li class="nav__item">
				<a class="nav__link4 nav__link--btn btn--open-modal" href="/login">Login</a>
			</li>
        </ul>
      </nav>

      <div class="header__title">
        <h1>
          When
          <!-- Green highlight effect -->
          <span class="highlight">banking</span>
          meets<br>
          <span class="highlight">minimalist</span>
        </h1>
        <h4>A simpler banking experience for a simpler life.</h4>
        <button class="btn--text btn--scroll-to">Learn more ↓</button>
        <!-- Originally only src="img/hero.png" -->
        <img src="images/hero.png" class="header__img" alt="Minimalist bank items">
      </div>
    </header>

    <section class="section" id="section--1">
      <div class="section__title">
        <h2 class="section__description">Features</h2>
        <h3 class="section__header">
          Everything you need in a modern bank and more.
        </h3>
      </div>

      <div class="features">
        <img src="images/digital-lazy.jpg"  alt="Computer" class="features__img">
        <div class="features__feature">
          <div class="features__icon">
            <svg>
              <use xlink:href="images/icons.svg#icon-monitor"></use>
            </svg>
          </div>
          <h5 class="features__header">100% digital bank</h5>
          <p>
			A 100% digital bank offers all its banking services online,
			eliminating the need for physical branches and enabling customers to manage their finances from anywhere.
          </p>
        </div>

        <div class="features__feature">
          <div class="features__icon">
            <svg>
              <use xlink:href="images/icons.svg#icon-trending-up"></use>
            </svg>
          </div>
          <h5 class="features__header">Watch your money grow</h5>
          <p>
		  Experience the satisfaction of seeing your savings accumulate, paving the way for a secure financial future.
          </p>
        </div>
        <img src="images/grow-lazy.jpg"  alt="Plant" class="features__img">

        <img src="images/card-lazy.jpg"  alt="Credit card" class="features__img">
        <div class="features__feature">
          <div class="features__icon">
            <svg>
              <use xlink:href="images/icons.svg#icon-credit-card"></use>
            </svg>
          </div>
          <h5 class="features__header">Free debit card included</h5>
          <p>
		   Enjoy the convenience of a complimentary debit card,
		   included with your account for easy access to your funds.
          </p>
        </div>
      </div>
    </section>

<!-- Section 2: Operations -->
<section class="section" id="section--2">
    <div class="section__title">
        <h2 class="section__description">Operations</h2>
        <h3 class="section__header">
            Simplify Your Banking with Our Features
        </h3>
    </div>

    <div class="features">
        <!-- Feature: Transfer Money -->
        <div class="features__feature">
            <h5 class="features__header">Transfer Money</h5>
            <p>
                Seamlessly transfer money between your checking and savings accounts, ensuring your funds are always where you need them.
            </p>
        </div>

        <!-- Feature: Interac Money Transfer -->
        <div class="features__feature">
            <h5 class="features__header">Interac Money Transfer</h5>
            <p>
                Send money instantly to anyone, anywhere. Just use their email or mobile number - it's fast, secure, and easy.
            </p>
        </div>

        <!-- Feature: Make Payments -->
        <div class="features__feature">
            <h5 class="features__header">Make Payments</h5>
            <p>
                Keep up with your bills and recurring payments effortlessly. Pay your utilities, rent, or mortgage with just a few clicks.
            </p>
        </div>
    </div>
</section>

<!-- Section 3: Beware of Scam -->
<section class="section" id="section--3">
    <div class="section__title">
        <h2 class="section__description">Beware of Scams</h2>
        <h3 class="section__header">
            Stay Safe from Fraud
        </h3>
    </div>

    <div class="features">
        <p class="section-large-text">
            In today's digital age, staying vigilant against scams is more important than ever. Fraudsters employ sophisticated techniques to trick individuals into disclosing personal and banking information. Here are some tips to help you stay secure:
        </p>
		<p>

            <li class="section-large-text">Never share your banking passwords or PINs with anyone, including via email, phone calls, or text messages.</li>
            <li class="section-large-text">Be cautious of emails or messages that demand urgent action, such as updating your account details or providing sensitive information.</li>
            <li class="section-large-text">Always access your bank account by typing the website address into your browser directly, rather than clicking on links in emails or text messages.</li>
            <li class="section-large-text">Keep an eye out for signs of phishing, such as poor spelling, grammar mistakes, or email addresses that look suspiciously similar to, but not exactly the same as, those of legitimate organizations.</li>
            <li class="section-large-text">Regularly monitor your bank statements and account activity for any unauthorized transactions. If you spot something suspicious, contact your bank immediately.</li>

		</p>

    </div>
	</section>


    <footer class="footer">
      <ul class="footer__nav">
        <li class="footer__item">
          <a class="footer__link" href="#">About</a>
        </li>
        <li class="footer__item">
          <a class="footer__link" href="#">Pricing</a>
        </li>
        <li class="footer__item">
          <a class="footer__link" href="#">Terms of Use</a>
        </li>
        <li class="footer__item">
          <a class="footer__link" href="#">Privacy Policy</a>
        </li>
        <li class="footer__item">
          <a class="footer__link" href="#">Careers</a>
        </li>
        <li class="footer__item">
          <a class="footer__link" href="#">Blog</a>
        </li>
        <li class="footer__item">
          <a class="footer__link" href="#">Contact Us</a>
        </li>
      </ul>
      <img src="images/icon.png" alt="Logo" class="footer__logo">
      <p class="footer__copyright">
        © Copyright 2024 by
        MyBank
      </p>
    </footer>

    <div class="modal hidden">
      <button class="btn--close-modal">×</button>
      <h2 class="modal__header">
        Open your bank account <br>
        in just <span class="highlight">5 minutes</span>
      </h2>
      <form class="modal__form">
        <label>First Name</label>
        <input type="text">
        <label>Last Name</label>
        <input type="text">
        <label>Email Address</label>
        <input type="email">
        <button class="btn">Next step →</button>
      </form>
    </div>
    <div class="overlay hidden"></div>
</body>
<script>
document.querySelector('.btn--scroll-to').addEventListener('click', function (e) {
  e.preventDefault();
  document.querySelector('#section--1').scrollIntoView({ behavior: 'smooth' });
});
document.querySelector('.nav__link1').addEventListener('click', function (e) {
  e.preventDefault();
  document.querySelector('#section--1').scrollIntoView({ behavior: 'smooth' });
});
document.querySelector('.nav__link2').addEventListener('click', function (e) {
  e.preventDefault();
  document.querySelector('#section--2').scrollIntoView({ behavior: 'smooth' });
});
document.querySelector('.nav__link3').addEventListener('click', function (e) {
  e.preventDefault();
  document.querySelector('#section--3').scrollIntoView({ behavior: 'smooth' });
});
</script>


</html>