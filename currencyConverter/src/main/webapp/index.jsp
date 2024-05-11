<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
<style>
body {
	min-height: 97vh;
	width: 98%;
	font-family: Roboto;
    background-color:#c7ecee;
}
.main-div {
	
	display: flex;
	flex-direction: row;
	justify-content:right;
	align-items:center;

	padding: 5px 20px;
	gap:40px;
	font-size: 22px;
}
.main-div a{
background-color:darkgreen ;
color:white;
padding: 6px 12px; 
border :none;
text-decoration: none;
border-radius: 4px;
}
.main-div a:hover{
background-color:green; 
}
.head{
text-align: center;
color:#0c2461;
text-decoration: underline 1px wavy #fff; 
font-size: 40px;
margin-right:200px; 
}
.head:first-letter {
	font-size: 80px;
	color: red;
	text-decoration: none;
}
.content{
text-align: center;
padding:10px 40px; 
font-size: large;
word-spacing:15px;
letter-spacing:2px;
color: #0c2461;  
}
.image{
display: flex;
align-items: center;
justify-content: center;
gap:20px;
}
img{
height:350px;
width:350px;
border-radius: 5px; 
}
</style>
</head>
<body>
	<div class="main-div">
	<div class="head">Currency Convertor</div>
        <a href="index.jsp">Home</a>
		<a href="login.jsp"> Login </a> <a href="signup.jsp">SignUp</a>
		<a href="about.jsp">About</a>
	</div>
	<div class="content">
	<p>
	First of all welcomes you ,this will make you to feel that one of the best Application  
    which is you were Used.Uses Of Currency Convertor is You will get to know that to convert from one valid Country currency to another valid Currency.
    The purpose of made this for user friendly and free of cost so anyone can access from anywhere. 
	</p>
	</div>
	<div class="image">
	<img alt="blog" src="https://media.istockphoto.com/id/483424683/photo/euro-and-dollar-symbol-eur-usd-pair.jpg?s=612x612&w=0&k=20&c=sxpJ59whk1IQbv2O22UE0zYEmZ9zZA76-iJBsrsAa_I=">
	</div>
</body>
</html>