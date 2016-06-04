<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@include file="/WEB-INF/views/common.jsp"%>

<div class="span9 center margin-bottom"> 
					<h3>Product Details</h3>
					</div>
        <div class="container" ng-app = "addToCartApp">
                <div class="row">
	 <div class="span3">
		<img src="<c:url value="/resources/images/${item.itemId}.png" /> " alt="image"/>
	</div>	 
	  
	<div class="span5">

		<div class="spanAddress">
			<address>
				<strong>Name:</strong> <span>${item.itemName}</span><br>
				<strong>Description:</strong> <span>${item.itemDescription}</span><br>
				<strong>Publisher:</strong> <span>${item.itemManufacturer}</span><br>
				<strong>Version:</strong> <span>${item.itemCategory}</span><br>
				<strong>Release:</strong> <span>${item.itemColor}</span><br>
			</address>
		</div>	
				
		<div class="span6">
			<h2>
				<strong>Price: Rs. ${item.itemPrice}</strong> <br><br>
			</h2>
		</div>	
		
					<c:set var="role" scope="page" value="${param.role}" />
                    <c:set var="url" scope="page" value="/books/allItems" />
                     <c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
                        <c:set var="url" scope="page" value="/admin/bookinventory" />
                    </c:if>
					
		
						<div class="span6">
							<div class="span4 no_margin_left">
									<p ng-controller="addToCartCtrl">
									<a href="<c:url value="${url}" />" class="btn btn-primary">Back</a>
									<c:if test="${pageContext.request.userPrincipal.name  != 'admin'}">
										<a href="#" class="btn btn-primary"
										   ng-click="addItemToCart('${item.itemId}')"><span
												class="glyphicon glyphicon-shopping-cart"></span>Add to cart
											</a>
										<a href="<spring:url value="/user/cart" />"
										   class="btn btn-primary"><span class="glyphicon glyphicon-hand-right"></span>View Cart</a>
									</c:if>
								</p>
							</div>	
							
			
						</div>	
		
						<div class="span6">
						
							
						</div>	
		
		 			</div>	

  				</div>


                    
                    
                </div>

        <script src="<c:url value="/resources/js/ordercontroller.js" /> "></script>
        <%@include file="/WEB-INF/views/footer.jsp" %>
