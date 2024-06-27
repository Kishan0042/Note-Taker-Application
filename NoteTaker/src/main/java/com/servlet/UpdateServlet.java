package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		 PreparedStatement ps;
		 Connection con;
		 
		 HttpSession session = request.getSession(true);
			
	 	 String user=(String)session.getAttribute("Username");
		 try {
			
			String title=request.getParameter("title");
			String content = request.getParameter("content");
			int noteId =Integer.parseInt(request.getParameter("noteId").trim());
			
			
//			Session s =FactoryProvider.getFactory().openSession();
//			Transaction tx =s.beginTransaction();
//			
//	       Note note=s.get(Note.class, noteId);
////			Note  note =new Note(noteId, title, content, new Date());
//		
//			note.setTitle(title);
//			note.setContent(content);
//			note.setAddedDate(new Date());
//			s.update(note);
//			tx.commit();
//			s.close();
			
			 
			
			 Class.forName("com.mysql.cj.jdbc.Driver");
             con =DriverManager.getConnection("jdbc:mysql://localhost:3306/note","root","123456");	
             
             if(con!=null) {
            	 System.out.println("  connected");
             }
             
             String query="update "+user+" set title=? ,content=? where id = ?";
             ps = con.prepareStatement(query);
                  ps.setString(1, title);
	              ps.setString(2, content);
	              ps.setInt(3, noteId);
	           
	             ps.executeUpdate();
                 System.out.println("  UpdateServlet succesfuly");
                 PrintWriter out=response.getWriter();
	    			out.println("<script>\r\n"
	    					+ "  \r\n"
	    					+ "  alert(\"Your note Update succesfully \");\r\n"
	    					+ " window.location.href = \"all_notes.jsp\";\r\n"
	    					+ "</script>\r\n"
	    					+ "");
                 
			 
			
		}catch(Exception e){
			e.printStackTrace();
		}

	}

}
