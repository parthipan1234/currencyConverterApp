<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">

<style type="text/css">
*{
padding: 0;
margin: 0;
font-family:Roboto;
}
.form-label{
font-size: 24px;
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

background-color:blue; 
 color: white;
 font-size: 18px;
 border-radius: 5px;
 padding:7px 14px;
 margin: 10px  0px 10px 30px;
 cursor: pointer;  
}
.signup-form{
height:400px;
width:400px;
border:1px solid #888;
display: flex;
flex-direction: column;
justify-content:space-around;

align-items:center;
padding:20px;
border-radius: 5px;
background-color: #fff;
color: #888;

}
body{
width:100vw;
display: flex;
justify-content: center;
align-items:center;
text-align: justify;
height: 100vh;
background-color:#c7ecee;

}
</style>
</head>
<body>
    <form action="pro" method="post"  class="signup-form" enctype="multipart/form-data">
    
    <label for="image" class="form-label">Select Profile</label>
    <input type="file" id="image" name="image">
    
    <button class="btn" type="submit">ADD PROFILE</button>
    
    </form>
</body>
</html>