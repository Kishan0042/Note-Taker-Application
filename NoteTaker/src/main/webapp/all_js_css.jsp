
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	
	<link href="css/style.css" rel="stylesheet">
	<link href="Style.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
	<style type="text/css">


@charset "UTF-8";

@import url(https://fonts.googleapis.com/css?family=Poppins);
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'poppins',sans-serif;
}
nav{
    height:80px;
    background:rgb(26, 26, 255);
    display:flex;
    align-items:center;
    justify-content:space-between;
    padding:10px 50px 0px 100px;
    position: sticky;
    top:0;.
    width: 100%;
    z-index:999;
    
   
}

nav div a {
    font-size: 25px;
    color: white;
    font-weight: 500;
    text-decoration: none;
    text-decoration: none;
    }
nav ul{
    display:flex;
    list-style:none;
}
nav ul li{
    margin:0px 60px;
    
   
}
nav ul li a {
    color: #fff;
    text-decoration: none;
    font-size: 15px;
    font-weight: 500;
    letter-spacing: 1px;
    padding: 2px 8px;
    border-radius:5px;
    transition:all 0.3s ease;
    

}

nav ul li a:hover, nav ul li a.active_button {
    color: white;
    font-weight:500;
    
}
nav ul li a:hover, nav ul li a.active {
    color: #1b1b1b;
    background: #fff;
    
}
nav .menu-btn i{
    color:#fff;
    font-size:18px;
    cursor:pointer;
    display:none;
}
#click{
    display:none;
}
@media (max-width:940px) {
    nav .menu-btn i{
        display:block;
    }
    #click:checked ~ .menu-btn i:before {
        content:"\f00d";
    }
    nav ul {
        position: fixed;
        top: 80px;
        left: -100%;
        background: #111;
        height: 100vh;
        width: 100%;
        display: block;
        text-align: center;
        transition: all 0.3s ease;
    }
    #click:checked ~ ul{
        left:0;
    }
    nav ul li{
        margin:40px 0;

    }
    nav ul li a{
        font-size:20px;
        display:block;
    }
    nav ul li a:hover, nav ul li a.active {
        color: cyan;
        background: none;
    }
    
}

	.logo a:hover{
		color:white;
	
	}
	.logo{
	padding-bottom: 12px;
	}
	.navsize ul li{
	padding-left: 100px;
	}


</style>
	
	 <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  