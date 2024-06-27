package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
import com.entities.NoteUser;
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SaveNoteServlet() {
        super();
    }

	
	
    java.sql.Statement statement;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		try {
//			//title content fetch
//			
//			String title =request.getParameter("title");
//			String content=request.getParameter("content");
//			
//			Note note = new Note(title,content,new Date());
//			
////			System.out.println(note.getId()+" : "+note.getTitle());
//			// hibernate:save()
//			
//			Session s=FactoryProvider.getFactory().openSession();
//			Transaction tx=s.beginTransaction();
//			s.save(note);
//			tx.commit();
//			s.close();
//			response.setContentType("text/html");
//			PrintWriter out=response.getWriter();
//			System.out.println("add note successfully");
//			response.sendRedirect("add_notes.jsp");
//		
//			
//			
//		}catch(Exception e){
//			e.printStackTrace();
//		
//		}
//	
		 HttpSession session = request.getSession(true);
			
 		String user=(String)session.getAttribute("Username");
 		System.out.println("user name in saveNotePage "+user);
 		
		 try {
			 
			
			    jdbcConnectroruser jd = new jdbcConnectroruser();
	            String s = "create table "+user+"(id int PRIMARY KEY AUTO_INCREMENT ,title varchar(1000),content text(50000),addeddate DATETIME )";
	            statement = jd.con.createStatement();
	            statement.executeUpdate(s);
	            System.out.println("create user table successfully");
	              	
			} catch (Exception e) {
				System.out.println(e);
			}
		 try{
			   String title =request.getParameter("title");
			   String content=request.getParameter("content");
				
				
				PreparedStatement pst;
	            Connection con;
	            Date date = new Date();
	            jdbcConnectroruser jd = new jdbcConnectroruser();
	              
	            String query="insert into "+user+"(title,content ,addeddate ) values(?,?,?)";
	            pst=jd.con.prepareStatement(query);
	            
	            pst.setString(1, title);
	            pst.setString(2, content);
	            pst.setTimestamp(3, new java.sql.Timestamp(date.getTime()));
	            int i =pst.executeUpdate();
	            if(i>0)
	            {
	                System.out.println(" save data successfuly");
	                PrintWriter out=response.getWriter();
	    			out.println("<script>\r\n"
	    					+ "  \r\n"
	    					+ "  alert(\"your note add succesfully ! \");\r\n"
	    					+ " window.location.href = \"add_notes.jsp\";\r\n"
	    					+ "</script>\r\n"
	    					+ "");
	               
	            }else
	            {
	                System.out.println(" Save data fail");
	            }
	            jd.con.close();
		 	}
         catch(Exception e)
	        {
	            System.out.println(e);
	            
	        }
	
		
	}

}
