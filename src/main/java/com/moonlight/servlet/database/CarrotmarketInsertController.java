package com.moonlight.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moonlight.servlet.common.MysqlService;

@WebServlet("/db/carrotmarket/carrotmarket/insert")
public class CarrotmarketInsertController extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String sellerId = request.getParameter("sellerId");
		String title = request.getParameter("title");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		String picture = request.getParameter("picture");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "SELECT * FROM `used_goods` JOIN `seller` ON used_goods.sellerId = seller.id;\r\n"
				+ "INSERT INTO `used_goods`\r\n"
				+ "(seller.id, used_goods.title, used_goods.price, used_goods.description, used_goods.picture, used_goods.createdAt, used_goods.upgratedAt)\r\n"
				+ "VALUES\r\n"
				+ "(" + sellerId +  "," + title + "," + price + "," + description + "," + picture + ", now(), now())";
		
		int count = mysqlService.update(query);
		
		response.sendRedirect("/db/carrotmarket/carrotmarket.jsp");
	}
}
