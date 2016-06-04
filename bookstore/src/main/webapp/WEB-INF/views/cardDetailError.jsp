<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/common.jsp"%>


       
                   <form:form action="${pageContext.request.contextPath}/cardDetail/${cartId}" method="post"
                   commandName="carddetail">
                   <div class="span9 margin-top">
                   <div class="span9 center margin-bottom"> 
					<h3>Payment Details </h3>
					</div>
					
					<div class="span4">
					  <div class="control-group">
					  <label class="control-label">Card Type</label>
						<div class="controls docs-input-sizes">
						<form:errors path="cardType" cssStyle="color: #ff0000"/>
						<form:select path="cardType">
			    		<form:option value="" label="----Please Select------" />
			    		<form:options items="${cardTypeList}" />
						</form:select>
						</div>
						</div>
					  <div class="control-group">
					  <label class="control-label">Card Number</label>
						<div class="controls docs-input-sizes">
						<form:errors path="cardNumber" cssStyle="color: #ff0000"/>
						<form:input path="cardNumber" id="name" class="form-Control"/>
						</div>
						</div>
						<div class="control-group">
					  <label class="control-label">Expiry Date</label>
						<div class="controls docs-input-sizes">
						<form:errors path="expiryMonth" cssStyle="color: #ff0000"/>
						 <form:select path="expiryMonth">
				            <form:option value="" label="MM" />
				    		<form:options items="${expiryMonthList}" />
							</form:select>
							</div>
							<div class="control-group">
							<div class="controls docs-input-sizes">
							<form:errors path="expiryYear" cssStyle="color: #ff0000"/>
							<form:select path="expiryYear">
				    		<form:option value="" label="YYYY" />
				    		<form:options items="${expiryYearList}" />
							</form:select>
						</div>
						</div>
						</div>
						</div>
						<div class="span4">
						<div class="control-group">
					  <label class="control-label">CVV2/CVC2 Number</label>
						<div class="controls docs-input-sizes">
						<form:errors path="cvNumber" cssStyle="color: #ff0000"/>
						<form:password path="cvNumber" id="cvnumber" class="form-Control"/>
						</div>
						</div>
						<div class="control-group">
					  <label class="control-label">Name ON Card</label>
						<div class="controls docs-input-sizes">
						<form:errors path="nameOnCard" cssStyle="color: #ff0000"/>
						<form:input path="nameOnCard" id="nameoncard" class="form-Control"/>
						</div>
						</div>
						<div class="control-group">
					  <label class="control-label">ATM Pin</label>
						<div class="controls docs-input-sizes">
						<form:errors path="atmPin" cssStyle="color: #ff0000"/>
						<form:password path="atmPin" id="pin" class="form-Control"/>
						</div>
						</div>
						<div class="control-group">
					  <label >Total Amount : Rs. ${grandTotal}</label>
						</div>
						<div class="span2 no_margin_left">
					  <input type="submit" value="Pay Now" class="btn btn-primary pull-left">
						 </div>
						 <div class="span1 no_margin_left">
					 	<a href="<c:url value="/" />" class="btn btn-danger pull-left">Cancel</a>
					    </div>
				</div>
        </div>
        
        </form:form>


        <%@include file="/WEB-INF/views/footer.jsp" %>
