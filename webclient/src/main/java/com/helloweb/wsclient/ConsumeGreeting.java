package com.helloweb.wsclient;

import com.helloweb.webclient.Webservicehello;
import com.helloweb.webclient.WebservicehelloService;
import javax.servlet.*;
import javax.servlet.http.*;


import java.io.IOException;

import java.io.*;
import java.util.*;

public class ConsumeGreeting extends HttpServlet{
	private static final long serialVersionUID=1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String name=request.getParameter("name");
		
		System.out.println("name is:"+ name);
		
		request.getSession().setAttribute("name", name);
		
		response.sendRedirect("greetings2.jsp");
		
	}

}
