package com.moonlight.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		
		//오늘의 날짜는 2022년 12월 22일
		Date today = new Date();
		
		SimpleDateFormat dateformatter = new SimpleDateFormat("yyyy년 MM월 dd일");
		String dateString = dateformatter.format(today);
		
		out.println("오늘의 날짜는 " + dateString);
	}
	
}
