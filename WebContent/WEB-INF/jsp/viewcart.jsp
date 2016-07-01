<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloudcart | Cart</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="css/layout.css" type="text/css" />
<link rel="stylesheet" href="css/button.css" type="text/css" />
<link rel="stylesheet" href="css/tables2.css" type="text/css" />


<style>
.textbox {
	border: 1px solid #848484;
	-webkit-border-radius: 30px;
	-moz-border-radius: 30px;
	border-radius: 30px;
	outline: 0;
	height: 25px;
	width: 275px;
	padding-left: 10px;
	padding-right: 10px;
}
</style>



</head>
<body id="top">
	<div class="wrapper">
		<div id="header">
			<div id="logo">
				<h1>
					<a href="index.html">CLOUDCART</a>
				</h1>

			</div>
			<div id="topnav">
                 <c:choose>
					<c:when test="${empty loggedinuser.firstname }">
						<ul>
							<li><a href="index">Home</a></li>
							<li><a href="Whoarewe.html">Who are we?</a></li>
							<li><a href="Register">Register</a></li>
							<li><a href="Signin">Sign In</a></li>
							<li class="last"><a href="index">Contact Us</a></li>
						</ul>
					</c:when>
					<c:otherwise>
						<ul>
							<li><a href="index">Home</a></li>
							<li><a href="ProjectDetails">Project</a></li>
							<li class="active"><a href="cart">View Cart</a></li>
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

			<form method="post">
			
			<table border="1" style="width:100%">
				
					<tr>
						<th>Items</th>
						<th>Quantity</th>
						<th>Price</th>
					</tr>

					<c:forEach var="item" items="${cart.contents}">
						<tr>
							<td><c:out value="${item.key.pname }" /></td>
							<td><c:out value="${item.value}" /></td>
							<td>$<c:out value="${item.key.price }" /></td>
						</tr>
					</c:forEach>

					<tr></tr>

					<tr>
						<td>Total</td>
						<td></td>
						<td><fmt:formatNumber value="${cart.totalcost}" 
                         type="currency"/></td>
					</tr>


				</table>

				<input type="submit" value="Check Out" name="CheckOut"
					class="mybutton" style="height: 25px; width: 80px">
			</form>



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
						<input type="text" value="Enter Email Here&hellip;"
							onfocus="this.value=(this.value=='Enter Email Here&hellip;')? '' : this.value ;" />
						<input type="submit" name="news_go" id="news_go" value="GO" />
					</fieldset>
				</form>
				<p>
					To unsubscribe please <a href="#">click here &raquo;</a>
				</p>
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
			<p class="fl_left">
				
			</p>
			<p class="fl_right">
				
			</p>
			<br class="clear" />
		</div>
	</div>
</body>
</html>