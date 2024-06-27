package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			
			String username =request.getParameter("user");
			String password=request.getParameter("password");
			String mobile=request.getParameter("mobile");
			
			Connection con;
			PreparedStatement ps;
			ResultSet rs;
			boolean flag = false;
			
				
		
		 try{
			 	
			 Class.forName("com.mysql.cj.jdbc.Driver");
             con =DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","123456");
       
	 
				String query="select * from registration";
				ps = con.prepareStatement(query);
				rs = ps.executeQuery();


	        while (rs.next()) {
			
             
             if(username.equals(rs.getString("username")) && password.equals(rs.getString("password"))) {
            	 System.out.println("already exist user");
            	
            	 flag = true;
            	
            	 PrintWriter out=response.getWriter();
	    			out.println("<script>\r\n"
	    					+ "  \r\n"
	    					+ "  alert(\"User already exist please login ! \");\r\n"
	    					+ " window.location.href = \"Login.jsp\";\r\n"
	    					+ "</script>\r\n"
	    					+ "");
	    			   

	    			break;
	    			
             }
           
             else if(username.equals(rs.getString("username")))
             {
            	 flag = true;
            	 PrintWriter out=response.getWriter();
	    			out.println("<script>\r\n"
	    					+ "  \r\n"
	    					+ "  alert(\"Username already exist , Please Enter different username ! \");\r\n"
	    					+ " window.location.href = \"Registration.jsp\";\r\n"
	    					+ "</script>\r\n"
	    					+ "");
	    			break;
             }
             
	        }
	        
	        
	        if(!flag) {
	            createTable ct = new createTable();
	            Registrer r=new Registrer();
	           
	            r.pst.setString(1,username );
	            r.pst.setString(2, password);
	            r.pst.setString(3, mobile);
	            
	            int i =r.pst.executeUpdate();
	            
	            if(i>0)
	            {
	                System.out.println(" Registration successfuly");
	                PrintWriter out=response.getWriter();
	    			out.println("<script>\r\n"
	    					+ "  \r\n"
	    					+ "  alert(\"Registration succesfully \");\r\n"
	    					+ " window.location.href = \"Login.jsp\";\r\n"
	    					+ "</script>\r\n"
	    					+ "");
	               
	            }else
	            {
	                System.out.println(" Registration fail");
	              

	            }
	        }
	       
	        }
            catch(Exception e)
	        {
	            System.out.println(e);
	            
	        }
		 }
		 
	
	
}
				    
				         
		