<!doctype html>
<html lang="en">
<head>
<style type="text/css">
.content{
	width: 100%;
	position: absolute;
	top:50%;
	transform:translateY(-50%);
	text-align: center;
	color: white;
	
	
}
</style>

<title>Note Taker : Home page</title>
 <%@include file="all_js_css.jsp"%> 
</head>
<body style="background-color: rgb(13, 13, 13)">


		<%@include file="Home.jsp"%>
		
	
<div class="content" >
	<h1>Welcome to Note Book</h1>
	<br>
	<br>
	<a href="Login.jsp"><button class="btn btn-outline-primary text-center m-auto" >Start</button></a>
	

</div>
</body>
</html>