<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이유</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="/jspTemplete/test02/style.css" type="text/css">
</head>
<body>

	<%@ include file="data.jsp" %>

	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<section class="contents">
			<div class=" artist-info border border-success p-3 d-flex">
				<div class="photo col-2">
					<img width="150" src="<%= artistInfo.get("photo") %>">
				</div>	
				<div class="info col-10">
					<h3 class="font-weight-bold"><%= artistInfo.get("name") %></h3>
					<div><%= artistInfo.get("agency") %></div>
					<div><%= artistInfo.get("debute") %></div>
				</div>	
			</div>
			
			<div class="music-list mt-3">
				<h3 class="font-weight-bold">곡 목록</h3>
				<table class="table text-center">
					<thead class="font-weight-bold">
						<tr>
							<th>no</th>
							<th>제목</th>
							<th>앨범</th>
						</tr>
					</thead>

					<tbody>
					<% for(Map<String, Object> details:musicList){  
						if(search == null || !search.equals(details.get("title"))){%>
								<tr>
									<td><%= details.get("id") %></td>
									<td><a href="/jspTemplete/test02/test02_details.jsp?id=<%=details.get("id")%>"><%= details.get("title") %></a></td>
									<td><%= details.get("album") %></td>
								</tr>
							</tbody>
					<% }else{%>
							<jsp:forward page="test02_details.jsp?search=<%= search %>" />
					<%}
					}%>
					</tbody>
				</table>
			</div>

		</section>
		<jsp:include page="footer.jsp" />

	</div>
</body>
</html>