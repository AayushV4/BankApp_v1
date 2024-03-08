<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error Page</title>
    <!-- Add the bootstrap CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+Knujsl7/1L_dstPt3HV5HzF6Gvk/e3s4Wz6iJgD/+ub2oU" crossorigin="anonymous">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
        }
        .card {
            width: 30rem;
            border: none;
            border-radius: 1rem;
            box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.1);
            background-color: #fff;
            padding: 2rem;
            text-align: center;
        }
        .card h1 {
            font-size: 2.5rem;
            color: #4a4a4a;
            margin-bottom: 1rem;
        }
        .card p {
            font-size: 1.2rem;
            color: #666;
            margin-bottom: 2rem;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <h1>Error</h1>
            <p>
            <!-- Display Message -->
                <c:if test="${requestScope.error != null}">
                   <div class="alert alert-danger text-center border border-danger">
                      <b>${requestScope.error}</b>
                   </div>
               </c:if>
            <!-- End of Display Message -->
            </p>
            <button type="button" class="btn btn-primary mt-3">
                <a href="/login" style="color: #000; text-decoration: none;">Go Back</a>
            </button>
        </div>
    </div>
</body>
</html>