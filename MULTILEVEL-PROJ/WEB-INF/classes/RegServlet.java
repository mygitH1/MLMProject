package com.impact.mlm;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.http.HttpSession;

import com.impact.mlm.RegistrationVO;
import com.impact.mlm.RegDAO;


public class RegServlet extends HttpServlet  {
String action=null;
PrintWriter writer=null;
HttpSession session=null;
RegDAO rdao=null;
RegistrationVO regvo=null;
public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			writer = response.getWriter();
			session=request.getSession(false);
			response.setContentType("text/html");
			String url;
			if(session!=null){
				regvo=(RegistrationVO)session.getAttribute("regvo");
				if(regvo!=null){
					rdao=new RegDAO();
					if(request.getParameter("action").equals("Details")){
						regvo=rdao.getDistributorDetails(regvo);
						session.setAttribute("regvo",regvo);
						System.out.println("Item bounded successfully");
						url=response.encodeURL("register.jsp");
						response.sendRedirect(url);
					}else if(request.getParameter("action").equals("GETTOPID")){
						regvo.setDistributorId(Integer.parseInt(request.getParameter("distributorId")));
						regvo.setIntroducerId(request.getParameter("introducerId"));
						String topid=rdao.prepareList(regvo.getIntroducerId());
						if(topid==null){
						/*
							regvo.setIntroducerId(request.getParameter("distributorId"));
							regvo.setTopId(request.getParameter("distributorId"));
						*/
							response.sendRedirect("IntrNotExist.jsp");
						}else{

							regvo.setTopId(topid);
						}
						session.setAttribute("regvo",regvo);
						System.out.println("Item bounded successfully");
						url=response.encodeURL("register.jsp");
						response.sendRedirect(url);
						}else if(request.getParameter("action").equals("Save")){
							regvo.setDistributorId(Integer.parseInt(request.getParameter("distributorId")));
							regvo.setIntroducerId(request.getParameter("introducerId"));				
							regvo.setTopId(request.getParameter("topId"));				
							regvo.setDname(request.getParameter("dname"));		
							regvo.setWdsp(request.getParameter("wdsp"));
							regvo.setOccupation(request.getParameter("occupation"));				
							regvo.setAddress(request.getParameter("address"));				
							regvo.setCity(request.getParameter("city"));				
							regvo.setPincode(request.getParameter("pincode"));				
							regvo.setDist(request.getParameter("dist"));				
							regvo.setState(request.getParameter("state"));				
							regvo.setPhone(request.getParameter("phone"));				
							regvo.setMobile(request.getParameter("mobile"));				
							regvo.setEmail(request.getParameter("email"));				
							regvo.setBgroup(request.getParameter("bgroup"));				
							regvo.setNominee(request.getParameter("nominee"));				
							regvo.setRelation(request.getParameter("relation"));				
							regvo.setSex(request.getParameter("sex"));				
							regvo.setNage(Integer.parseInt(request.getParameter("nage")));				
							regvo.setDob(request.getParameter("dob"));				
							regvo.setDoj(request.getParameter("doj"));				
							regvo.setWtd(request.getParameter("wtd"));				
							regvo.setPic(request.getParameter("pic"));				
							regvo.setPaytype(request.getParameter("paytype"));				
							regvo.setDdno(Integer.parseInt(request.getParameter("ddno")));				
							regvo.setDddate(request.getParameter("dddate"));				
							regvo.setDddrawnon(request.getParameter("dddrawnon"));				
							regvo.setAmount(Float.parseFloat(request.getParameter("amount")));				
							regvo.setRegFee(Float.parseFloat(request.getParameter("regFee")));				
							regvo.setSpouse(request.getParameter("spouse"));				
							regvo.setDue(request.getParameter("due"));
							System.out.println(regvo);
							if (rdao.insertRegisterInfo(regvo)){
								session.setAttribute("user_pass",rdao.getUserPassword());
								session.setAttribute("regvo",null);
								response.sendRedirect("RegSuccess.jsp");
						}
					}
				}
			}else{
				writer.println("Session not created.....!");
			}
		}catch(Exception e){
			session.invalidate();
			writer.write("Error in registring...." +  e);
			e.printStackTrace();
		}finally{
			writer.close();
			regvo=null;
			rdao=null;
		}
	}
}