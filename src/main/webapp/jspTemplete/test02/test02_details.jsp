<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>노래</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="/jspTemplete/test02/style.css" type="text/css">
</head>
<body>

	<%@ include file="data.jsp" %>
	<%
		String idString = request.getParameter("id");
		
		Integer id = null;
		if(idString != null){
			id = Integer.parseInt(idString);
		}
		
		String title = request.getParameter("title");
	%>
	
	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<section class="contents">
			<div class="music-info mt-4">
				<h3 class="font-weight-bold mt-3">곡 정보</h3>
				<%for(Map<String, Object> details:musicList){ 
					Integer musicId = (Integer)details.get("id");
					// 아이디가 null이 아니면, 아이디가 일치하는 결과
					// title가 null이 아니면, 타이틀이 일치하는 결과
					if((id != null && id.equals(musicId)) || (title != null && title.equals(details.get("title")))){
						int min = (Integer)details.get("time") / 60;
						int sec = (Integer)details.get("time") % 60;
						String length = min + ":" + sec;
					%>
					
					<div class="artist-info border border-success p-3 d-flex">
	
						<div class="photo col-3">
							<img width="150" src="<%= details.get("thumbnail")%>">
						</div>	
						<div class="info col-9">
							<div class="display-4"><%= details.get("title") %></div>
							<div class="font-weight-bold text-success"><%= details.get("singer") %></div>
							<div class="small text-secondary text-left d-flex mt-4">
								<div>앨범 - <%= details.get("album") %></div>
								<div>재생시간 - <%= length %></div>
								<div>작곡가 - <%= details.get("composer") %></div>
								<div>작사가 - <%= details.get("lyricist") %></div>
								</div>						
							</div>
						</div>	
					</div>
				<%	}
  				} %>
			</div>
  			
			<div class="lyrics mt-3">
				<h3>가사</h3>
				<hr>
				<div>가사 정보 없음</div>
				<hr>
			</div>

		</section>
		<jsp:include page="footer.jsp" />
	</div>

</body>
</html>