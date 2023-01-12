package com.moonlight.servlet.database;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.moonlight.servlet.common.MysqlService;

@WebServlet("/db/carrotmarket/carrotmarket/insert")
public class CarrotmarketInsertController extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		
		String title = request.getParameter("title");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
	}
}
