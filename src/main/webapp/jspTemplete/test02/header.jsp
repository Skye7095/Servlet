<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<header class="d-flex justify-content-start align-items-center">
			<div class="logo col-2 d-flex align-items-center">
				<h1 class="text-success">Melong</h1>
			</div>
			<div class="search col-10 d-flex align-items-center">
			<form method="get" action="/jspTemplete/test02/test02_details.jsp">
				<div class="input-group col-12">
					<input type="text" class="form-control" name="search">
					<div class="input-group-append">
						<button type="submit" class="btn btn-primary">검색</button>
					</div>	
				</div>
			</form>
			</div>	
		</header>