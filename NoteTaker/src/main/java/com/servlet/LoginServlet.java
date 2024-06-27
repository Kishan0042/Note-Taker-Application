package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;
import java.sql.*;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			 try{
				 	String user =request.getParameter("user");
				 	
				 	String pass=request.getParameter("password");
					
		            login login = new login();
		            login.pst.setString(1, user);
		            login.pst.setString(2, pass);
		            ResultSet rs=login.pst.executeQuery();
		            if(rs.next()==true) {
		             
		                System.out.println("Login succesfully");
		                user = user.replaceAll("[^a-zA-Z0-9]", "");
		                HttpSession session= request.getSession(true);
		                
		                session.setAttribute("Username", user);
		                session.setAttribute("password", pass);
		                
		    			response.sendRedirect("add_notes.jsp");  
		              
		                
		            }else{
		                System.out.println("Login failed ! please current username and password");
		                response.setContentType("text/html");
	
		    			PrintWriter out=response.getWriter();
		    			out.println("<script>\r\n"
		    					+ "  \r\n"
		    					+ "  alert(\"Username or password is incorrect. Please try again.\");\r\n"
		    					+ " window.location.href = \"Login.jsp\";\r\n"
		    					+ "</script>\r\n"
		    					+ "");
		    			
		            }
		            
		        }
		        catch(Exception e)
		        {
		            System.out.println(e);
		            
		        }
		    
		         
		    }                                        
		    
	
	}
	

