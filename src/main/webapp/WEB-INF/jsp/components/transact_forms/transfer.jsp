<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


            <form action="/transact/transfer" method="POST">
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

                <div class="form form--transfer-deposit">
                  <select name="transfer_to" class="form__input form__input--select">
                      <option value="">-- Select Account --</option>
                          <c:if test="${userAccounts != null}">
                              <c:forEach items="${userAccounts}" var="selectAccount">
                              <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                              </c:forEach>
                          </c:if>
                  </select>
                </div>

            <div class="form form--transfer-deposit">

			  <label class="form__label">Transfer Amount</label>
			  <input type="text" name="transfer_amount" class="form__input form__input--account-number" placeholder="" />
            <!--
			  <label class="form__label">Recipient's Email ID</label>
			  <input type="email" class="form__input form__input--email-id" placeholder="" />
            -->
			  <button class="form__btn form__btn--transfer">&rarr;</button>
			</div>

			</form>
