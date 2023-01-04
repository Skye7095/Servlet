<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar 클래스 활용 1</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		Calendar today = Calendar.getInstance();
	
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");
		
		List<String> daysList = Arrays.asList(new String[]{ 
			    "100", "200", "300", "400", "500", "600", "700", "800", "900", "1000"
		});
		
		List<String> datesList = new ArrayList<>();
		for(int i = 0; i < daysList.size(); i++){
				
			today.add(Calendar.DATE, Integer.parseInt(daysList.get(i)) - 1);
			String days = formatter.format(today.getTime());
			datesList.add(days);
			today = Calendar.getInstance();
		}
	%>
	
	<div class="container">
		<h2>오늘부터 1일</h2>
		<% for(int i = 0; i < daysList.size(); i++) {%>
			<div class="display-3"><%= daysList.get(i) %>일: <span class="text-danger"><%= datesList.get(i) %></span></div>
		<% } %>
		
	</div>
	
	
	
	<%-- 
	<%
	Calendar today = Calendar.getInstance();
	
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");
	%>
	
	<div class="container">
		<h1>오늘부터 1일</h1>
		
		<%
			// 어제는 0일
			today.add(Calendar.DATE, -1);
		
			for(int i = 1; i <= 10; i++){
				today.add(Calendar.DATE, 100);
				String dateString = formatter.format(today.getTime());
		%>
		
		<div class="display-4">
			<%= 100 * i %>일: <span class="text-danger"><%= dateString %></span>
		</div>
		
		<%	} %>
	</div> 
	--%>
</body>
</html>