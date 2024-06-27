package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdatePasswordServlet
 */
public class UpdatePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePasswordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
        
            try{
            	String username =request.getParameter("username");
            	String pass =request.getParameter("password");
                
                updatePasswordUser up = new updatePasswordUser();
                up.ps.setString(1, pass);
                up.ps.setString(2, username);
                
                int result =up.ps.executeUpdate();
                if(result>0)
                {
                  System.out.println(" Update password successfully");
                  PrintWriter out=response.getWriter();
	    			out.println("<script>\r\n"
	    					+ "  \r\n"
	    					+ "  alert(\"Your password Update succesfully \");\r\n"
	    					+ " window.location.href = \"Login.jsp\";\r\n"
	    					+ "</script>\r\n"
	    					+ "");


                }
                else
                {
                  System.out.println(" Upadate failed");
                 }
          }
          catch(Exception e)
          {
              System.out.println(e);

          }
        
	}

}
