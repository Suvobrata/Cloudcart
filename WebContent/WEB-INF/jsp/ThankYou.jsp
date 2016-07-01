<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloudcart | Thank You</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="css/layout.css" type="text/css" />
<link rel="stylesheet" href="css/button.css" type="text/css" />
<style> 
.textbox { 
    border: 1px solid #848484; 
    -webkit-border-radius: 30px; 
    -moz-border-radius: 30px; 
    border-radius: 30px; 
    outline:0; 
    height:25px; 
    width: 275px; 
    padding-left:10px; 
    padding-right:10px; 
  } 
</style>

</head>
<body id="top">
<div class="wrapper">
  <div id="header">
    <div id="logo">
      <h1>CLOUDCART</h1>
      <p>&nbsp;</p>
    </div>
    <div id="topnav">
          <c:choose>
					<c:when test="${empty loggedinuser.firstname }">
						<ul>
							<li><a href="index">Home</a></li>
							<li><a href="ProjectDetails">Project</a></li>
							<li><a href="Register">Register</a></li>
							<li><a href="Signin">Sign In</a></li>
							<li class="last"><a href="index">Contact Us</a></li>
						</ul>
					</c:when>
					<c:otherwise>
						<ul>
							<li><a href="index">Home</a></li>
							<li><a href="ProjectDetails">Project</a></li>
							<li><a href="cart">ViewCart</a></li>
							<li><a href="logout">Sign Out</a></li>
							<li class="last"><a href="profile">Welcome ${loggedinuser.firstname }</a></li>
						</ul>

					</c:otherwise>
				</c:choose>
      
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper">
  <div id="breadcrumb">
    <ul>
     
      <li> <center><h3> </h3></center></li>
    </ul>
  </div>
</div>
<div class="wrapper">
  <div id="container">
 
  
  
  <h1>Thank you for shopping with us!! An email has not been sent to your email : ${Email.email }</h1>   
  
	
    
    
        
    
   
  
  </div>
</div>

</body>
</html>