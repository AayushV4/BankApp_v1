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
	        <div class="payment-history-link">

                <c:if test="${requestScope.payment_history != null}">
                    <!-- Payment History Table -->
                    <table class="payment-history-table">
                        <thead>
                            <tr>
                                <th>Record Number</th>
                                <th>Beneficiary</th>
                                <th>Beneficiary Account Number</th>
                                <th>Amount</th>
                                <th>Status</th>
                                <th>Reference</th>
                                <th>Reason Code</th>
                                <th>Created at</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Loop Through Payment History Records -->
                            <c:forEach items="${requestScope.payment_history}" var="payments">
                                <tr>
                                    <td>${payments.payment_id}</td>
                                    <td>${payments.beneficiary}</td>
                                    <td>${payments.beneficiary_acc_no}</td>
                                    <td>${payments.amount}</td>
                                    <td>${payments.status}</td>
                                    <td>${payments.reference_no}</td>
                                    <td>${payments.reason_code}</td>
                                    <td>${payments.created_at}</td>
                                </tr>
                            </c:forEach>
                            <!-- End Of Loop Through Payment History Records -->
                        </tbody>
                    </table>
                    <!-- End Of Payment History Table -->
                </c:if>
            </div>
        </main>


      </body>
    </html>