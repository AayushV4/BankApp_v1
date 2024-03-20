<!--

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
            <c:import url="components/transact_forms/deposit.jsp"/>
            <c:import url="components/transact_forms/payment.jsp"/>
            <c:import url="components/transact_forms/transfer.jsp"/>

        </div>
      </div>

-->