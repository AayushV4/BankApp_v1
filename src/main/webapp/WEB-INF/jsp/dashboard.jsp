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

    <link rel="stylesheet" href="css/dashboard.css" />
    <title>MyBank | Dashboard</title>

  </head>
  <body>
    <!-- TOP NAVIGATION -->

    <!-- Taskbar -->
    <header class="taskbar">
      <div class="taskbar__bank-name">My Bank</div>
      <nav class="taskbar__nav">
        <a href="#" class="taskbar__link">Dashboard</a>
        <a href="#" class="taskbar__link">Payment History</a>
        <a href="#" class="taskbar__link">Transaction History</a>
        <a href="#" class="taskbar__link taskbar__link--logout">Sign out</a>
      </nav>
      <div class="taskbar__user-name">Welcome, User</div>
    </header>

    <main class="app">
      <!-- BALANCE -->
      <div class="balance">
        <div>
          <p class="balance__label">Current balance</p>
		  <p class="balance__date"> As of <span class="date">loading date...</span>
          </p>
        </div>
        <p class="balance__value">$0</p>
      </div>

      <!-- USERINFO -->
      <div class="userinfo">
        <div class="userinfo__row">
          <div class="userinfo__type userinfo__type--user">User:</div>
          <div class="userinfo__value userinfo__value--user">User</div>
        </div>
        <div class="userinfo__row">
          <div class="userinfo__type userinfo__type--account-name">Account Name:</div>
          <div class="userinfo__value userinfo__value--account-name">Account Name</div>
        </div>
        <div class="userinfo__row">
          <div class="userinfo__type userinfo__type--account-number">Account Number:</div>
          <div class="userinfo__value userinfo__value--account-number">Account Number</div>
        </div>
        <div class="userinfo__row">
          <div class="userinfo__type userinfo__type--account-type">Account Type:</div>
          <div class="userinfo__value userinfo__value--account-type">Account Type</div>
        </div>
        <div class="userinfo__row">
          <div class="userinfo__type userinfo__type--account-balance">Account Balance:</div>
          <div class="userinfo__value userinfo__value--account-balance">$0</div>
        </div>
        <div class="userinfo__row">
          <div class="userinfo__type userinfo__type--created-at">Created at:</div>
          <div class="userinfo__value userinfo__value--created-at">Created at</div>
        </div>
      </div>

      <!-- SUMMARY -->
      <div class="summary">
        <p class="summary__label">In</p>
        <p class="summary__value summary__value--in">$0</p>
        <p class="summary__label">Out</p>
        <p class="summary__value summary__value--out">$0</p>
        <p class="summary__label">Interest</p>
        <p class="summary__value summary__value--interest">$0</p>
        <button class="btn--sort">&downarrow; SORT</button>
      </div>

      <!-- OPERATION: TRANSFERS
      <div class="operation operation--transfer">
        <h2>Transfer money</h2>
        <form class="form form--transfer">
          <input type="text" class="form__input form__input--to" />
          <input type="number" class="form__input form__input--amount" />
          <button class="form__btn form__btn--transfer">&rarr;</button>
          <label class="form__label">Transfer to</label>
          <label class="form__label">Amount</label>
        </form>
      </div>
    -->

      <div class="operation operation--transfer">
        <h2>Transfer money</h2>
        <form class="form form--transfer">
          <select name="transfer_type" class="form__input form__input--select">
            <option value="deposit">Deposit</option>
            <option value="withdraw">Withdraw</option>
            <option value="payment">Payment</option>
            <option value="interac">Interac</option>
          </select>
        </form>
          <div class="form form--transfer-inner">
            <div class="form form--transfer-deposit">
              <label class="form__label">Amount</label>
              <input type="number" class="form__input form__input--amount" />
              <label class="form__label">Deposit into</label>
              <select name="deposit_info" class="form__input form__input--select">
                <!-- Deposit info options will be generated based on the user's accounts -->
              </select>
              <button class="form__btn form__btn--transfer">&rarr;</button>
            </div>

            <div class="form form--transfer-payment hidden">
              <label class="form__label">Beneficiary Number</label>
              <input type="number" class="form__input form__input--beneficiary-number" placeholder="" />

              <label class="form__label">Account Number</label>
              <input type="number" class="form__input form__input--account-number" placeholder="" />

              <label class="form__label">Account Type</label>
              <select name="payment_account" class="form__input form__input--payment-account">
                <option value="chequing">Chequing</option>
                <option value="saving">Saving</option>
                <option value="business">Business</option>
              </select>

              <label class="form__label">Reference Number</label>
              <input type="text" class="form__input form__input--reference-number" placeholder="" />

              <label class="form__label">Amount</label>
              <input type="number" class="form__input form__input--amount" placeholder="" />

              <button class="form__btn form__btn--transfer">&rarr;</button>
            </div>
        </div>
      </div>

      <!-- OPERATION: ADD ACCOUNT -->
      <div class="operation operation--add-account hidden">
        <h2>Add Account</h2>
        <form class="form form--add-account">
          <input type="text" class="form__input form__input--name" placeholder="">
            <select class="form__input form__input--select">
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

      <!-- LOGOUT TIMER -->
      <p class="logout-timer">
        You will be logged out in <span class="timer">05:00</span>
      </p>
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
        const addAccountForm = document.querySelector('.operation--add-account');
        const closeForm = document.querySelector('.operation--close');

        transferFormTypes.forEach(formType => {
          formType.addEventListener('change', () => {
            if (formType.value === 'deposit') {
              addAccountForm.classList.remove('visible');
              closeForm.classList.remove('visible');
              depositForm.classList.add('visible');
              paymentForm.classList.remove('visible');
            } else if (formType.value === 'payment') {
              addAccountForm.classList.remove('visible');
              closeForm.classList.remove('visible');
              depositForm.classList.remove('visible');
              paymentForm.classList.add('visible');
            } else {
              depositForm.classList.remove('visible');
              paymentForm.classList.remove('visible');
              addAccountForm.classList.add('visible');
              closeForm.classList.add('visible');
            }
          });
        });

        // Initialize the form visibility
        depositForm.classList.add('visible');
        paymentForm.classList.add('visible');
        addAccountForm.classList.add('visible');
        closeForm.classList.add('visible');
      });
    </script>
  </body>
</html>