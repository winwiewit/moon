package com.saint.main.controller;

import java.security.*;
import java.util.*;

import javax.servlet.http.*;

import org.slf4j.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

/**
 * Handles requests for the application home page.
 */

@Controller(value="LoginController")
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	

	


	@RequestMapping("/test")
	public String test(HttpSession session, Principal principal, HttpServletRequest request) {	
		return "test";
	}
	
	@RequestMapping("/login")
	public String login(HttpSession session, Principal principal, HttpServletRequest request) {	
		return "/login";
	}
	@RequestMapping("login_fail")
	public String loginFail(HttpSession session) {
//		if(session != null)
//			session.invalidate();		
		return "login_fail";
	}
	
	@RequestMapping("logout_success")
	public String logout_success(HttpSession session) {

		return "logout_success";
	}
	

	
	@RequestMapping("/loginManagerProcess")
	public String loginManagerProcess(HttpSession session,
			@RequestParam(value="userid",required=false)String userid,
			@RequestParam(value="password",required=false)String password,
			HttpServletRequest request) {		
		return "login";
	}
	

	


	
	
}
