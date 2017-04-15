<%-- 
    Document   : 1410991019
    Created on : Mar 29, 2017, 10:12:04 PM
    Author     : ABHINAV GUPTA
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
	 <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
	 	<meta http-equiv="X-UA-Compatible" content="IE=edge">
 <style type="text/css">
        .carousel-inner {
  position: relative;
  width: 100%;
  min-height: 300px;
  left:-350px;
  }
 
 .carousel-control.right {
  
  left:0;
  right:-750px;
  background-image: none !important;
  background-repeat: repeat-x;
}
 .carousel-control.left {
  right: 0;
  left: -350px;
  background-image: none !important;
  background-repeat: repeat-x;
}
#carousel-example-generic {
    margin: 20px auto;
    width: 100%;

	}

#carousel-custom {
    margin: 20px auto;
    width: 400px;
}
#carousel-custom .carousel-indicators {
    margin: 20px 0 0;
    overflow: auto;
    position: relative;
    text-align: left;
    white-space: nowrap;
    width: 100%;
    overflow:hidden;
	left:-345px;

	}
#carousel-custom .carousel-indicators li {
    background-color: transparent;
    -webkit-border-radius: 0;
    border-radius: 0;
    display: inline-block;
    height: auto;
    margin: 0 !important;
    width: auto;
	
}
#carousel-custom .carousel-indicators li img {
    display: block;
    opacity: 0.5;
}
#carousel-custom .carousel-indicators li.active img {
    opacity: 1;
}
#carousel-custom .carousel-indicators li:hover img {
    opacity: 0.55;
}
#carousel-custom .carousel-outer {
    position: relative;
left:0px;
	}
.carousel-indicators li img {
  height: 66px;
  width: 52px;
 
  }
    </style>

	

	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Blueprint: Filterable Product Grid</title>
	<meta name="description" content="Blueprint: A responsive product grid layout with touch-friendly Flickity galleries and Isotope-powered filter functionality." />
	<meta name="keywords" content="blueprint, template, layout, grid, responsive, products, store, filter, isotope, flickity" />
	<meta name="author" content="Codrops" />
	<link rel="shortcut icon" href="favicon.ico">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<!-- Pixel Fabric clothes icons -->
	<link rel="stylesheet" type="text/css" href="fonts/pixelfabric-clothes/style.css" />
	<!-- General demo styles & header -->
	<link rel="stylesheet" type="text/css" href="css/demo.css" />
	 <!-- Flickity gallery styles -->
	<link rel="stylesheet" type="text/css" href="css/flickity.css" />
	<!-- Component styles -->
	<link rel="stylesheet" type="text/css" href="css/component.css" />
	<script src="js/modernizr.custom.js"></script>
	 <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	
	  <style>
/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 116px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    position: relative;
    background-color: #fefefe;
    margin: auto;
    padding: 0;
    border: 1px solid #888;
    width: 100%;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
    -webkit-animation-name: animatetop;
    -webkit-animation-duration: 0.4s;
    animation-name: animatetop;
    animation-duration: 0.4s
}

/* Add Animation */
@-webkit-keyframes animatetop {
    from {top:-300px; opacity:0} 
    to {top:0; opacity:1}
}

@keyframes animatetop {
    from {top:-300px; opacity:0}
    to {top:0; opacity:1}
}

/* The Close Button */
.close {
    color: white;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}

.modal-header {
    padding: 12px 16px;
    background-color: #5cb85c;
    color: white;
	width:100%
	
}

.modal-body {padding: 2px 16px;}

.modal-footer {
    padding: 2px 16px;
    background-color: #5cb85c;
    color: white;
	left:-50px;
}
</style>
 <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>