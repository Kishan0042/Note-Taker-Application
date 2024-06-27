<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<% %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All notes : Note Taker</title>
<%@include file="all_js_css.jsp"%>
 
</head>
<body style="background-color: rgb(13, 13, 13)">
	<div >
		<%@include file="InsideIcon.jsp" %>
		<div class="container">
		<br>
		<h1 class="text-uppercase" style="color:white">All Notes :</h1>
		<div class="row">
			<div class="col-12">

				<%
				
				 HttpSession se= request.getSession(true);
                 String user=(String) se.getAttribute("Username");
				 Connection con;
				 
				 PreparedStatement ps;
				 ResultSet rs;
				try{
			         Class.forName("com.mysql.cj.jdbc.Driver");
			             con =DriverManager.getConnection("jdbc:mysql://localhost:3306/note","root","123456");
			       
				 
	             String query="select * from "+user;
	             ps = con.prepareStatement(query);
	             rs = ps.executeQuery();
// 				Session s = FactoryProvider.getFactory().openSession();

// // 				Query q = s.createQuery("from Note");
// 				List<Note> list = q.list();
// 				for (Note note : list) {
// 					System.out.println(note);

				while (rs.next()) {
						
                // Access columns by name or index
                int id = rs.getInt("id");
                System.out.print(id);
                String title = rs.getString("title");
                String content = rs.getString("content");
                Date date = rs.getTimestamp("addeddate");
                content = content.replaceAll("\\R", "<br>");
                
                Note note = new Note(title,content,date);
                note.setId(id);
                System.out.println(note.getContent());
//                 int column2Value = resultSet.getInt("content");
                // Process the values...
            
				%>

				<div class="row">
					<div class="col-sm-12">
						<div class="card mt-3">
							<img class="card-img-top pl-4 pt-2" style="max-width: 100px"
								src="img/notes.png" alt="Card image cap">
							<div class="card-body px-5">
								<h5 class="card-title">
									<b><%=note.getTitle()%></b>
								</h5>

								<p class="card-text"><%=note.getContent() %></p>
								<p>
                                	<b><%=note.getAddedDate()%></b> 
								</p>
								<br>

								<div class="container text-center mt-2">
                                    
                                   
									<a href="DeleteServlet?note_id=<%=note.getId()%>"
										class="btn btn-danger " data-note_id="<%=note.getId()%>" id="actionButton">Delete</a> 
										
										<a
										href="edit.jsp?note_id=<%=note.getId()%>"
										class="btn btn-primary">Update</a>

								</div>

							</div>
						</div>
					</div>
					
				</div>


				<%
				}
					 
			        }
			        catch(Exception e)
			        {
			            System.out.println(e);
			            
			        }
			    
	    
				%>

			
			</div>

		</div>
	</div>
	</div>
	
</body>
</html>