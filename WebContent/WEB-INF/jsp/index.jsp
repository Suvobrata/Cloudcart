<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>Cloudcart | Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="css/layout.css" type="text/css" />
<style type="text/css">
.auto-style1 {
	font-size: smaller;
}

.auto-style2 {
	font-style: italic;
}

.auto-style3 {
	font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
	font-weight: bold;
	border-bottom: 1px dotted #4C4C4C;
	padding-bottom: 8px;
	background-color: #131313;
}

.auto-style4 {
	font-family: "Gill Sans MT";
	font-weight: bold;
	font-style: italic;
	border-bottom: 1px dotted #4C4C4C;
	padding-bottom: 8px;
	background-color: #131313;
}

.auto-style5 {
	font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS",
		sans-serif;
	font-style: italic;
	font-weight: bold;
	border-bottom: 1px dotted #4C4C4C;
	padding-bottom: 8px;
	background-color: #131313;
}
</style>

</head>
<body id="top">
	<div class="wrapper">
		<div id="header">
			<div id="logo" style="width: 264px">
				<h1 class="auto-style1">CLOUDCART</h1>
				<p>&nbsp;</p>
			</div>
			<div id="topnav">
				
						<ul>
							<li class="active"><a href="index">Home</a></li>
							<li><a href="ProjectDetails">Project</a></li>
							<li><a href="Register">Register</a></li>
							<li><a href="Signin">Sign In</a></li>
							<li class="last"><a href="web">Web Service</a></li>
						</ul>

						

					

			</div>
			<br class="clear" />
		</div>
	</div>
	<div class="wrapper">
		<div id="latest">
			<div class="fl_left">
				<img alt="" height="300" src="images/demo/homepic.jpg" width="575" />
			</div>
			<div class="fl_right">
				<h2 class="auto-style2">About Cloudcart...</h2>
				<p>This is a demo representation of J2EE application using Spring-Hibernate along with REST API's.
				The front end is designed using html,jsp,css and javascript.Hibernate 3.0
				is used to do ORM mapping with MySQL Database....
				
				
				</p>
				<ul>
					<li><img alt="" height="100" src="images/demo/pic1.jpg"
						width="100" /></li>
					<li><img alt="" height="100" src="images/demo/pic3.jpg"
						width="100" /></li>
				
				</ul>

			</div>
			<br class="clear" />
		</div>
	</div>
	<div class="wrapper">
		<div id="intro">
			<ul>
				<li>
					<h2>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span
							class="auto-style4"> <a href="Laptops">Laptops.Computer.Tabs.</a></span><span
							class="auto-style3">&nbsp;</span>
					</h2>
					<div class="imgholder">
						<img alt="" height="150" src="images/demo/pic4.jpg" width="300" />
					</div>
					<p>A computer is a general purpose device that can be programmed to carry out a set of arithmetic or logical operations automatically. Since a sequence of operations can be readily changed, the computer can solve more than one kind of problem.</p>
					<p class="readmore">
						<a href="#">Continue Reading &raquo;</a>
					</p>
				</li>
				<li>
					<h2>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<span class="auto-style5"><a href="Laptops">Mobiles.</a>&nbsp;</span>
					</h2>
					<div class="imgholder">
						<img alt="" height="150" src="images/demo/mobilepic.jpg"
							width="300" />
					</div>
					<p>A mobile phone is a telephone that can make and receive calls over a radio frequency carrier while the user is moving within a telephone service area. The radio frequency link establishes a connection to the switching systems of a mobile phone operator, which provides access to the public switched telephone network (PSTN). Most modern mobile telephone services use a cellular network architecture, and therefore mobile telephones are often also called cellular telephones or cell phones</p>
					
					<p class="readmore">
						<a href="#">Continue Reading &raquo;</a>
					</p>
				</li>
				<li class="last">
					<h2>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<span class="auto-style5"><a href="Laptops">Speakers.</a>&nbsp;</span>
					</h2>
					<div class="imgholder">
						<img alt="" height="150" src="images/demo/speakers.jpg"
							width="300" />
					</div>
					<p>A loudspeaker (or loud-speaker or speaker) is a device containing one or more electroacoustic transducers;[1] which convert an electrical audio signal into a corresponding sound.[2] The first primitive loudspeakers were invented during the development of telephone systems in the late 1800s, but electronic amplification by vacuum tube beginning around 1912 made loudspeakers truly practical. By the 1920s they were used in radios, phonographs, public address systems and theatre sound systems for talking motion pictures.</p>
					<p class="readmore">
						<a href="#">Continue Reading &raquo;</a>
					</p>
				</li>
			</ul>
			<br class="clear" />
		</div>
	</div>
	<div class="wrapper">
		<div id="container">
			<div id="content">
				<h2>About This Website</h2>
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
			
			<br class="clear" />
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
					<li class="last"><a href="#">Css</a></li>
				</ul>
			</div>
			<div class="footbox">
				<h2>Mid Tier</h2>
				<ul>
					<li><a href="#">Spring 4.0</a></li>
					<li><a href="#">MVC architecture</a></li>
					<li><a href="#">Annotation Driven</a></li>
					<li><a href="#">Spring-config.xml</a></li>
					<li class="last"><a href="#">Dispatcher Servlet</a></li>
				</ul>
			</div>
			<div class="footbox">
				<h2>Back end</h2>
				<ul>
					<li><a href="#">Hibernate 3.0</a></li>
					<li><a href="#">Annotation</a></li>
					<li><a href="#">SQL queries</a></li>
					<li><a href="#">ORM Mapping</a></li>
					<li class="last"><a href="#">MySQL Server</a></li>
				</ul>
			</div>
			<br class="clear" />
		</div>
	</div>
	<div class="wrapper">
		<div id="copyright">
			<p class="fl_left">
				</a>
			</p>
			<p class="fl_right">
				
			</p>
			<br class="clear" />
		</div>
	</div>
</body>
</html>