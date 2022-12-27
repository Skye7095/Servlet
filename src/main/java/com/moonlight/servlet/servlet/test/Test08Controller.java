package com.moonlight.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test08")
public class Test08Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String word = request.getParameter("search");
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		out.println("<html> <head> <title>키워드 검색</title> </head> <body>");
		for(int i = 0; i < list.size(); i++) {
			if(list.get(i).contains(word)) {
				out.println(list.get(i).replace(word, "<b>" + word +"</b>") + "<hr>");
			}
		}
		
		// list안에 순서대로 꺼내오는 다른 방법
//		for(String text:list) {
//			if(text.contains(word)) {
//				text = text.replace(word, "<b>" + word +"</b>");
//				out.println(text + "<hr>");
//			}
//		}
		
		
		out.println("</body> </html>");
		
	}
}


