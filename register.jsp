<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<link rel="stylesheet" href="style2.css">
<script src="https://kit.fontawesome.com/00a351e3f2.js" crossorigin="anonymous"></script>
</head>
<body>
<style>
	.input-field{
		margin-bottom:25px;
	}
</style>
<form action="registerdb" method="post">
	<div class="container">
	<div class="form">
			<h1 id="title">Let's Get Started!</h1>
				<div class="input">
					<div class="input-field" id="namefield">
						<i class="fa-solid fa-user"></i>
						<input type="text" name="name" placeholder="Name" required="">
					</div>
					<div class="input-field">
						<i class="fa-solid fa-user"></i>
						<input type="text" name="uname" placeholder="Username" required="">
					</div>
					<div class="input-field">
						<i class="fa-solid fa-envelope"></i>
						<input type="email" name="email" id="email" placeholder="Email" onkeyup="validate_email()" required="">
						<span style="position:absolute;
									top:57%;
									left:70px;
									font-size:16px;
									font-weight:400;
									color:red;" id="error"></span>
					</div>
					<div class="input-field">
						<i class="fa-solid fa-lock"></i>
						<input type="password" id="myInput" name="password"  placeholder="Password" required="">
					</div>
					<div class="check">
						<input style="margin-left:-120%" type="checkbox"  onclick="myFunction()" ><label style="margin-left:-48%">Show Password</label>
						
					</div>
					
					<p>Already Have an Account? <a href="LogIn.jsp"><b>Log In</b></a></p>
					
					<div class="button">
						<br><button  type="submit">Register</button>
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