<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
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
		SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM");
		
		String title = formatter.format(today.getTime());
		
		// 이번달의 마지막 날
		int lastDate = today.getActualMaximum(Calendar.DATE);
		
		// 이번달 첫날로 set > 즉, x월1일
		today.set(Calendar.DAY_OF_MONTH, 1);
		// 위에 날짜의 요일 반환 > 즉, 이번달 1일의 요일 반환.(일:1 ~ 토:7)
		int dow = today.get(Calendar.DAY_OF_WEEK);
		
	%>
	
	<div class="container">
		<h1 class="text-center"><%= title %></h1>
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
				<tr>
				<%-- 이번달 첫날 요일 전에 비어두기 --%> 
				<% if(dow != 1){
				for(int i = 1; i <= dow; i++){
				%>
					<td></td>
				<% }
				} %>
				
				<%for(int j = 1; j <= lastDate; j++){ 
				%>
					<td><%= j %></td>
					<!-- 토요일인 날짜 출력 후 다음 줄로 이동 -->
					<%if(j % (7 - dow + 1) == 0){  %>
					<tr></tr>
				<%	} 
				} %>
				</tr>
			<tbody>
				
			</tbody>
		</table>
	</div>
</body>
</html>