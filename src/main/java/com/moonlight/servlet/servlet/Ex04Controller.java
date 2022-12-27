package com.moonlight.servlet.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/ex04")
public class Ex04Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
//		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		// 이름과 생년월일을 전달 받고, 이름과 나이를 html 구성		
		String name = request.getParameter("name");	//parameter은 무조건 다 string로 받아와
		String birthday = request.getParameter("birthday");
		
//		out.println(name + " " + birthday);
		
		// 생년월일로 나이계산
		// 20011023
		String yearString = birthday.substring(0, 4);
		int year = Integer.parseInt(yearString);
		
		int age = 2022 - year + 1;
		
		out.println("<html> <head> <title>나이</title> </head> </html>");
		out.println("<body> <h2> 이름: " + name + "</h2>");
		out.println("<h3> 나이: " + age + "</h3> </body> </html>");
	
		// json > 문자열로 전달 받아서 처리됨. 배열안에서 dictionary
		// [ {key:value} ]
		// {"name":"인", "age":24}
		
//		out.println("{\"name\":\"" + name + "\", \"age\":" + age + "}");

	}
}
