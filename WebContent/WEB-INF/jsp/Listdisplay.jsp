<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session ="true" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloudcart | Laptops</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="css/layout.css" type="text/css" />
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
        <li class="last"><a href="web">Web Service</a></li>
      </ul>
            </c:when>
            <c:otherwise>
         <ul>
        <li><a href="index.html">Home</a></li>
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
    
  </div>
</div>
<div class="wrapper">
  <div id="container">
  
  <c:choose>
            <c:when test="${empty loggedinuser.firstname }">
            
    <h1><a href ="1">Laptop 1</a></h1>
    <h2><a href ="2">Laptop 2</a></h2>
    <h3><a href ="3">Desktop 1</a></h3>
    <h4><a href ="4">Desktop 2</a></h4>
    <h5><a href ="5">Tab 1</a></h5>
    <h6><a href ="6">Tab 2</a></h6>
            
            </c:when>
            <c:otherwise>
            
    <h1><a href ="1">Laptop 1</a><p align="justify"><font size="3"><a href="cart/add/1">Add to cart</a></font></p></h1>
    <h2><a href ="2">Laptop 2</a><p align="justify"><font size="3"><a href="cart/add/2">Add to cart</a></font></p></h2>
    <h3><a href ="3">Desktop 1</a><p align="justify"><font size="3"><a href="cart/add/3">Add to cart</a></font></p></h3>
    <h4><a href ="4">Desktop 2</a><p align="justify"><font size="3"><a href="cart/add/4">Add to cart</a></font></p></h4>
    <h5><a href ="5">Tab 1    </a><p align="justify"><font size="3"><a href="cart/add/5">Add to cart</a></font></p></h5>
    <h6><a href ="6">Tab 2    </a><p align="justify"><font size="3"><a href="cart/add/6">Add to cart</a></font></p></h6>
            
            
            
             </c:otherwise>
        </c:choose>
  
  
  
   
    <p><h2>About This Website</h2></p>
				<p>
					This is a demo of the project I have done.This is just for viewing and not for public
					demonstration/display or for commercial purposes.
				</p>
				<p>
					The front end is done using Jsp,Html,Css and Java Script.The middle tier is done using
					Spring.The backend is done using Hibernate. The Spring MVC architecture is being used to connect
					the front end with the back end.For more details..please register!
    </p>
  </div>
</div>
<div class="wrapper">
  <div id="footer">
    <div id="newsletter">
      <h2>Join Us Today !</h2>
      <p>Please enter your email to join our mailing list</p>
      <form action="#">
        <fieldset>
          <legend>News Letter</legend>
          <input type="text" value="Enter Email Here&hellip;"  onfocus="this.value=(this.value=='Enter Email Here&hellip;')? '' : this.value ;" />
          <input type="submit" name="news_go" id="news_go" value="GO" />
        </fieldset>
      </form>
      <p>To unsubscribe please <a href="#">click here &raquo;</a></p>
    </div>
    <div class="footbox">
      <h2>Front End</h2>
      <ul>
        <li><a href="#">Html</a></li>
        <li><a href="#">Jsp</a></li>
        <li><a href="#">Java Script</a></li>
        <li><a href="#">Css</a></li>
       
      </ul>
    </div>
    <div class="footbox">
      <h2>Mid Tier</h2>
      <ul>
        <li><a href="#">Spring 4.0</a></li>
        <li><a href="#">MVC</a></li>
        <li><a href="#">Annotation Driven</a></li>
        <li><a href="#">Spring-config.xml</li>
        <li class="last"><a href="#">Dispatcher Servlet</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>Back End</h2>
      <ul>
        <li><a href="#">Hibernate 3.0</a></li>
        <li><a href="#">ORM Mapping</a></li>
        <li><a href="#">SQL Queries</a></li>
        <li><a href="#">MySQL Server</a></li>
        <li class="last"><a href="#">Annotation</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper">
  <div id="copyright">
    <p class="fl_left"></p>
    <p class="fl_right"></p>
    <br class="clear" />
  </div>
</div>
</body>
</html>