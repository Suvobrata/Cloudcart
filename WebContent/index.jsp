<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session ="true" %>
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
	font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
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
       <c:choose>
            <c:when test="${empty loggedinuser.firstname }">
      <ul>
        <li><a href="index">Home</a></li>
        <li><a href="Whoarewe.html">Who are we?</a></li>
        <li><a href="Register">Register</a></li>
        <li><a href="Signin">Sign In</a></li>
        <li class="last"><a href="Contact.html">Contact Us</a></li>
      </ul>
            </c:when>
            <c:otherwise>
         <ul>
        <li><a href="index">Home</a></li>
        <li><a href="Whoarewe.html">Who are we?</a></li>
        <li><a href="Checkout">Checkout</a></li>
        <li><a href="logout">Sign Out</a></li> 
        <li class="last"><a href="Contact.html">Contact Us</a></li>
      </ul>   
         
            </c:otherwise>
        </c:choose>
       
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper">
  <div id="latest">
    <div class="fl_left">
		<img alt="" height="300" src="images/demo/homepic.jpg" width="575" /></div>
    <div class="fl_right">
      <h2 class="auto-style2">About Cloudcart...</h2>
      <p>Cursuspenatisaccum ut curabitur nulla tellus tor ames a in curabitur pede. Idet mollisi eros dis orci congue elis et curabitur consequam intesque. Cursuspenatisaccum ut curabitur nulla tellus tor.</p>
      <ul>
          <li>
		  <img alt="" height="100" src="images/demo/pic1.jpg" width="100" /></li>
          <li><img alt="" height="100" src="images/demo/pic2.jpg" width="100" /></li>
          <li>
		  <img alt="" height="100" src="images/demo/pic3.jpg" width="100" /></li>
      </ul>
     
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper">
  <div id="intro">
    <ul>
      <li>
        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style4">
		<a href ="Laptops">Laptops.Computer.Tabs.</a></span><span class="auto-style3">&nbsp;</span></h2>
        <div class="imgholder">
			<img alt="" height="150" src="images/demo/pic4.jpg" width="300" /></div>
        <p>Morbitincidunt maurisque eros molest nunc anteget sed vel lacus mus semper. Anter dumnullam interdum eros dui urna consequam ac nisl nullam ligula vestassa. </p>
        <p>Condimentumfelis et amet tellent quisquet a leo lacus nec augue accumsan. Sagittislaorem dolor ipsum at urna et pharetium malesuada nis consectus odio.</p>
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </li>
      <li>
        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span class="auto-style5"><a href ="Mobilelistdisplay.html">Mobiles.</a>&nbsp;</span></h2>
        <div class="imgholder">
			<img alt="" height="150" src="images/demo/mobilepic.jpg" width="300" /></div>
        <p>Morbitincidunt maurisque eros molest nunc anteget sed vel lacus mus semper. Anter dumnullam interdum eros dui urna consequam ac nisl nullam ligula vestassa. </p>
        <p>Condimentumfelis et amet tellent quisquet a leo lacus nec augue accumsan. Sagittislaorem dolor ipsum at urna et pharetium malesuada nis consectus odio.</p>
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </li>
      <li class="last">
        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span class="auto-style5"><a href="Speakerlistdisplay.html">Speakers.</a>&nbsp;</span></h2>
        <div class="imgholder">
			<img alt="" height="150" src="images/demo/speakers.jpg" width="300" /></div>
        <p>Morbitincidunt maurisque eros molest nunc anteget sed vel lacus mus semper. Anter dumnullam interdum eros dui urna consequam ac nisl nullam ligula vestassa. </p>
        <p>Condimentumfelis et amet tellent quisquet a leo lacus nec augue accumsan. Sagittislaorem dolor ipsum at urna et pharetium malesuada nis consectus odio.</p>
        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
      </li>
    </ul>
    <br class="clear" />
  </div>
</div>
<div class="wrapper">
  <div id="container">
    <div id="content">
      <h2>About This Free CSS Template</h2>
      <p>This is a W3C standards compliant free website template from <a href="http://www.os-templates.com/">OS Templates</a>.</p>
      <p>This template is distributed using a <a href="http://www.os-templates.com/template-terms">Website Template Licence</a>, which allows you to use and modify the template for both personal and commercial use when you keep the provided credit links in the footer.</p>
      <p>For more CSS templates visit <a href="http://www.os-templates.com/">Free Website Templates</a>.</p>
    </div>
    <div id="column">
      <div class="holder">
        <h2>Nullamlacus loborttis</h2>
        <ul id="latestnews">
          <li class="last"><img class="imgl" src="images/demo/80x80.gif" alt="" />
            <p><strong>Indonectetus facilis leo nibh.</strong></p>
            <p>Nullamlacus dui ipsum cons eque loborttis non euis que morbi penas dapibulum orna.</p>
            <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
          </li>
        </ul>
      </div>
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper">
  <div id="footer">
    <div id="newsletter">
      <h2>Stay In The Know !</h2>
      <p>Please enter your email to join our mailing list</p>
      <form action="#" method="post">
        <fieldset>
          <legend>News Letter</legend>
          <input type="text" value="Enter Email Here&hellip;"  onfocus="this.value=(this.value=='Enter Email Here&hellip;')? '' : this.value ;" />
          <input type="submit" name="news_go" id="news_go" value="GO" />
        </fieldset>
      </form>
      <p>To unsubscribe please <a href="#">click here &raquo;</a></p>
    </div>
    <div class="footbox">
      <h2>Lacus interdum</h2>
      <ul>
        <li><a href="#">Praesent et eros</a></li>
        <li><a href="#">Praesent et eros</a></li>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li class="last"><a href="#">Praesent et eros</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>Lacus interdum</h2>
      <ul>
        <li><a href="#">Praesent et eros</a></li>
        <li><a href="#">Praesent et eros</a></li>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li class="last"><a href="#">Praesent et eros</a></li>
      </ul>
    </div>
    <div class="footbox">
      <h2>Lacus interdum</h2>
      <ul>
        <li><a href="#">Praesent et eros</a></li>
        <li><a href="#">Praesent et eros</a></li>
        <li><a href="#">Lorem ipsum dolor</a></li>
        <li><a href="#">Suspendisse in neque</a></li>
        <li class="last"><a href="#">Praesent et eros</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved - <a href="#">Domain Name</a></p>
    <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <br class="clear" />
  </div>
</div>
</body>
</html>