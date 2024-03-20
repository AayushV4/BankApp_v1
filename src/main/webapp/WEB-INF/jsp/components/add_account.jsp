<!--

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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

-->