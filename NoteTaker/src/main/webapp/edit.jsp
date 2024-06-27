<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="org.hibernate.*,com.helper.*,com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>
<%@include file="all_js_css.jsp"%>
</head>
<body style="background-color: rgb(13, 13, 13);color: white">

	<div >
		
		<%@include file="InsideIcon.jsp"%>
		<div class="container">
		
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		/* Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note) s.get(Note.class, noteId); */
		
		Connection con = null;
        PreparedStatement ps = null;
     	ResultSet rs=null;
      
	    Note note = new Note();
	    HttpSession session1 = request.getSession(true);
		
		String user=(String)session1.getAttribute("Username");
	
			try{
				
			Class.forName("com.mysql.cj.jdbc.Driver");
            con =DriverManager.getConnection("jdbc:mysql://localhost:3306/note","root","123456");
			String sql = "SELECT * FROM "+user+" where id= "+noteId;
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

			if (rs.next()) {
					
            // Access columns by name or index
             int id = rs.getInt("id");
             System.out.print(id);
            String title = rs.getString("title");
            String content = rs.getString("content");
            

            note.setId(id);
        	note.setTitle(title);
			note.setContent(content);
				 }
			}
			 catch(Exception e)
	        {
	            System.out.println(e);
	            
	        }
			System.out.print(" note id  "+ note.getId());
			
		
		%>
		<form action="UpdateServlet" method="post"  class="w-50 m-auto">

				<br>
				<h1>Edit your note</h1>
				<br>
						
				<input value="<%= note.getId() %>" name="noteId" type="hidden">
			<div class="mb-3">
				<label for="title" class="form-label">Note Title</label>
				 <input
					name="title" required type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter here"
					value="<%=note.getTitle()%>">

			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Note
					Content</label>
				<textarea name="content" required id="content"
					placeholder="Enter your contact here" class="form-control"
					style="height: 300px;"><%=note.getContent()%>
					</textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save Your
					note</button>

			</div>
		</form>
		</div>
	</div>
</body>
</html>