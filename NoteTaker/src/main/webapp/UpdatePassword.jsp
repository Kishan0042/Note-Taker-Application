<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@include file="all_js_css.jsp"%>
<style type="text/css">
*{
	padding: :0;
	margin: 0;
	font-family: sans-serif;
}
body{
	background: url('') no-repeat;
	background-size: cover;
	color: black;
	
}
.login-form{
	width: 450px;
	height:580px;
	top: 13%;
	left: 35%;
	transform:transform(-50%,-50%);
	position: absolute;
	border: 4px solid white;
	padding: 30px;
	border-radius: 20px;
	
}
.login-form h1{
	font-size: 40px;

	padding-bottom:10px;
	text-transform: uppercase;
	margin: 20px 0;
	width: 1000px;
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
	padding-top:15px;
	
}
.login-form div a{
 	text-decoration: none;
 	color :black;
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
        margin-top: 20px;
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
<body style="background-color: rgb(13, 13, 13) ;color: white">
	<%@include file="Home.jsp"%>
	<div class="login-form">
		<h1>Update Password</h1>
		<form action="UpdatePasswordServlet" method="post">
			<p>User Name</p>
			<input type="text"  name="username" placeholder="Please Enter mobile number" required="required">
			<p>New password</p>
			<input type="password" name="password" placeholder="Please Enter new password" required="required">
			<p>Re-Enter Password</p>
			<input type="password" name="pass" placeholder="Please re-Enter password" required="required">
			
			
			<div class="button-container">
				<button type="submit">Update</button>
				<button ><a href="Login.jsp" style="color: white">Back to Login</a></button>
			</div>
		</form>
	
	</div>

</body>
</html>