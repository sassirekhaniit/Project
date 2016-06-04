<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/common.jsp"%>


        <form:form action="${pageContext.request.contextPath}/cardDetail/${order.cart.cartId}" method="post"
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
						<form:option value="Visa-Debit/Credit" label="Visa-Debit/Credit" />
    					<form:option value="Mastercard" label="Mastercard" />
			    		
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
				            <form:option value="" label="MM" />					        form:option value="01" label="01" />
							<form:option value="01" label="01" />
    						<form:option value="02" label="02" />
    						<form:option value="03" label="03" />
    						<form:option value="04" label="04" />
    						<form:option value="05" label="05" />
    						<form:option value="06" label="06" />
    						<form:option value="07" label="07" />
    						<form:option value="08" label="08" />
    						<form:option value="09" label="09" />
    						<form:option value="10" label="10" />
    						<form:option value="11" label="11" />
    						<form:option value="12" label="12" />
							</form:select>
							</div>
							<div class="control-group">
							<div class="controls docs-input-sizes">
							<form:errors path="expiryYear" cssStyle="color: #ff0000"/>
							<form:select path="expiryYear">
				    		<form:option value="" label="YYYY" />
    						<form:option value="2016" label="2016" />
    						<form:option value="2017" label="2017" />
    						<form:option value="2018" label="2018" />
    						<form:option value="2019" label="2019" />
    						<form:option value="2020" label="2020" />
    						<form:option value="2021" label="2021" />
    						<form:option value="2022" label="2022" />
    						<form:option value="2023" label="2023" />
    						<form:option value="2024" label="2024" />
    						<form:option value="2025" label="2025" />
    						<form:option value="2026" label="2026" />
    						<form:option value="2027" label="2027" />
    						<form:option value="2028" label="2028" />
    						<form:option value="2029" label="2029" />
    						<form:option value="2030" label="2030" />
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
					  <label >Total Amount :Rs. ${order.cart.grandTotal}</label>
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
