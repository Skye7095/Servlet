package com.moonlight.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moonlight.servlet.common.MysqlService;


@WebServlet("/db/favorite/insert")
public class FavoriteInsertController extends HttpServlet {
		
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 이름과 주소를 전달 받고 insert 한다. 주소가 길어질 수 있으니 doPost로 진행
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `favorite` \r\n"
				+ "(`name`, `url`, `createdAt`, `updatedAt`) \r\n"
				+ "VALUES \r\n"
				+ "('" + name + "', '" + url + "', now(), now());";
		
		int count = mysqlService.update(query);
		
		// 리스트 페이지로 리다이렉트
		response.sendRedirect("/db/favorite.jsp");
	}
}
