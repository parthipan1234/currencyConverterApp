<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
<style type="text/css">
*{
padding: 0;
margin: 0;
font-family:Roboto;
}
.headings{
padding-top:  2px;
text-align: left;
color: #130f40;
}
.container{
height: 100vh;
width: 100%;
background-color:#c7ecee;
display: grid;
grid-template-rows: 1fr 2fr 1fr  1fr;
justify-content:center;
align-items: center;

}
a{
color: blue;
}
.login-form{

border: 1px solid #777;
display: flex;
flex-direction: column;
justify-content:center;
border-radius: 5px;
background-color: #fff;
color: #888;
}

.form-label{
font-size: 17px;
margin: 10px 30px;
}
input{
padding: 10px 20px;
border-radius: 4px;
outline:none;
width: auto;  
margin: 10px 30px;
border: 1px solid gray;
}
.btn{
 border: none;
 background-color:blue;
 color: white;
 font-size: 18px;
 border-radius: 5px;
 padding:7px 14px;
 margin: 20px 30px;
 cursor: pointer;  
}
.btn:hover{
background-color: purple ;
}
.droped{
text-align: right;

}
.copy a{
color: #fff;
margin:5px 0px; 
}
.copy{
padding:20px;
background-color:#130f40;
color: #fff;
text-align: center;
word-spacing:10px;
border-radius: 8px;   
}
.terms .term{
text-align:center; 
font-size:17px;  
margin-bottom:10px; 
 }
.terms p+p{
font-size:17px; 
}
</style>
</head>
<body>
	<!-- Add Bootstrap margin utility for top and bottom -->


	<div class="container">
         <div class="headings">
         <h1>Welcome Back</h1>
         <p>Please provide Your  details</p>
         </div>
      
		<form action="log" method="post" class="login-form">
			
	    <label for="email" class="form-label">Email</label> 
		<input	type="email"  id="email" name="email">
			
	    <label for="password" class="form-label ">Password</label>
	    <input	type="password"  id="password" name="password">
	    <label for="drop" class="droped">Show Password	<input type="checkbox"  id="drop" onclick="myFunction()" ></label>
		
		<button type="submit" class="btn">Submit</button>
		</form>
		
		<div class="terms">
	<p class="term">Create a new  account? <a href="signup.jsp">SignUp</a></p>
	<p>This site is protected by reCAPTCHA and the google <a href="#">Privacy Policy </a> and <a href="#">Terms Of Service</a> apply</p>
	</div>
	<div class="copy">
	<p>Important Information</p>
	<a href="#">Cookie Policy.</a><span>|</span> <a href="#">Privacy Policy.</a>
	<p>&#169; 2024-Till Now.     </p>
	</div>
	</div>

<script type="text/javascript">

function myFunction() {
	  var x = document.getElementById("password");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}


</script>
</body>
</html>