<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home page</title>
<%@include file="all_js_css.jsp"%>
</head>
<body style="background-color: rgb(13, 13, 13)">

<nav >
    <div class="logo" ><a href="index.jsp" style="text-decoration: none">Note Book</a></div>
     <input type="checkbox" id="click" />
     <label for="click" class="menu-btn" >
         <i class="fas fa-bars"></i>
     </label>
     <div class="navsize">
     <ul>
         
         <li><a class="active_button" href="Login.jsp" style="text-decoration: none">Log In</a></li>
         <li><a class="active_button" href="Registration.jsp" style="text-decoration: none">Sign Up</a></li>
         <a href="add_notes.jsp"></a>
          
     </ul>
      
     </div>
 </nav>

</body>
</html>