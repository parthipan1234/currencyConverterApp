<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dtaTransferObject.User" %>
    <%@ page import="java.util.Base64" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Currency::APP</title>
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
<style type="text/css">
*{
padding: 0;
margin: 0;
font-family:Roboto; 
}
.container{
height:100vh;
width:100%; 
display: grid;
grid-template-rows:1fr 1fr 1fr ;
background-color: #c7ecee;
justify-content: center;
align-items:center;
flex-direction: column; 
position: relative;
}
form{
border: 1px solid #777;
padding: 20px;
display: flex;
flex-direction: column;
border-radius: 5px;
box-shadow:0px 5px 10px 0px #888; 
}

.headings .image1{
height: 100px;
width: 100px;
border-radius: 100%;
border: 3px solid #fff;
}
.image {
display: flex;
flex-direction: column;
align-items: center;
justify-content: center;
padding:5px; 
position: absolute;
top: 20px;
left: 20px;
border: 1px solid white;
border-radius: 4px;
}
.headings h1{
text-align: center;
color:purple;

}

input,select{
padding: 9px 18px;
outline: none;
border: 1px solid #888;
border-radius: 5px;
margin-top: 10px;
width:100%;
}
input{
width: 500px;
}
label{
font-size: 19px;
margin-bottom:10px;
margin-top:10px; 
color: #888;
font-weight: 600; 
}
.btn{
 border: none;

background-color:#192a56; 
 color: #fff;
 font-size: 25px;
 border-radius: 5px;
 padding:7px 14px;
 margin: 10px  0px 10px 0px;
 cursor: pointer;  
}
.result{
border: 1px solid #888;
background-color: #fff;
color: purple;
padding: 10px 10px;
border-radius: 5px;
text-align: center;
box-shadow: 0px 5px 5px 0px #888;
}
.res1{
color:green; 
}
a{
text-decoration: none;
color: purple;
font-weight: 600;
font-size: 19px;
}
a:hover{
color: blue;
}
span{
  color: green;
}
</style>
</head>
<body>
   <% User user=(User)request.getSession().getAttribute("userlogin");%>
    		  
   <div class="container">
   <div class="headings">
    <h1> Welcome <span><%= user.getUsername()%></span> </h1>
    <div class="image">
    <img class="image1" alt="profile" src="data:image/jpeg;base64,<%= new String(Base64.getEncoder().encode(user.getUserimage()))%>">
    <a href="profile.jsp">Edit Profile</a>
   </div>
   </div>
   
    <form action="main" method="post" class="main-form">
   
     <label for="amount">Amount</label>
     <input type="number" name = "amount" id="amount" required="required" placeholder="Enter An Amount ">
     <label class="form-label" for="from">From Currency</label>
     
     <select id="form" name="sel1" >
     <option >Choose From Currency</option>
     <option value="USD">USD - US Dollar</option>
     <option value="EUR">EUR - Euro</option>
     <option value="GBP">GBP - British Pound</option>
     <option value="CAD">CAD - Canadian Dollar</option>
     <option value="AUD">AUD - Australian Dollar</option>
     <option value="JPY">JPY - Japanese Yen</option>
     <option value="INR">INR - Indian Rupee</option>
     <option value="NZD">NZD - New Zealand Dollar</option>
     <option value="CHF">CHF - Swiss Franc</option>
     <option value="ZAR">ZAR - South African Rand</option>
     <option value="RUB">RUB - Russian Rubble</option>
     <option value="BGN">BGN - Bulgarian Lev</option>
     <option value="SGD">SGD - Singapore Dollar</option>
     <option value="HKD">HKD - Hong Kong Dollor</option>
     <option value="SEK">SEK - Swedish Krona</option>
     <option value="THB">THB - Thai Bhat</option>
     <option value="HUF">HUF - Hungarian Forint</option>
     <option value="CNY">CNY - Chinese Yuan Renminbi</option>
     <option value="NOK">NOK - Norwegian Krone</option>
     <option value="MXN">MXN - Mexican Peso</option>
     <option value="DKK">DKK - Danish Krone</option>
     <option value="MYR">MYR - Malasiyan Ringgit</option>
     <option value="PLN">PLN - Polish Zloty</option>
     <option value="BRL">BRL - Brazilian Real</option>
     <option value="PHP">PHP - Philippine Peso</option>
     <option value="IDR">IDR - Indonesian Rupiah</option>
     <option value="CZK">CZK - Czech Koruna</option>
     <option value="AED">AED - Emirati Dirham</option>
     <option value="TWD">TWD - Taiwan New Dollar</option>
     <option value="KRW">KRW - South Korean Won</option>
     <option value="ILS">ILS - Israeli Shekel</option>
     <option value="ARS">ARS - Argentine Peso</option>
     <option value="CLP">CLP - Chilean Peso</option>
     <option value="EGP">EGP - Egyptian Pound</option>
     <option value="TRY">TRY - Turkish Lira</option>
     <option value="RON">RON - Romanian Leu</option>
     <option value="SAR">SAR - Saidi Arabian Riyal</option>
     <option value="PKR">PKR - Pakistani Rupee</option>
     <option value="COP">COP - Colombian Peso</option>
     <option value="IQD">IQD - Iraqi Dinar</option>
     <option value="XAU">XAU - Gold Ounce</option>
     <option value="FJD">FJD - Fijian Dollar</option>
     <option value="KWD">KWD - Kuwaiti Dinar</option>
     <option value="BAM">BAM - Bosnian Convertible Mark</option>
     <option value="ISK">ISK - Icelandic Krona</option>
     <option value="MAD">MAD - Moroccan Dirham</option>
     <option value="VND">VND - Viyatnamese Dong</option>
     <option value="JMD">JMD - Jamaican Dollar</option>
     <option value="JOD">JOD - Jordanian Dinar</option>
     <option value="DOB">DOP - Doinican Peso</option>
     <option value="PEN">PEN - Peruvian Sol</option>
     </select>
    
    
      
      <label class="form-label" for="to" >To Currency</label>
    <select id="to" name="sel2" >
      <option >Choose To Currency</option>
     <option value="USD">USD - US Dollar</option>
     <option value="EUR">EUR - Euro</option>
     <option value="GBP">GBP - British Pound</option>
     <option value="CAD">CAD - Canadian Dollar</option>
     <option value="AUD">AUD - Australian Dollar</option>
     <option value="JPY">JPY - Japanese Yen</option>
     <option value="INR">INR - Indian Rupee</option>
     <option value="NZD">NZD - New Zealand Dollar</option>
     <option value="CHF">CHF - Swiss Franc</option>
     <option value="ZAR">ZAR - South African Rand</option>
     <option value="RUB">RUB - Russian Rubble</option>
     <option value="BGN">BGN - Bulgarian Lev</option>
     <option value="SGD">SGD - Singapore Dollar</option>
     <option value="HKD">HKD - Hong Kong Dollor</option>
     <option value="SEK">SEK - Swedish Krona</option>
     <option value="THB">THB - Thai Bhat</option>
     <option value="HUF">HUF - Hungarian Forint</option>
     <option value="CNY">CNY - Chinese Yuan Renminbi</option>
     <option value="NOK">NOK - Norwegian Krone</option>
     <option value="MXN">MXN - Mexican Peso</option>
     <option value="DKK">DKK - Danish Krone</option>
     <option value="MYR">MYR - Malasiyan Ringgit</option>
     <option value="PLN">PLN - Polish Zloty</option>
     <option value="BRL">BRL - Brazilian Real</option>
     <option value="PHP">PHP - Philippine Peso</option>
     <option value="IDR">IDR - Indonesian Rupiah</option>
     <option value="CZK">CZK - Czech Koruna</option>
     <option value="AED">AED - Emirati Dirham</option>
     <option value="TWD">TWD - Taiwan New Dollar</option>
     <option value="KRW">KRW - South Korean Won</option>
     <option value="ILS">ILS - Israeli Shekel</option>
     <option value="ARS">ARS - Argentine Peso</option>
     <option value="CLP">CLP - Chilean Peso</option>
     <option value="EGP">EGP - Egyptian Pound</option>
     <option value="TRY">TRY - Turkish Lira</option>
     <option value="RON">RON - Romanian Leu</option>
     <option value="SAR">SAR - Saidi Arabian Riyal</option>
     <option value="PKR">PKR - Pakistani Rupee</option>
     <option value="COP">COP - Colombian Peso</option>
     <option value="IQD">IQD - Iraqi Dinar</option>
     <option value="XAU">XAU - Gold Ounce</option>
     <option value="FJD">FJD - Fijian Dollar</option>
     <option value="KWD">KWD - Kuwaiti Dinar</option>
     <option value="BAM">BAM - Bosnian Convertible Mark</option>
     <option value="ISK">ISK - Icelandic Krona</option>
     <option value="MAD">MAD - Moroccan Dirham</option>
     <option value="VND">VND - Viyatnamese Dong</option>
     <option value="JMD">JMD - Jamaican Dollar</option>
     <option value="JOD">JOD - Jordanian Dinar</option>
     <option value="DOB">DOP - Doinican Peso</option>
     <option value="PEN">PEN - Peruvian Sol</option>
     </select>
     
     
   
      <button type="submit" class="btn" >GENERATE VALUE</button>
      
      <% float result=(float)request.getSession().getAttribute("result");
       String from=(String)request.getSession().getAttribute("from");
       String to=(String)request.getSession().getAttribute("to");
      double amount=(double)request.getSession().getAttribute("amount");
    		  
    		  %>
      <h1 class="result"><span class="res1"> <%= amount %> <%= from %></span> is Equal To <span class="res1"><%= result %> <%= to %></span></h1>
     </form>
   </div>

</body>

