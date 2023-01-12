<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.moonlight.servlet.common.MysqlService" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당근 마켓</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="/db/carrotmarket/style.css" type="text/css">
</head>
<body>

	<%
		MysqlService mysqlService = MysqlService.getInstance();
		//접속 -> 쿼리수행
		mysqlService.connect();
		
		String query = "SELECT * FROM `used_goods` JOIN `seller` ON used_goods.sellerId = seller.id ORDER BY seller.id DESC;";

		
		ResultSet resultSet = mysqlService.select(query);

		
	
	%>
	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<section class="main-content d-flex justify-content-center flex-wrap">
			<% while(resultSet.next()){ %>
			<div class="content border border-warning p-1 mt-3">
				<div class="thumbnail d-flex justify-content-center align-items-center">
					<img width="250px" src="<%=resultSet.getString("used_goods.picture") %>">
				</div>
				<div class="goods-info mt-1 p-3">
					<div class="title font-weight-bold"><%= resultSet.getString("used_goods.description") %></div>
					<div class="price small text-secondary"><%= resultSet.getInt("used_goods.price") %></div>
					<div class="user small"><%=resultSet.getString("nickname") %></div>
				</div>
			</div>
			<% } %>
			
		</section>
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>