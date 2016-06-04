<div class="row">
			<div class="span12">
			  <div class="navbar">
					<div class="navbar-inner">
					  <div class="container" style="width: auto;">
						<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
						  <span class="icon-bar"></span>

						  <span class="icon-bar"></span>
						  <span class="icon-bar"></span>
						</a>
						<div class="nav-collapse">
						  <ul class="nav">
							 <li><a href="<c:url value="/" /> ">Home</a></li>
							 <li><a href="<c:url value="/about" /> ">About Us</a></li>

						  </ul>

						  <ul class="nav pull-right">
							   <li class="divider-vertical"></li>
							   <c:if test="${pageContext.request.userPrincipal.name != null}">
								<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
									<li><a href="<c:url value="/user/cart" />">Cart</a></li>
								</c:if>
								<c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
									 <li><a href="<c:url value="/admin/bookinventory" />">View Inventory</a></li>
									 <li><a href="<c:url value="/admin/user" />">View Customer</a></li>
								</c:if>
								<li><a>Hello, ${pageContext.request.userPrincipal.name}</a></li>
									<li><a href="<c:url value="/j_spring_security_logout" />">Sign Out</a></li>
								</c:if>
								 <c:if test="${pageContext.request.userPrincipal.name  == null}">
									<li><a href="<c:url value="/login/" />">Login</a></li>
									<li><a href="<c:url value="/register" />">Sign Up</a></li>
								</c:if>
								
							 </ul>
						</div>
					  </div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">