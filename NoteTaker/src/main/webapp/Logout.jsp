<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
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
	width: 350px;
	top: 20%;
	left: 39%;
	transform:transform(-50%,-50%);
	position: absolute;
	color:white;
	
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
        margin-top: 200px;
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
	<%@include file="InsideIcon.jsp"%>
	
	<div class="logout-form">
	
		<form action="LogoutServlet" method="post">
			<br>

			<div class="button-container">
				<button ><a style="color: white">Logout</a></button>
			</div>
		</form>
	     
	</div>
	
	
</body>
</html>