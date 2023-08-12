<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
<link rel="stylesheet" href="style2.css">
<script src="https://kit.fontawesome.com/00a351e3f2.js" crossorigin="anonymous"></script>
</head>
<body>

<form action="resetserv" method="post">
	<div class="container">
	<div class="form">
			<h1 id="title">Forgot Password!</h1>
				<div class="input">
					
					<div class="input-field" style="margin-bottom:25px;">
						<i class="fa-solid fa-envelope"></i>
						<input type="email" name="email" id="email" onkeyup="validate_email()" placeholder="Email" required="">
						<span style="position:absolute;
									top:40%;
									left:70px;
									font-size:16px;
									font-weight:400;
									color:red;" id="errorr"></span>
					</div>
					<div class="input-field">
						<i class="fa-solid fa-lock"></i>
						<input type="password" name="password" id="myInput" placeholder="New Password" required="">
					</div>
					<div class="check">
						<input style="margin-left:-120%" type="checkbox"  onclick="myFunction()" ><label style="margin-left:-48%">Show Password</label>
						
					</div>
					<div class="input-field" style="margin-bottom:25px;">
						<i class="fa-solid fa-lock"></i>
						<input type="password" name="repassword" id="Input" onkeyup="validate()" placeholder="Re-Enter New Password" required="">
						<span style="position:absolute;
									top:72%;
									left:70px;
									font-size:16px;
									font-weight:400;
									color:red;" id="error"></span>
					</div>
					<div class="check">
						<input style="margin-left:-120%" type="checkbox"  onclick="Function()" ><label style="margin-left:-48%">Show Password</label>
						
					</div>
					<div class="button">
						<br><button  type="submit">Reset</button>
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
	function Function() {
		  var x = document.getElementById("Input");
		  if (x.type === "password") {
		    x.type = "text";
		  } else {
		    x.type = "password";
		  }
		}
	function validate(){
		var a=document.getElementById("myInput").value;
		var i=document.getElementById("Input").value;
		var e=document.getElementById("error");
		
		if(a==i){
			e.innerHTML="Passwords Match";
			
			return true;}
		e.innerHTML="Passwords Don't Match";
	
		return false;
	}
	function validate_email(){
		var a=document.getElementById("email");
		var e=document.getElementById("errorr");
		if(!a.value.match(/^[A-Za-z\._\-0-9]*[@][A-Za-z]*[\.][a-z]{2,4}$/)){
			e.innerHTML="Please enter a valid Email";
			
			return false;}	
		e.innerHTML="";
	
		return true;
	}
</script>
</body>
</html>