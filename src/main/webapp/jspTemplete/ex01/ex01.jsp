<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기사</title>
</head>
<body>
	<h1>[속보] 오늘밤 날씨 추워</h1>
	<%-- 정적방식: 파일 안에 있는 변수들은 불러와서 사용 가능 --%>
	<div>기사 전송시간:<%@ include file="date.jsp" %> </div>
	
	<%= dateString %>
	<hr>
	<div>(끝)</div>
</body>
</html>