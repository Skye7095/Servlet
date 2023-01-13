<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.moonlight.servlet.common.MysqlService" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물건 올리기</title>
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
		
		String query = "SELECT * FROM `seller`;";

		ResultSet resultSet = mysqlService.select(query);

		// String[] sellerIds = request.getParameterValues("select");
		
	
	%>

	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp"/>
		<section class="main-content">
			<div class="container p-5">
				<h1>물건 올리기</h1>
				<form method="post" action="/db/carrotmarket/carrotmarket/insert">
					<div class="d-flex justify-content-around">
						<select class="form-select mt-3" id="sellerId" name="sellerId">
						    <option>-아이디 선택-</option>
						    <%while(resultSet.next()) {%>
						    <option value="<%= resultSet.getInt("id")%>"><%= resultSet.getString("nickname") %></option>
						    <%} %>
						</select>
						<input type="text" class="form-control mt-3 mx-3" placeholder="제목" name="title">
						<div class="input-group mt-3">
						  <input type="text" class="form-control" placeholder="가격" name="price">
						  <span class="input-group-text">원</span>
						</div>
					</div>
					<textarea width=100% class="form-control mt-3" name="description"></textarea>
					<div class="input-group my-3">
					  <span class="input-group-text" name="picture">이미지 url</span>
					  <input type="text" class="form-control">
					</div>
					<button type="submit" class="btn btn-light col-12">저장</button>
				</form>
			</div>
		</section>
		<jsp:include page="footer.jsp" />
	</div>
	
	<script>
		$(document).ready(function(){
			$("#sellerId").on("change", function(){
				var sellerId = $("#sellerId option:selected").val();
				if(sellerId == null){
					alert("판매자 선택해주세요");
					return;
				}
			});
			
			$("#title").on("input", function(){
				var title = $("#title").val();
				if(title == null){
					alert("제목 입력해주세요");
					return;
				}
			});
			
			$("#price").on("input", function(){
				var price = $("#price").val();
				if(price == null){
					alert("가격 입력해주세요");
					return;
				}
			});
		});
	</script>
</body>
</html>