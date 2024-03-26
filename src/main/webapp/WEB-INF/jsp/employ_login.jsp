<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="css/employ_login.css">
    <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+YjJUJdTHt0oqNS UutHgJ8HJl0s3FNWULsfQ+KXQAP+du6dTqlQ5mulWuZlX5vca0fo+aHXDrr2gYgTf will be here" crossorigin="anonymous" referrerpolicy="no-referrer" />
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

        <form action="/employ_login" method="post">
            <h1>Login</h1>

            <span>or use your account</span>
            <input type="email" name="email" placeholder="Email" />
            <input type="password" name="password" placeholder="Password" />
            <input type="hidden" name="_token" value="${token}" />
            <a href="#" class="forget">Forgot your password?</a>
            <button type="submit">Log In</button>

        </form>
    </div>
    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-right">
                <h1>MyBank | Employ Login </h1><p>Best Banking Services</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>