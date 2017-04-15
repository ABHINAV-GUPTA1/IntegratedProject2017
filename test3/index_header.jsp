<%-- 
    Document   : index_header
    Created on : Apr 15, 2017, 10:10:46 AM
    Author     : DELL
--%>
<%
    String user="Guest";
    String addr1 = "/ecomm/index.jsp";
    String addr2 = "/ecomm/user/index";
    String cart = "0";
try {
    user = session.getAttribute("email").toString();
    cart=session.getAttribute("cart").toString();
} catch (Exception e) {
    user="Guest";
    
}


%>

<!DOCTYPE html>
<html lang="">
<head>
<title>DEALHOUSE </title>
<meta charset="utf-8">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="/ecomm/css/layout.css" rel="stylesheet" type="text/css" media="all">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!--<script type="text/javascript" src="/ecomm/js/jssor.slider.mini.js"></script>-->

 <link href="/ecomm/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/ecomm/css/full-slider.css" rel="stylesheet">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<!-- read the discryption at last and also remove unused scripts from the css and java folder -->

<link rel="stylesheet" href="/ecomm/css/normalize.css">
  <link rel="stylesheet" href="/ecomm/css/ideal-image-slider.css" >
  <!--<link rel="stylesheet" href="/ecomm/css/default.css">-->
  <style media="screen">
  #slider {
       margin:0 auto;
    width: 100%;
      }

#custom-search-input{
    padding: 3px;
    border: solid 1px #E4E4E4;
    border-radius: 6px;
    background-color: #fff;
}

#custom-search-input input{
    border: 0;
    box-shadow: none;
}

#custom-search-input button{
    margin: 2px 0 0 0;
    background: none;
    box-shadow: none;
    border: 0;
    color: #666666;
    padding: 0 8px 0 10px;
    border-left: solid 1px #ccc;
}

#custom-search-input button:hover{
    border: 0;
    box-shadow: none;
    border-left: solid 1px #ccc;
}

#custom-search-input .glyphicon-search{
    font-size: 23px;
}

</style>


<style type="text/css">
/* DEMO ONLY */
.container .demo{text-align:center;}
.container .demo div{padding:50px ;}
.container .demo div:nth-child(odd){color:#FFFFFF; background:#CCCCCC;}
.container .demo div:nth-child(even){color:#FFFFFF; background:#979797;}
@media screen and (max-width:900px){.container .demo div{margin-bottom:0;}}
/* DEMO ONLY */
</style>


<!--   <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>eCommerce Product Detail</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet"> -->
