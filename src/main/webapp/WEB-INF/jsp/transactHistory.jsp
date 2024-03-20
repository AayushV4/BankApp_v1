<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="shortcut icon" type="image/png" href="/icon.png" />

    <link
      href="https://fonts.googleapis.com/css?family=Poppins:400,500,600&display=swap"
      rel="stylesheet"
    />

    <link rel="stylesheet" href="../css/dashboard.css" />
    <title>MyBank | Dashboard</title>

  </head>
  <body>
    <!-- TOP NAVIGATION -->

    <!-- Taskbar -->
    <header class="taskbar">
      <div class="taskbar__bank-name">My Bank</div>
      <nav class="taskbar__nav">
        <a href="/app/dashboard" class="taskbar__link">Dashboard</a>
        <a href="/app/payment_history" class="taskbar__link">Payment History</a>
        <a href="/app/transact_history" class="taskbar__link">Transaction History</a>
        <a href="/logout" class="taskbar__link taskbar__link--logout">Sign out</a>
      </nav>
      <div class="taskbar__user-name">Welcome, ${user.first_name} ${user.last_name}</div>
    </header>

    <main class="app">
            <div class="card-body">
                <c:if test="${requestScope.transact_history != null}">
                    <table class="table text-center table-striped">
                    <tr>
                        <th>Transaction ID</th>
                        <th>Transaction Type</th>
                        <th>Amount</th>
                        <th>Source</th>
                        <th>Status</th>
                        <th>Reason Code</th>
                        <th>Created at</th>
                    </tr>
                    <c:forEach items="${requestScope.transact_history}" var="transactionHistory">
                      <tr>
                          <td>${transactionHistory.transaction_id}</td>
                          <td>${transactionHistory.transaction_type}</td>
                          <td>${transactionHistory.amount}</td>
                          <td>${transactionHistory.source}</td>
                          <td>${transactionHistory.status}</td>
                          <td>${transactionHistory.reason_code}</td>
                          <td>${transactionHistory.created_at}</td>
                      </tr>
                    </c:forEach>
                    </table>
                </c:if>
            </div>


    </main>


      </body>
    </html>