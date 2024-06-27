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
<!-- <nav class="navbar navbar-expand-lg navbar-dark purple"> -->
<!--   <div class="container"> -->

<!--     <a class="navbar-brand " href="index.jsp">NoteTaker</a> -->
<!--     <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> -->
<!--       <span class="navbar-toggler-icon"></span> -->
<!--     </button> -->
<!--     <div class="collapse navbar-collapse" id="navbarSupportedContent"> -->
<!--       <ul class="navbar-nav me-auto mb-2 mb-lg-0"> -->
<!--         <li class="nav-item"> -->
<!--           <a class="nav-link active" aria-current="page" href="index.jsp">Home</a> -->
<!--         </li> -->
<!--         <li class="nav-item"> -->
<!--           <a class="nav-link" href="add_notes.jsp">Add Note</a> -->
<!--         </li> -->
        
<!--         <li class="nav-item"> -->
<!--           <a class="nav-link " href="all_notes.jsp" >Show Note</a> -->
<!--         </li> -->
<!--       </ul> -->
<!--       <form class="d-flex " role="search"> -->
<!--         <input class="form-control ms-auto" type="search" placeholder="Search" aria-label="Search"> -->
<!--         <button class="btn btn-outline-light" type="submit">Search</button> -->
<!--       </form> -->
<!--     </div> -->
<!--   </div> -->
<!-- </nav> -->

<nav >
    <div class="logo" ><a href="index.jsp" style="text-decoration: none">Note Book</a></div>
    
     <input type="checkbox" id="click" />
     <label for="click" class="menu-btn" >
         <i class="fas fa-bars"></i>
     </label>
     
     <ul>
         
       
          <li><a href="add_notes.jsp" style="text-decoration: none" >Add Note</a></li>
          <li><a href="all_notes.jsp" style="text-decoration: none" onclick="validateLogin()" type="submit">Show Note</a></li>
         <li><a class="active_button" href="Login.jsp" style="text-decoration: none">Log In</a></li>
         <li><a class="active_button" href="Registration.jsp" style="text-decoration: none">Sign Up</a></li>
         <li><a class="active_button" href="Logout.jsp" style="text-decoration: none">Logout</a></li>
         <a href="add_notes.jsp"></a>
          
     </ul>
      
     
 </nav>

 <script>
  
 function validateLogin() {
	 
        var username = document.getElementById("user").value;
        var password = document.getElementById("password").value;
        1
        if (username == " " && password == " ") {
           
            window.location.href = "Login.jsp"; 
        } 
    }
</script>
</body>
</html>

