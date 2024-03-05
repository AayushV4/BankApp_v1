<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>MyBank | Login</title>
</head>
<body>
    <div class="container" id="container">
        <div class="form-container log-in-container">
            <form action="#">
                <h1>Login</h1>
                <div class="social-container">
                    <a href="#" class="social"><i class="fa fa-facebook fa-2x"></i></a>
                    <a href="#" class="social"><i class="fa fa-twitter fa-2x"></i></a>
                </div>
                <span>or use your account</span>
                <input type="email" placeholder="Email" />
                <input type="password" placeholder="Password" />
                <a href="#" class="forget">Forgot your password?</a>
                <button type="submit">Log In</button>
                <!-- Create My Account Button -->
                <button type="button" onclick="window.location.href='/register';">Create Account</button>
            </form>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-right">
                    <h1>MyBank | Login to Wallet</h1>
                    <p>Best Banking Services</p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
