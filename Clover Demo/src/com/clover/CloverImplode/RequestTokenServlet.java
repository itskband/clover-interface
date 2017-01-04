package com.clover.CloverImplode;

import java.io.IOException;
import java.util.Map;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/*
 * This servlet begins the three-legged OAuth flow.  It retrieves the OAuth request token and secret.
 * In the OAuth 1.0A Spec, this servlet corresponds to the step, "Obtaining an Unauthorized Request Token."
 */

public class RequestTokenServlet extends HttpServlet{


	public RequestTokenServlet()
	{
		super();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Inside Servlet >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");

	}

}
