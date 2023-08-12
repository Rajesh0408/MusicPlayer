<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LogIn Page</title>
<link rel="stylesheet" href="style2.css">
<script src="https://kit.fontawesome.com/00a351e3f2.js" crossorigin="anonymous"></script>
</head>
<body>

	<form action="logservlet" method="post">
	<div class="container">
	<div class="form">
			<h1 id="title">Grab the Musical World!</h1>
				<div class="input">
					
					<div class="input-field" style="margin-bottom:30px;">
						<i class="fa-solid fa-envelope"></i>
						<input type="email" name="email" id="email" placeholder="Email" onkeyup="validate_email()" required="">
						<span style="position:absolute;
									top:47%;
									left:70px;
									font-size:16px;
									font-weight:400;
									color:red;" id="error"></span>
					</div>
					<div class="input-field">
						<i class="fa-solid fa-lock"></i>
						<input type="password" id="myInput" name="password" placeholder="Password" required="">
					</div>
					<div class="check">
						<input style="margin-left:-50%" type="checkbox"  onclick="myFunction()" ><label style="margin-left:-48%">Show Password</label><label class="forgot"><a style="margin-left:-25%" href="password.jsp">Forgot password?</a></label>
						
					</div>
					<br>
					<div class="button">
						<br><button  type="submit">Log In</button>
					</div>
				</div>
	</div>
	</div>
</form>
<script>
	function myFunction() {
	  var x = document.getElementById("myInput");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
	function validate_email(){
		var a=document.getElementById("email");
		var e=document.getElementById("error");
		if(!a.value.match(/^[A-Za-z\._\-0-9]*[@][A-Za-z]*[\.][a-z]{2,4}$/)){
			e.innerHTML="Please enter a valid Email";
			
			return false;}
		e.innerHTML="";
	
		return true;
	}
</script>
</body>
</html>