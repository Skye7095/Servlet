package com.moonlight.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test05")
public class Test05Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
//		구구단 링크
//		a 태그를 활용해서 number 파라미터로 입력된 단수를 출력하세요.
		
		String numberString = request.getParameter("number");
		int number = Integer.parseInt(numberString);
		
		out.println("<html> <head> <title>구구단 링크</title> </head>" );
		out.println("<body> <ul>");
		for(int i = 1; i <= 9; i++) {
			out.println("<li>" + number + " X " + i + " = " + number*i + "</li>");
		}
		out.println("</ul> </body> </html>");
		

		
	}
}
