package com.saint.main.util;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import org.springframework.security.core.*;
import org.springframework.security.web.authentication.*;

public class LoginSuccessHandler implements AuthenticationSuccessHandler
{

	
    @Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth) throws IOException, ServletException
    {
     
  
    	
    	response.sendRedirect(request.getContextPath() + "/totalList");
    }

}

