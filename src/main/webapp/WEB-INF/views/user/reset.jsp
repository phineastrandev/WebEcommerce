<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/user/taglib.jsp"%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="span9">
		<ul class="breadcrumb">
			<li><a href="index.html">Home</a> <span class="divider">/</span></li>
			<li class="active">FORGOT YOUR PASSWORD</li>
		</ul>
		<div class="well well-small">
			<h3>FORGOT YOUR PASSWORD</h3>
			<hr class="soft" />

			Please enter the e-mail address used to register. We will e-mail you
			your new password.<br />
			<br />
			<br />


			<form:form action="resetPassword" method="POST" modelAttribute="user">
				<label class="control-label" for="inputEmail">E-mail address</label>
				<form:input path="user" type="text" class="span4" placeholder="Email" />
				<button type="submit" class="shopBtn block">Send My
					Password</button>
			</form:form>
		</div>
	</div>
</body>
