<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/register.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>MyBank | Register</title>
</head>
<body>
    <div class="container" id="container">
        <div class="form-container sign-up-container">

            <!-- Display Message -->
            <c:if test="${requestScope.passwordMisMatch != null}">
                <div class="alert alert-danger text-center border border-danger">
                    <b>${requestScope.passwordMisMatch}</b>
                </div>
            </c:if>
            <!-- End of Display Message -->

            <!-- Display Message -->
            <c:if test="${requestScope.success != null}">
                <div class="alert alert-success text-center border border-success">
                    <b>${requestScope.success}</b>
                </div>
            </c:if>
            <!-- End of Display Message -->



            <form:form action="/register" modelAttribute="registerUser">
                <div class="social-container">
                    <a href="#" class="social"><i class="fa fa-facebook fa-2x"></i></a>
                    <a href="#" class="social"><i class="fa fa-twitter fa-2x"></i></a>
                </div>

                <div>
                    <form:input type="text" path="first_name" placeholder="Enter First name"/>
                    <form:errors path="first_name" class="text-white bg-danger"/>
                </div>
                <div>
                    <form:input type="text" path="last_name" placeholder="Enter Last name" />
                    <form:errors path="last_name" class="text-white bg-danger"/>
                </div>
                <div>
                    <form:input type="email" path="email" placeholder="Enter Email" />
                    <form:errors path="last_name" class="text-white bg-danger"/>
                </div>
                <div>
                    <form:input type="password" path="password" placeholder="Password" />
                    <form:errors path="password" class="text-white bg-danger"/>
                </div>
                <div>
                    <input type="password" name="confirm_password" placeholder="Confirm Password" />
                    <small class="text-white bg-danger">${confirm_pass}</small>
                </div>


                <button type="submit">Sign Up</button>
                <!-- Back to Login Button -->
                <button type="button" onclick="window.location.href='/login';">Back to Login</button>
            </form:form>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-right">
                    <h1>MyBank | Join Our Community</h1>
                    <p>Get started with the best banking services today!</p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
