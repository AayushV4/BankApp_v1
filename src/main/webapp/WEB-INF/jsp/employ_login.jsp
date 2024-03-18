<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/employ_login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>MyBank | Employ Login</title>
</head>
<body>
<div class="container" id="container">
    <button class="employ-login-button">Employ Login</button>
    <div class="form-container log-in-container">

        <!-- Display Message -->
        <c:if test="${requestScope.success != null}">
            <div class="alert alert-success text-center border border-success">
                <b>${requestScope.success}</b>
            </div>
        </c:if>
        <!-- End of Display Message -->

        <form action="#">
            <h1>Login</h1>

            <span>or use your account</span>
            <input type="email" placeholder="Email" />
            <input type="password" placeholder="Password" />
            <a href="#" class="forget">Forgot your password?</a>
            <button type="submit">Log In</button>

        </form>
    </div>
    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-right">
                <h1>MyBank | Login to Wallet</h1><p>Best Banking Services</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>