<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloudcart | Project</title>
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
      <h1><a href="index">CLOUDCART</a></h1>
      
    </div>
    <div id="topnav">
      <c:choose>
					<c:when test="${empty loggedinuser.firstname }">
						<ul>
							<li><a href="index">Home</a></li>
							<li class="active"><a href="ProjectDetails">Project</a></li>
							<li><a href="Register">Register</a></li>
							<li><a href="Signin">Sign In</a></li>
							<li class="last"><a href="web">Web Service</a></li>
						</ul>
					</c:when>
					<c:otherwise>
						<ul>
							<li><a href="index">Home</a></li>
							<li class="active"><a href="ProjectDetails">Project</a></li>
							<li><a href="cart">View Cart</a></li>
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
    
<p> <h2>The Front End</h2>  It is built using Jsp mostly.Css styling sheets are used.JSTL Tags are used for dynamic
display of contents such as cart items,total cost,the options are different when the user is logged in and when
the user is logged out,etc.</p>
<p><h2>The Mid Tier</h2>  Spring 4.0 is used. The Model-View-Controller architecture is used to take requests from the user
and connect to the database and fetch datas accordingly to display the requested materials.The configuration file consisted of
the controller class,JDBC properties,Hibernate properties and the DaoService and DaoImpl classes.</p>
   <p>Whenever the user registers, his information are stored. A sample of the stored infos can be viewed when clicked
on the 'Welcome User' link on the right after Registering/Signing in(All the operations are not provided).
The requested URI is taken by the Dispatcher Servlet and forwared to their specific controller through @RequestMapping
annotations and their respective functions are being invoked.The Mid Tier is connected to the database through Hibernate.</p>
   <p>The different packages are : 1.controllers 2.dao 3.model 4.services 5.beans</p>
<p>Controller :  Has all the controllers which are invoked through their @RequestMapping annotation</p>
<p>Dao : The Data Access Object Class which incorporates the various queries to connect to Model Entity(Hibernate)
and does the necessary transactions.</p>
<p>Services : A connecting layer introduced between the front end and the back end for loose coupling.</p>
<p>Model : The Entity class.It consist of classes corresponding to the database.JPA annotations are used.</p>
<p>Bean : An added functionality for the cart functions.Contains a component package. Session scope is used along with
the Singleton scope of HttpSession for adding items.Hashmap has been used for storage of cart objects and later fetched by JSTL key-value
mapping.</p>

<p><h2>Back End</h2> Hibernate 3.0 is used to do Object Relational Mappings.JPA annotations are used.MySQL workbench is used as database.
The database has two different tables - 1. Customer 2.Products.

</p> 

<p><h2>RESTful API</h2> Restful Web Service is provided along with this project.Rest Web Service is created for the 'products' entity.Using an Rest client
like Postman one can receive product information in JSON format.Anyone can use this Web Service.A sample consumption of this service is also exhibited using 
REST templates. 
  

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