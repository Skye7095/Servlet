package com.moonlight.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String price = request.getParameter("price");
		
		out.println("<html> <head> <title>주문하기</title> </head>");
		if(!address.contains("서울시")) {
			out.println("<body> <p>배달 불가 지역입니다</p> </body> </html>");
			return;
		}
		if(card.equals("신한카드")) {
			out.println("<body> <p>결제 불가 카드입니다</p> </body> </html>");
			return;
		}
		out.println("<body> <h2>" + address + "로 배달 준비중 </h2><hr>");
		out.println("<h3>결제금액: " + price + "원</h3> </body> </html>");
		
		
		// 방법2
//		out.println("<html> <head> <title>주문하기</title> </head> <body>");
//		if(!address.contains("서울시")) {
//			out.println("<h1>배달 불가 지역입니다</h1>");
//		}else if(card.equals("신한카드")) {
//			out.println("<h1>결제 불가 카드입니다</h1>");
//		}else {
//			out.println("<h2>" + address + "로 배달 준비중 </h2>");
//			out.println("<hr>결제금액: " + price + "원");
//		}
//		out.println("</body> </html>");
//		
		
	}
}


