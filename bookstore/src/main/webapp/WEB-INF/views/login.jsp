<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/common.jsp"%>

			<div class="span9 margin-top">
                   <div class="span9 center margin-bottom"> 
					<h3>Enter Your Login Credentials Here</h3>
					</div>
					
            <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">
                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
                 <div class="span9 center">
                   <c:if test="${not empty msg}">
                <div class="msg">${msg} <br><br></div>
            </c:if>
                <div class="control-group">
						<label class="control-label">User ID</label>
						<div class="controls docs-input-sizes">
						  <input type="text" id="username" name="username" class="form-control" placeholder="Enter Your User ID"/>
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">Password</label>
						<div class="controls docs-input-sizes">
						 <input type="password" id="password" name="password" class="form-control" placeholder="Enter Your Password"/>
						</div>
						</div>
				<div class="span8 center">
                <input type="submit" value="Submit" class="btn btn-primary">
				
             <a href="<spring:url value="/" />" class="btn btn-danger margin-left25">Cancel</a>
			</div>
		</div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </form>
        </div>
    

<%@include file="/WEB-INF/views/footer.jsp" %>
