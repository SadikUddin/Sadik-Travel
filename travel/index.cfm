<!DOCTYPE html>
<html>
<head>
	<link type="text/css" rel="stylesheet" href="css/stylesheet.css" />
	<link rel="stylesheet" href="plugins/reveal/reveal.css">
		<!-- jQuery library using Google's CDN -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<!-- jQuery Library for "REVEAL" that it out-dated -->
		<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.6.min.js"></script> -->
		<!-- jQuery compabtibility migration for functions like .live -->
	<script src="http://code.jquery.com/jquery-migrate-1.2.1.js"></script>
	<script type="text/javascript" src="javascript/jquery.reveal.js"></script>
	<script type="text/javascript" src="javascript/jquery.jcarousel.js"></script>
		<!-- // <script type="text/javascript" src="javascript/jquery.jcarousel.min.js"></script> -->
	<script type="text/javascript" src="javascript/script.js"></script>
	<title>Sadik's Travels</title>
</head>
<body>
	<div id="page">
		<!-- <cfinclude template="header.cfm" /> -->
		<div id="header">
			<div id="site_title">
				<a href="/travel/">A <span id="NewYork">New Yorker's</span> Guide to <span id="traveling"> Traveling the World</span></a>
			</div>
			<div id="login">
				<div id="myModal" class="reveal-modal">
				     <h1>Log In Here</h1>
				     <div id="user_name">User Name:</div>
				     <div id="user_password">Password:</div>
				     <!-- <p>Any content could go in here.</p> -->
				     <a class="close-reveal-modal">&#215;</a>
				</div>
				<a id="logInButton" href="#" data-reveal-id="myModal">Log-In</a>
			</div>
			<div>
				<ul id="header_menu">
				 	<li><a href="/travel/">Home</a></li>
				  	<li><a href="tips.html">Tips for Travelers</a>
				  		<ul class="header_submenu">
				  			<li><a href="France.html">France</a>
				  				<ul class="header_subsubmenu">
				  					<li><a href="paris.html">Paris</a></li>
				  					<li><a href="Versailles">Versailles</a></li>
				  				</ul>
				  			</li>
				  			<li><a href="England.html">England</a>
				  				<ul class="header_subsubmenu">
				  					<li><a href="London.html">London</a></li>
				  				</ul>
				  			</li>
				  		</ul>
				  	</li>
				  	<li><a href="food.html">Food Ideas</a></li>
				  	<li><a href="expeditions.html">Expeditions</a></li>
				  	<li><a href="search">Search</a></li>
				</ul>
			</div>
		</div>
		<div id="primary_content">
			<cfparam name="url.page" default="home" />
			<cfinclude template="pages/#url.page#.cfm" />
		</div>
		<div id="home_body_background">
			<cfparam name="backgroundImage" default="images/nighttime_nyc.jpg" />
	    <cfoutput>
	    <img src="#backgroundImage#" id="home_body_background_stretch" alt="" />
	    </cfoutput>
	  </div>
		<div id="footer">
			<div id="footer_contact_information">
				<h3>Sadik Uddin</h3>
				<h3>Sadik@gmail.com</h3>
				<h3>555-555-5555</h3>
			</div>
			<div id="footer_menu">
				<ul>
				 	<li><a href="/travel/">Home</a></li>
				  	<li><a href="tips.html">Tips for Travelers</a></li>
				  	<li><a href="food.html">Food Ideas</a></li>
				  	<li><a href="/travel/?page=contact">Contact</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>
