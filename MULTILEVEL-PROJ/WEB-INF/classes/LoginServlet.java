package com.impact.mlm;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;
import com.impact.mlm.RegDAO;

public class LoginServlet extends HttpServlet 
{
	HttpSession session;
	RegDAO rdao;
	PrintWriter writer;
	Vector name_id_intro;
	String url;
	public void service(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
		rdao=new RegDAO();
		response.setContentType("text/html");
		writer=response.getWriter();
		if(request.getParameter("action").equals("Login")){
			System.out.println("In Login block of RegServlet");
			if(request.getParameter("uname").equals("admin") && request.getParameter("password").equals("admin")){
				response.sendRedirect("AdminHome.jsp?link=index.jsp");
			}else{
				try{
				if(rdao.loginCheck(request.getParameter("uname"),request.getParameter("password"))){
					System.out.println("Login successful");
					session=request.getSession();
					name_id_intro=rdao.getNameIdIntroducer();
					System.out.println("Login success for : "+name_id_intro);
				//	request.getParameter("uname")
					session.setAttribute("user",name_id_intro.get(0));
					session.setAttribute("uname",name_id_intro.get(1));
					url=response.encodeURL("DistHome.jsp");
				}else{
					writer.println("Login failed.....");
					url=response.encodeURL("Homepage.jsp");				
				}
				response.sendRedirect(url);
				}catch(Exception e){
					writer.println(e);
				}
			}
		}
		if(request.getParameter("action").equals("Signout")){
			session=request.getSession(false);
			if(session!=null){
				session.invalidate();
			}
			response.sendRedirect("signout.jsp");
		}
	}
}
