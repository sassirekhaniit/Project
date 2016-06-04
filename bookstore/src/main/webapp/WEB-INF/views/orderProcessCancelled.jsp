<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/common.jsp"%>

<div class="span9" >
	 
	<h3> Checkout Cancelled</h3><br>
                <div class="span5">
             <a href="<spring:url value="/books/allItems" />" class="btn btn-primary">Continue Shopping</a>
			</div>	
</div>

<%@include file="/WEB-INF/views/footer.jsp" %>