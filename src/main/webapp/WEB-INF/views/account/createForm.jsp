<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
		<title>Create Account</title>
	</head>	
	<body>
		<div class="container">
			<h3>
				Create Account 
			</h3>
			<div class="span-12 last">	
				<!-- The "account" object has been created within the "getCreateForm(Model model)"
					method of the "AccountController" controller. -->
				<form:form modelAttribute="accountModel" action="account" method="post">
				  	<fieldset>		
						<legend>Account Fields</legend>
						<p>
							<form:label	for="name" path="name" cssErrorClass="error">Name</form:label><br/>
							<form:input path="name" /> <form:errors path="name" />			
						</p>
						<p>	
							<form:label for="balance" path="balance" cssErrorClass="error">Balance</form:label><br/>
							<form:input path="balance" /> <form:errors path="balance" />
						</p>
						<p>
							<form:label for="equityAllocation" path="equityAllocation" cssErrorClass="error">Equity Allocation</form:label><br/>
							<form:input path="equityAllocation" /> <form:errors path="equityAllocation" />
						</p>
						<p>	
							<form:label for="renewalDate" path="renewalDate" cssErrorClass="error">Renewal Date</form:label><br/>
							<form:input path="renewalDate" /> <form:errors path="renewalDate" />
						</p>
						<p>	
							<input type="submit" />
						</p>
					</fieldset>
				</form:form>
			</div>
			<hr>	
			<ul>
				<li> <a href="?locale=en_us">us</a> |  <a href="?locale=en_gb">gb</a> | <a href="?locale=es_es">es</a> | <a href="?locale=de_de">de</a> </li>
			</ul>	
		</div>
	</body>
</html>