<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.moonlight.servlet.common.MysqlService" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="/jspTemplete/test02/style.css" type="text/css">
</head>
<body>

	<%
		MysqlService mysqlService = MysqlService.getInstance();
		//접속 -> 쿼리수행
		mysqlService.connect();
		
		String query = "SELECT * FROM `favorite` ORDER BY `id` DESC";
		
		ResultSet resultSet = mysqlService.select(query);
		
	
	%>
	
	
	<table class="table text-center">
		<thead>
			<tr>
				<th>사이트</th>
				<th>사이트 주소</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
		<% while(resultSet.next()){ %>
			<tr>
				<td><%= resultSet.getString("name") %></td>
				<td><a href="https://naver.com" target="_lank"><%= resultSet.getString("url") %></a></td>
				<td><a href="/db/favorite/delete?id=<%= resultSet.getString("id") %>" target="_lank">삭제</a></td>
			</tr>
		<% }%>
		</tbody>
	</table>
</body>
</html>