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

          <!-- BALANCE -->
          <div class="balance">
            <div>
              <p class="balance__label">Current balance</p>
    		  <p class="balance__date"> As of <span class="date">loading date...</span>
              </p>
            </div>
            <p class="balance__value">
                <c:if test="${requestScope.totalBalance != null}">
                    <c:out value="${totalBalance}"/>
                </c:if>
            </p>
          </div>

      <!-- USERINFO -->
      <div class="userinfo">

        <c:if test="${requestScope.userAccounts != null }">

        <c:forEach items="${requestScope.userAccounts}" var="account">

        <h2 class="accordion-header" id="flush-headingOne">
            ${account.account_name}
        </h2>

        <div class="userinfo__row">
          <div class="userinfo__type userinfo__type--user">User:</div>
          <div class="userinfo__value userinfo__value--user">User</div>
        </div>
        <div class="userinfo__row">
          <div class="userinfo__type userinfo__type--account-name">Account Name:</div>
          <div class="userinfo__value userinfo__value--account-name">${account.account_name}</div>
        </div>
        <div class="userinfo__row">
          <div class="userinfo__type userinfo__type--account-number">Account Number:</div>
          <div class="userinfo__value userinfo__value--account-number">${account.account_number}</div>
        </div>
        <div class="userinfo__row">
          <div class="userinfo__type userinfo__type--account-type">Account Type:</div>
          <div class="userinfo__value userinfo__value--account-type">${account.account_type}</div>
        </div>
        <div class="userinfo__row">
          <div class="userinfo__type userinfo__type--account-balance">Account Balance:</div>
          <div class="userinfo__value userinfo__value--account-balance">${account.balance}</div>
        </div>
        <div class="userinfo__row">
          <div class="userinfo__type userinfo__type--created-at">Created at:</div>
          <div class="userinfo__value userinfo__value--created-at">${account.created_at}</div>
        </div>
        </c:forEach>

        </c:if>
      </div>


      <!-- OPERATION: TRANSFERS-->

      <div class="operation operation--transfer">
        <h2>Transfer money</h2>
        <form class="form form--transfer">
          <select name="transfer_type" class="form__input form__input--select">
            <option value="deposit">Deposit</option>
            <option value="payment">Payment</option>
            <option value="transfer">Transfer</option>
          </select>
        </form>

          <div class="form form--transfer-inner">

            <form action="/transact/deposit" method="POST">
                <div class="form form--transfer-deposit hidden">
                  <label class="form__label">Amount</label>
                  <input type="text" name="deposit_amount" class="form__input form__input--amount" />
                  <label class="form__label">Deposit into</label>
                  <select name="account_id" class="form__input form__input--select">
                      <option value="">-- Select Account --</option>
                          <c:if test="${userAccounts != null}">
                              <c:forEach items="${userAccounts}" var="selectAccount">
                              <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                              </c:forEach>
                          </c:if>
                  </select>
                  <button class="form__btn form__btn--transfer">&rarr;</button>
                </div>
            </form>

            <form action="/transact/payment" method="POST">
                <div class="form form--transfer-payment hidden">
                  <label class="form__label">Beneficiary Number</label>
                  <input type="text" name="beneficiary" class="form__input form__input--beneficiary-number" placeholder="" />

                  <label class="form__label">Account Number</label>
                  <input type="text" name="account_number" class="form__input form__input--account-number" placeholder="" />

                  <label class="form__label">Select Account</label>
                  <select name="account_id" class="form__input form__input--select">
                      <option value="">-- Select Account --</option>
                          <c:if test="${userAccounts != null}">
                              <c:forEach items="${userAccounts}" var="selectAccount">
                              <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                              </c:forEach>
                          </c:if>
                  </select>


                  <label class="form__label">Reference Number</label>
                  <input type="text" name="reference" class="form__input form__input--reference-number" placeholder="" />

                  <label class="form__label">Amount</label>
                  <input type="text" name="payment_amount" class="form__input form__input--amount" placeholder="" />

                  <button class="form__btn form__btn--transfer">&rarr;</button>
                </div>
            </form>


            <form action="/transact/transfer" method="POST">
                <div class="form form--transfer-trans">
                  <select name="transfer_from" class="form__input form__input--select">
                      <option value="">-- Select Account --</option>
                          <c:if test="${userAccounts != null}">
                              <c:forEach items="${userAccounts}" var="selectAccount">
                              <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                              </c:forEach>
                          </c:if>
                  </select>

                  <select name="transfer_to" class="form__input form__input--select">
                      <option value="">-- Select Account --</option>
                          <c:if test="${userAccounts != null}">
                              <c:forEach items="${userAccounts}" var="selectAccount">
                              <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                              </c:forEach>
                          </c:if>
                  </select>

                  <label class="form__label">Transfer Amount</label>
                  <input type="text" name="transfer_amount" class="form__input form__input--account-number" placeholder="" />

                  <button class="form__btn form__btn--transfer">&rarr;</button>
                </div>
			</form>


        </div>
      </div>

                    <!-- Display Message -->
                    <c:if test="${success != null}">
                        <div class="alert alert-info text-center border border-info">
                            <b>${Success}</b>
                        </div>
                    </c:if>
                    <!-- End of Display Message -->

                    <!-- Display Message -->
                    <c:if test="${requestScope.error != null}">
                        <div class="alert alert-danger text-center border border-danger">
                            <b>${requestScope.error}</b>
                        </div>
                    </c:if>
                    <!-- End of Display Message -->

      <!-- OPERATION: ADD ACCOUNT -->
      <div class="operation operation--add-account">
        <h2>Add Account</h2>
        <form action="/account/create_account" method="POST" class="form form--add-account">
          <input type="text" name="account_name" class="form__input form__input--name" placeholder="">
            <select name="account_type" class="form__input form__input--select">
              <option value="chequing">Chequing</option>
              <option value="saving">Saving</option>
              <option value="business">Business</option>
            </select>
          <button class="form__btn form__btn--add-account">&rarr;</button>
          <label class="form__label">Account name</label>
          <label class="form__label">Type</label>
        </form>
      </div>


      <!-- OPERATION: CLOSE -->
      <!-- <div class="operation operation--close">-->
        <div class="operation operation--close hidden">
        <h2>Close account</h2>
        <form class="form form--close">
          <input type="text" class="form__input form__input--user" />
          <input
            type="password"
            maxlength="6"
            class="form__input form__input--pin"
          />
          <button class="form__btn form__btn--close">&rarr;</button>
          <label class="form__label">Confirm user</label>
          <label class="form__label">Confirm PIN</label>
        </form>
      </div>


    </main>

     <!-- Add the script tag at the end of the body element to ensure the DOM is fully loaded before executing the script -->
     <script>
      // Function to format the date as MM/DD/YYYY
      function formatDate(date) {
        let day = ('0' + date.getDate()).slice(-2);
        let month = ('0' + (date.getMonth() + 1)).slice(-2);
        let year = date.getFullYear();
        return month + '/' + day + '/' + year;
      }

      document.addEventListener('DOMContentLoaded', (event) => {
        var currentDate = new Date();
        document.querySelector('.balance__date .date').textContent = formatDate(currentDate);

        // Transfer form type handling
        const transferFormTypes = document.querySelectorAll('.form--transfer .form__input--select');
        const depositForm = document.querySelector('.form--transfer-deposit');
        const paymentForm = document.querySelector('.form--transfer-payment');
        const transferForm = document.querySelector('.form--transfer-trans');
        const addAccountForm = document.querySelector('.operation--add-account');
        const closeForm = document.querySelector('.operation--close');


        transferFormTypes.forEach(formType => {
          formType.addEventListener('change', () => {
            if (formType.value === 'deposit') {
              addAccountForm.classList.remove('visible');
              closeForm.classList.remove('visible');
              depositForm.classList.add('visible');
              paymentForm.classList.remove('visible');
              transferForm.classList.remove('visible');
            } else if (formType.value === 'payment') {
              addAccountForm.classList.remove('visible');
              closeForm.classList.remove('visible');
              depositForm.classList.remove('visible');
              transferForm.classList.remove('visible');
              paymentForm.classList.add('visible');
            } else if (formType.value === 'transfer') {
              addAccountForm.classList.add('visible');
              closeForm.classList.remove('visible');
              depositForm.classList.remove('visible');
              paymentForm.classList.remove('visible');
              transferForm.classList.add('visible');
            } else {
              depositForm.classList.remove('visible');
              paymentForm.classList.remove('visible');
              transferForm.classList.remove('visible');
              addAccountForm.classList.add('visible');
              closeForm.classList.add('visible');

            }
          });
        });

        // Initialize the form visibility
        depositForm.classList.add('visible');
        paymentForm.classList.add('visible');
        transferForm.classList.add('visible');
        addAccountForm.classList.add('visible');
        closeForm.classList.add('visible');


      });
    </script>
  </body>
</html>