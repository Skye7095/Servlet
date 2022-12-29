<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
</head>
<body>
	<%
		String cmString = request.getParameter("cm");
		int cm = Integer.parseInt(cmString);
		
		double in = cm / 2.54;
		double yard = cm / 91.44;
		double ft = cm / 30.48;
		double m = cm / 100;
		
		String inString = String.valueOf(in) + " in";
		String yardString = String.valueOf(yard) + " yard";
		String ftString = String.valueOf(ft) + " ft";
		String mString = String.valueOf(m) + " m";
		
		String[] changeArray = request.getParameterValues("change");
		
		String result = "";
		for(int i = 0; i < changeArray.length; i++){
			if(changeArray[i].equals("in")){
				result = inString + "<br>";
			}else if(changeArray[i].equals("yard")){
				result += yardString + "<br>";
			}else if(changeArray[i].equals("ft")){
				result += ftString + "<br>";
			}else{
				result += mString + "<br>";
			}
		}
		
	%>
	
	<h1>변환 결과</h1>
	<div><%= result %></div>
</body>
</html>