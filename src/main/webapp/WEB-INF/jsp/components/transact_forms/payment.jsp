<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


            <form action="/transact/payment" method="POST">
                <div class="form form--transfer-payment hidden">
                  <label class="form__label">Beneficiary Number</label>
                  <input type="text" name="beneficiary" class="form__input form__input--beneficiary-number" placeholder="" />

                  <label class="form__label">Account Number</label>
                  <input type="text" name="account_number" class="form__input form__input--account-number" placeholder="" />

                <div class="form form--transfer-deposit">
                  <select name="transfer_from" class="form__input form__input--select">
                      <option value="">-- Select Account --</option>
                          <c:if test="${userAccounts != null}">
                              <c:forEach items="${userAccounts}" var="selectAccount">
                              <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                              </c:forEach>
                          </c:if>
                  </select>
                </div>

                  <label class="form__label">Reference Number</label>
                  <input type="text" name="reference" class="form__input form__input--reference-number" placeholder="" />

                  <label class="form__label">Amount</label>
                  <input type="text" name="payment_amount" class="form__input form__input--amount" placeholder="" />

                  <button class="form__btn form__btn--transfer">&rarr;</button>
                </div>
            <form>