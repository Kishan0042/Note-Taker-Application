<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body style="background-color: rgb(13, 13, 13)">

	<div >
		
		<%@include file="InsideIcon.jsp"%>
		<div class="container">
		<br>
		<!--  this is add form-->

		<form action="SaveNoteServlet" method="post" class="w-50 m-auto" style="color: white">
			<h1 >Please Fill your note detail</h1>
			<br>
			<div class="mb-3">
				<label for="title" class="form-label">Note Title</label> 
				<input 
					name ="title"
					required
					type="text" 
					class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter title here">

			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Note
					Content</label>
				<textarea name="content" required id="content" placeholder="Enter your contact here"
					class="form-control" style="height: 300px;"></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-primary" onclick="myFunction()">Add</button>

			</div>
		</form>
		
		
	</div>
   </div>
   <script>
		function myFunction() {
		  alert("Your note add Succesfully\");
		}
   </script>
</body>
</html>