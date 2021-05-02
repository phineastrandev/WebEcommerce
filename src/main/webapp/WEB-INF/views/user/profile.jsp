<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/user/taglib.jsp"%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	<h1 style="color:C35858;">Welcome to profile page, ${LoginInfo.display_name } </h1>
	
	<table class="table table-bordered table-condensed">
					<thead>
						<tr>
							<th>Email</th>
							<th>Password</th>
							<th>UserName</th>
							<th>Address</th>
							<th>Edit</th>
						
						</tr>
					</thead>
					<tbody>
							<form:form>
							<tr>
								<td>${ LoginInfo.user }</td>
								<td><input type="password" value="${LoginInfo.password }"/></td>
								<td> <input type="text" value="${ LoginInfo.display_name}"/></td>
								<td><input type="text" value="${ LoginInfo.address}"/></td>
								
								<td><button data-id="${ item.key }" class=" btn btn-mini
										btn-danger edit-cart"
										type="button">
										<span class="icon-edit"></span>
									</button></td>
							</tr>
							</form:form>
							

					</tbody>
				</table>
	
	
</body>

