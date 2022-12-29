<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이변환 입력하기</title>
</head>
<body>
	<form method="post" action="/jsp/test05.jsp">
		<h1>길이 변환</h1>
		<input type="text" name="cm"> <span>cm</span>
		<label>인치<input type="checkbox" name="change" value="in"></label>
		<label>야드<input type="checkbox" name="change" value="yard"></label>
		<label>피트<input type="checkbox" name="change" value="ft"></label>
		<label>미터<input type="checkbox" name="change" value="m"></label>
		<button type="submit">변환</button>
	</form>
</body>
</html>