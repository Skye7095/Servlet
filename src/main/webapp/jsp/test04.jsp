<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙연산</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		String num1String = request.getParameter("num1");
		String num2String = request.getParameter("num2");
		
		int num1 = Integer.parseInt(num1String);
		int num2 = Integer.parseInt(num2String);
		
		String operator = request.getParameter("operator");
		
		double result = 0.0;
		if(operator.equals("+")){
			result = num1 + num2;
		}else if(operator.equals("-")){
			result = num1 - num2;
		}else if(operator.equals("*")){
			result = num1 * num2;
		}else{
			result = num1 / (double)num2;
		}
	%>
	<div>
		<h1>계산결과</h1><br>
		<div class="h1"><%= num1 %> <%= operator %> <%=num2 %> = <span class="text-primary"><%= result %></span></div>
	</div>
</body>
</html>