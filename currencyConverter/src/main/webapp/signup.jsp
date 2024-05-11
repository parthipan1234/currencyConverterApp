<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp</title>
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
<style type="text/css">
*{
padding: 0;
margin: 0;
font-family:Roboto;
}
.container{
height: 100vh;
width: 100%;
gap:10px;
display: grid;
background-color:#c7ecee;
  grid-template-rows: 1fr 2fr 1fr 1fr;

flex-direction: column;
justify-content:center;
align-items: center;
}
.signup-form{

border:1px solid #888;
display: flex;
flex-direction: column;
justify-content:center;
padding-right:20px;
border-radius: 5px;
background-color: #fff;
color: #888;
}
.form-label{
font-size: 17px;
margin-top: 5px ;
marin-left:30px;
padding-left: 30px;
color: #535c68;
}
input{
padding: 10px 20px;
border-radius: 4px;
outline:none;
width: auto;  

margin-left:  30px;
margin-top:5px;
border: 1px solid gray;
}
.btn{
 border: none;

background-color:#130f40; 
 color: white;
 font-size: 18px;
 border-radius: 5px;
 padding:7px 14px;
 margin: 10px  0px 10px 30px;
 cursor: pointer;  
}
a{
color:blue;
}
.btn:hover{
 background-color:#130f40;
}
.headings{
padding-top:  2px;
text-align: left;
color: #130f40;
}
.terms .term{
text-align:center; 
font-size:17px;  
margin-bottom:10px; 
 }
.terms p+p{
font-size:17px; 
}
.copy{
background-color:#130f40;
color: #fff;
text-align: center;
word-spacing:10px;
border-radius: 8px;   
}
.copy a{
color: #fff;
margin:5px 0px; 
}
select{
margin-left: 30px;
padding: 3px;
margin-top:2px;
outline: none;
}
option {
	color: #130f40;
	background-color:#c7ecee; 
	text-transform: capitalize;
}


</style>
</head>
<body>
	<div class="container">
	<div class="headings">
	<h1>Create Your Account</h1>
	<p>Please provide your credentials below.</p>
	</div>
	<form  action="signupdata"class="signup-form" method="post" enctype="multipart/form-data">
		
	<label for="name" class="form-label ">Name</label> 
	<input	type="text"  id="name"	name="name">
				
    <label for="email" class="form-label ">Email</label> 
    <input type="email"  id="email" name="email">
			
	<label for="contact" class="form-label ">Contact</label> 
	<input type="text"  id="contact" name="contact">
			
	<label for="password" class="form-label ">Password</label>
	<input	type="password"  id="password" name="password">
		<select >
		<option>Password Requirements </option>
		<option disabled="disabled">&#8709; At least 8 characters long</option>
		<option disabled="disabled">&#8709; At least 1 lowercase letter</option>
		<option disabled="disabled">&#8709; At least 1 capital letter</option>
		<option disabled="disabled">&#8709; At least 1 non-alphabetical character</option>
		</select>
	<label for="image" class="form-label ">Image</label> 
	<input	type="file" id="image"	name="image">
		
	<button type="submit" class="btn" >REGISTER NOW</button>
		</form>
		
	
	<div class="terms">
	<p class="term">Already have an account? <a href="login.jsp">Login</a></p>
	<p>This site is protected by reCAPTCHA and the google <a href="#">Privacy Policy </a> and <a href="#">Terms Of Service</a> apply</p>
	</div>
	<div class="copy">
	<p>Important Information</p>
	<a href="#">Cookie Policy.</a><span>|</span> <a href="#">Privacy Policy.</a>
	<p>&#169; 2024-Till Now.     </p>
	</div>
    </div> 	
</body>
</html>