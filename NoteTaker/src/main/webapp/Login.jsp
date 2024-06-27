<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<%@include file="all_js_css.jsp"%>
<style type="text/css">
*{
	padding: :0;
	margin: 0;

}
body{
	background: url('') no-repeat;
	background-size: cover;
	color: black;
	
}
.login-form{
	width: 430px;
	top: 15%;
	left: 35%;
	transform:transform(-50%,-50%);
	position: absolute;
	color:white;
	border: 4px solid white;
	padding: 30px;
	border-radius: 20px;
	
}
.login-form h1{
	font-size: 40px;
	padding-left:100px;
	padding-bottom:10px;
	text-transform: uppercase;
	margin: 40px 0;
}
.login-form p{
	font-size: 18px;
	margin: 15px 0;
}
.login-form input{
	font-size: 16px;
	width: 100%;
	padding: 10px 20px;
	border: 2px solid black;
	outline: none;
	border-radius: 5px;
}
.login-form div{
	padding-top:10px;
	
}
.login-form div a{
 	text-decoration: none;
 	color :blue;
}

.login-form button{
	font-size: 18px;
	font-weight: bold;
	margin: 10px 0;
	padding: 10px 15px;
	width: 50%;
	border-radius: 5px;
}
.button-container {
        display: flex;
        justify-content: center;
       
    }

    .button-container button {
        padding: 10px 20px;
        margin: 5px;
        background-color: #007bff;
        color: #fff;
        border: none;
        cursor: pointer;
    }
	
</style>

</head>
<body style="background-color: rgb(13, 13, 13)">
	<%@include file="Home.jsp"%>
	<%
    
	HttpSession session2 = request.getSession(true);
	String user=(String)session2.getAttribute("Username");
	System.out.println("login part session user name : "+user);
	
    if (user != null ) {
    	
    	 response.sendRedirect("add_notes.jsp"); 
    	 
    } else {
    	%> 
    
	
	<div class="login-form">
		<h1>Login</h1>
		<form action="LoginServlet" method="post">
			<p>User Name</p>
			<input type="text" name="user" placeholder="please Enter User Name" required="required">
			<p>Password</p>
			<input type="password" name="password" placeholder="please Enter password" required="required">
			<div><a href="UpdatePassword.jsp">forget password</a></div>
			<br>
			
			<div class="button-container">
				<button type="submit">Login</button>
				<button ><a href="Registration.jsp" style="color: white">Sign up</a></button>
			</div>
		</form>
	     
	</div>
	<%
	} %>
	
</body>
</html>