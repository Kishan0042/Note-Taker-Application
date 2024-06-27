<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inside nav</title>
<%@include file="all_js_css.jsp"%>
</head>
<body style="background-color: rgb(13, 13, 13)">

<nav >
    <div class="logo" ><a href="index.jsp" style="text-decoration: none">Note Book</a></div>
     <input type="checkbox" id="click" />
     <label for="click" class="menu-btn" >
         <i class="fas fa-bars"></i>
     </label>
    
     <ul>
         
          <li><a href="add_notes.jsp" style="text-decoration: none" >Add Note</a></li>
          <li><a href="all_notes.jsp" style="text-decoration: none" onclick="validateLogin()" type="submit">Show Note</a></li>
         <li><a class="active_button" href="Logout.jsp" style="text-decoration: none">Logout</a></li>
         <a href="add_notes.jsp"></a>
          
     </ul>
      
     
 </nav>

</body>
</html>