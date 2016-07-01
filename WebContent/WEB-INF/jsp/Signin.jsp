<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloudcart | Sign In</title>
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
      <ul>
      
        <li><a href="index">Home</a></li>
        <li><a href="ProjectDetails">Project</a></li>
        <li><a href="Register">Register</a></li>
        <li class="active"><a href="Signin">Sign In</a></li>
        <li class="last"><a href="web">Web Service</a></li>
      </ul>
      
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper">
  <div id="breadcrumb">
    <ul>
     
      <li> <center><h3> ${loginError }</h3></center></li>
    </ul>
  </div>
</div>
<div class="wrapper">
  <div id="container">
 
   <form style="height: 182px" method="post">
        <center><h4><font size="6"> Username &nbsp <input type="text" name="uname" class ="textbox" ></font></h4></centre> </br>
        <center><h4><font size="6"> Password &nbsp <input type="password" name="password" class ="textbox" ></font></h4></center>
	    <center><h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="submit"  name = "submit" value="Sign In" class="mybutton" style="height:25px; width: 80px" ></h4>
		</center></br>
		
	<center><h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="Register">Forgot Password?</a></h4>
		</center></br>
    
    
        
    </form>
  <p>
  
  This is for demo purpose. Not for public commercial usage. Please Sign in!
  
  </p>
  </div>
</div>

</body>
</html>