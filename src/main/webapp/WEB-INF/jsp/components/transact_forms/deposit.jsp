<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

          <form action="/transact/deposit" method="POST">
            <div class="form form--transfer-deposit">
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
