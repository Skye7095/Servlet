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
		// cm단위, 변환할 단위들
		int length = Integer.parseInt(request.getParameter("length"));
		// inch, yard, feet, meter
		String[] units = request.getParameterValues("unit");
		
		String result = "";
		for(int i = 0; i < units.length; i++){
			if(units[i].equals("inch")){
				double inch = length * 0.39;
				result += inch + "in<br>";
			}else if(units[i].equals("yard")){
				double yard = length * 0.010936133;
				result += yard + "yd<br>";
			}else if(units[i].equals("feet")){
				double feet = length * 0.032808399;
				result += feet +"ft<br>";
			}else{
				double meter = length / 100.0;
				result += meter + "m<br>";
			}
		}
	
		/* String cmString = request.getParameter("cm");
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
		} */
		
	%>
	
	<h1>변환 결과</h1>
	<h3> <%= length %></h3>
	<hr>
	<h3><%= result %></h3>
</body>
</html>