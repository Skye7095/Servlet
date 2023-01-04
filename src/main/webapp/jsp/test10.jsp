<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>달력 만들기</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		 Calendar today = Calendar.getInstance();
		int date = today.get(Calendar.DATE);
		int year = today.get(Calendar.YEAR);
		int month = today.get(Calendar.MONTH) + 1;
		
		// 오늘은 이번달의 몇째 주
		int wom = today.get(Calendar.WEEK_OF_MONTH); //1
		// 오늘의 요일
		int dow = today.get(Calendar.DAY_OF_WEEK); //3
		// 해당 월의 마지막 날
		int lastDate = today.getActualMaximum(Calendar.DATE);
		
	%>
	
	<div class="container">
		<h1 class="text-center"><%= year %>-<%= month %></h1>
		<table class="table text-center">
			<thead>
				<tr>
					<th class="text-danger">일</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th>토</th>
				</tr>
			</thead>
				<% for(int i = 1; i <= lastDate / 7; i++){ 
					
				%>
				<tr>
				<%	int days = i * (date - (wom -1)*7 -dow); %>
					<td><%= days + 1 %></td>
					<td><%= days + 2 %></td>
					<td><%= days + 3 %></td>
					<td><%= days + 4 %></td>
					<td><%= days + 5 %></td>
					<td><%= days + 6 %></td>
					<td><%= days + 7 %></td>
				</tr>
				<%	
				   } %>
			<tbody>
				
			</tbody>
		</table>
	</div>
</body>
</html>