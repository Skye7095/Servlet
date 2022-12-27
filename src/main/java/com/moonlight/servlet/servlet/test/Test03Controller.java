package com.moonlight.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/test03")
public class Test03Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		String nowString = formatter.format(now);
		
		// 뉴스 기사 출력
		out.println("<html> <head> <title>뉴스 기사 출력</title> </head>");
		out.println("<body> <h3>[단독] 고양이가 야웅해</h3>");
		out.println("<span>" + "기사 입력시간: " + nowString + "</span>");
		out.println("<hr><p>끝</p> </body> </html>");
	}
}
