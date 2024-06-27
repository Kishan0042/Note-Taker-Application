package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;


public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		try {
			
			int noteId=Integer.parseInt(request.getParameter("note_id").trim());
			System.out.print(noteId);
//			Session s =FactoryProvider.getFactory().openSession();
//			Transaction tx = s.beginTransaction();
//			Note note =(Note)s.get(Note.class, noteId);
//			s.delete(note);
//			tx.commit();
//			s.close();
			
			 PreparedStatement ps;
			 
			 HttpSession session = request.getSession(true);
				
		 	 String user=(String)session.getAttribute("Username");
		 	 
		 	 System.out.print("user name is  : "+user);
		 
			 
	        try{
	        	 jdbcConnectroruser jd = new jdbcConnectroruser();
	             String query="DELETE FROM "+user+" WHERE id = "+ noteId;
	             ps = jd.con.prepareStatement(query);
	             ps.executeUpdate();
	        }
	        catch(Exception e)
	        {
	            System.out.println(e);
	            
	        }
	        System.out.println("  DeleteServlet succesfuly ");
	        PrintWriter out=response.getWriter();
			out.println("<script>\r\n"
					+ "  \r\n"
					+ "  alert(\"Your note Delete succesfully \");\r\n"
					+ " window.location.href = \"all_notes.jsp\";\r\n"
					+ "</script>\r\n"
					+ "");
		
		}catch(Exception e) {
			
		}
	}



}
