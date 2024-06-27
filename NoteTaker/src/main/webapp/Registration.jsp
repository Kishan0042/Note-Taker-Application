<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
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
	height:590px;
	top: 14%;
	left: 35%;
	transform:transform(-50%,-50%);
	position: absolute;
	border: 4px solid white;
	padding: 30px;
	border-radius: 20px;
	
}
.login-form h1{
	font-size: 40px;
	padding-left:40px;
	padding-bottom:10px;
	text-transform: uppercase;
	margin: 15px 0;
}
.login-form p{
	font-size: 18px;
	margin: 10px 0;
}
.login-form input{
	font-size: 16px;
	width: 100%;
	padding:8px 20px;
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
<body style="background-color: rgb(13, 13, 13)">
	<%@include file="Home.jsp"%>
	<div class="login-form"  style="color:white">
		<h1>Registration</h1>
		<form action="RegistrationServlet" method="post">
			<p>User name</p>
			<input type="text" name="user" placeholder="Please Enter User Name" required="required">
			<p>Password</p>
			<input type="password" name="password" placeholder="Please Enter password" required="required">
			<p>Mobile</p>
			<input type="text" pattern="\d{10}" name="mobile" placeholder="Please Enter mobile number" title="Please enter a phone number in the format XXX-XXX-XXXX" required="required">
			<div class="button-container">
				<button type="submit">Registration</button>
				<button ><a href="Login.jsp" style="color: white">Back</a></button>
			</div>
		</form>
	
	</div>
</body>
</html>