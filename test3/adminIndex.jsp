<%-- 
    Document   : adminIndex
    Created on : Apr 14, 2017, 12:56:20 PM
    Author     : DELL
--%>
<%@include file="secure-admin.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>DEALHOUSE |  ADMIN</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <!--<link rel="stylesheet" href="/ecomm/css/bs-filestyle.css" type="text/css" />-->
    <style type="text/css">
        
body {
    background-color: #dedede;
}

.topbar {
	background: #2A3F54;
	border-color: #2A3F54;
	border-radius: 0px;
}

.topbar .navbar-header a {
	color: #ffffff;
}

.wrapper {
    padding-left: 0px;
    -webkit-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    transition: all 0.5s ease;
}

.sidebar {
    z-index: 1000;
    position: fixed;
    top: 50px;
    left: -50px;
    width: 50px;
    height: 100%;
    overflow-y: auto;
    background: #2A3F54;
	color: #ffffff;
	-webkit-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    transition: all 0.5s ease;
}

.main {
	width: 100%;
    position: relative;
    padding-bottom:20px;
}

.wrapper.toggled {
	padding-left: 50px;
}

.wrapper.toggled .sidebar {
	left: 0;
}

/* Sidebar Styles */

.sidebar-nav {
    position: absolute;
    top: 52px;
    width: 50px;
    margin: 0;
    padding: 0;
    list-style: none;
}
.sidebar-nav li {
    line-height: 40px;
}
.sidebar-nav li a {
    display: block;
    text-decoration: none;
    color: #e8e8e8;
    padding: 0;
    text-align:center;
}

.sidebar-nav li a:hover, .sidebar-nav li.active a {
    text-decoration: none;
    color: #fff;
    background: #fff;
    background: rgba(255,255,255,0.2);
}

.sidebar-nav li a:active,
.sidebar-nav li a:focus {
    text-decoration: none;
}

.sidebar-nav li span, .subbar li span {
	display : none;
}

nav.subbar {
	position: relative;
	width: 100%;
	border-radius: 0px;
	background: #fff;
	margin: 50px 0 -50px 0;
	padding: 10px 0 0 0;
	z-index: 2;
}
nav.subbar > ul.nav.nav-tabs {
	padding: 0 5px;
}

nav.subbar > ul.nav.nav-tabs > li.active > a {
    background: #dedede;
    border-top: 1px solid #a6a6a6;
    border-left: 1px solid #a6a6a6;
    border-right: 1px solid #a6a6a6;
    border-radius: 0px;
}

.content {
    margin-top: 70px;
    padding: 0 30px;
}

@media(min-width:768px){
	.subbar li span {
		display: inline;
	}
}

@media(min-width:992px) {
    .wrapper {
    	padding-left: 50px;
    }

    .sidebar {
    	left: 0;
    	width: 50px;
	}

	.wrapper.toggled {
		padding-left: 200px;
	}

	.wrapper.toggled .sidebar, .wrapper.toggled .sidebar-nav {
		width: 200px;
	}
	
	.wrapper.toggled .sidebar-nav li a {
		text-align: left;
		padding: 0 0 0 10px;
	}

	.wrapper.toggled .sidebar-nav li span {
		display: inline;
	}

}

.navbar-btn {
    background: none;
    border: none;
    height: 35px;
    min-width: 35px;
    color: #fff;
}
.navbar-text {
  margin-top: 14px;
  margin-bottom: 14px;
}
.mailsub {
 top: 120px;
}
@media (min-width: 768px) {
  .navbar-text {
    float: left;
    margin-left: 15px;
    margin-right: 15px;
  }
}



body {
    padding: 0;
    margin: 0;
}

html { -webkit-text-size-adjust:none; -ms-text-size-adjust: none;}
@media only screen and (max-device-width: 680px), only screen and (max-width: 680px) { 
    *[class="table_width_100"] {
		width: 96% !important;
	}
	*[class="border-right_mob"] {
		border-right: 1px solid #dddddd;
	}
	*[class="mob_100"] {
		width: 100% !important;
	}
	*[class="mob_center"] {
		text-align: center !important;
	}
	*[class="mob_center_bl"] {
		float: none !important;
		display: block !important;
		margin: 0px auto;
	}	
	.iage_footer a {
		text-decoration: none;
		color: #929ca8;
	}
	img.mob_display_none {
		width: 0px !important;
		height: 0px !important;
		display: none !important;
	}
	img.mob_width_50 {
		width: 40% !important;
		height: auto !important;
	}
}
.table_width_100 {
	width: 680px;
}


   #formdiv {
  text-align: center;
}
#file {
  color: green;
  padding: 5px;
  border: 1px dashed #123456;
  background-color: #f9ffe5;
}
#img {
  width: 17px;
  border: none;
  height: 17px;
  margin-left: -20px;
  margin-bottom: 191px;
}
.upload {
  width: 100%;
  height: 30px;
}
.previewBox {
  text-align: center;
  position: relative;
  width: 150px;
  height: 150px;
  margin-right: 10px;
  margin-bottom: 20px;
  float: left;
}
.previewBox img {
  height: 150px;
  width: 150px;
  padding: 5px;
  border: 1px solid rgb(232, 222, 189);
}
.delete {
  color: red;
  font-weight: bold;
  position: absolute;
  top: 0;
  cursor: pointer;
  width: 20px;
  height:  20px;
  border-radius: 50%;
  background: #ccc;
}
</style>



    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<link href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css" rel="stylesheet" media="screen">

    <nav class="navbar navbar-default navbar-fixed-top topbar">
		<div class="container-fluid">

			<div class="navbar-header">

				<a href="#" class="navbar-brand">
					<span class="visible-xs"><%=loginMail%></span>
					<span class="hidden-xs"><%=loginMail%></span>
				</a>

				<p class="navbar-text">
					<a href="#" class="sidebar-toggle">
                        <i class="fa fa-bars"></i>
                    </a>
				</p>

			</div>

			<div class="navbar-collapse collapse" id="navbar-collapse-main">

				<ul class="nav navbar-nav navbar-right">
                    
                    <li>
                        <button class="navbar-btn">
                            <i class="fa fa-bell"></i>
                        </button>
                    </li>
                    
					<li class="dropdown">
						<button class="navbar-btn" data-toggle="dropdown">
                                                    <img src="http://lorempixel.com/30/30/people" height="30px" width="30px" class="img-circle">
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">Account</a></li>
							<li><a href="#">Dashboard</a></li>
							<li class="nav-divider"></li>
							<li><a href="logout">Logout</a></li>
						</ul>
					</li>

				</ul>

			</div>
		</div>
	</nav>
	
	<article class="wrapper">
	    
	    <aside class="sidebar">
	        <ul class="sidebar-nav">
			    <li class="active"><a href="#dashboard" data-toggle="tab"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
			    <li><a href="#configuration" data-toggle="tab"><i class="fa fa-cogs"></i> <span>Configuration</span></a></li>
			    <li><a href="#users" data-toggle="tab"><i class="fa fa-users"></i> <span>Users</span></a></li>
			    <li><a href="#mail" data-toggle="tab"><i class="fa fa-envelope"></i> <span>Mail</span></a></li>
		    </ul>
	    </aside>
	    
	    <section class="main">
	        
	        <section class="tab-content">
	            
	           <section class="tab-pane active fade in content" id="dashboard">
                       <form action="/ecomm/admin/process" method="post">
	                <div class="row">
	                 
                   
                               
	                   
			<div class="col-xs-12 col-sm-12">
	                       <div class="panel panel-default">
	                           <div class="panel-heading">
	                               Product Title
	                           </div>
	                           <input type="text" name="title" id="title" maxlength="40" class="panel-body" style="width: 100%;">
	                       </div>
	                   </div>

	                   
                            <div class="col-xs-12 col-sm-12" ><br/><br></div>
	                   <div class="col-xs-12 col-sm-9">
	                       <div class="panel panel-default">
	                           <div class="panel-heading">
	                               Description
	                           </div>
	                           <input type="text" name="description" id="description" maxlength="180" class="panel-body" style="width: 100%; height:200px">
	                       </div>
	                   </div>
	                   
	                   <div class="col-xs-12 col-sm-3">
	                       <div class="panel panel-default">
	                           <div class="panel-heading">
	                              Tags
	                           </div>
	                           <div class="panel-body">
	                            <input type="text" name="tags" id="tags" maxlength="35" class="panel-body" style="width: 100%; height:80px"> 
	                           </div>
	                       </div>
	                       
	                       <div class="panel panel-default">
	                              <div class="panel-heading">
	                              MRP of product
	                           </div>
	                           <div class="panel-body">
	                              
	                               <input type="text" name="mrp" id="mrp" maxlength="10" class="panel-body" style="width: 100%; height:80px"> 
	                           </div>
	                       </div>
	                        <div class="panel panel-default">
	                              <div class="panel-heading">
	                             Discounted Price
	                           </div>
	                           <div class="panel-body">
	                              
                                       <input type="text" name="price" id="price" maxlength="10" class="panel-body" style="width: 100%;"> 
	                           </div>
	                       </div>
	                        <div class="panel panel-default">
	                              <div class="panel-heading">
	                             No of items Available
	                           </div>
	                           <div class="panel-body">
	                              
                                       <input type="text" name="item" id="item" maxlength="10" class="panel-body" style="width: 100%; "> 
	                           </div>
	                       </div>
                              <div class ="nav nav-tabs">
	                        <!--a href="#roles" data-toggle="tab" style="align-items: center;"> <span>ADD THIS PRODUCT </span></a-->
                                <input type="submit" class="btn btn-info btn-lg" style="width: 100%;align-items: center;" value="ADD THIS PRODUCT" />
                              </div>
	                   </div>
	                   
	               </div>
                       </form>
	           </section>
	           
	           <section class="tab-pane fade" id="configuration">
	               <nav class="subbar">
			            <ul class="nav nav-tabs">
				            <li class="active"><a href="#access" data-toggle="tab"><i class="fa fa-code"></i> <span>System</span></a></li>
				            <li><a href="#roles" data-toggle="tab"><i class="fa fa-user"></i> <span>Buyers</span></a></li>
			            </ul>
		            </nav>
		            
		            <section class="tab-content content">
		                
		                <section class="tab-pane active fade in" id="access">
		                    
                            <div class="row">
                                <div class="col-xs-12">
	                                <div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        All products info
	                                    </div>
	                                    <div class="panel-body">
	                                        <br/><br/>
                                                <table class="table table-stripped table-hover table-bordered">
                                                    <thead>
      <tr>
        <th>Item Title</th>
        <th>Item description</th>
        <th>MRP</th>
        <th>Discounted Price</th>
        <th>Picture</th>
        <th>Category</th>
        <th>Item Quantity</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
        <%
        try{
            %><%@include file="dbConnection.jsp" %>
            <%PreparedStatement smt = (PreparedStatement) con.prepareStatement("select * from adminproduct where owner=?");
            smt.setString(1,session.getAttribute("adminemail").toString());
            ResultSet rs=smt.executeQuery();
            
            while(rs.next()){
                String pic = rs.getString("picture1");
                out.println("<form method='get' action='update'><tr>");
                out.println("<input type='hidden' name='id' value='"+rs.getString("id")+"' />");
                out.println("<td><input type='text' name='title' disabled value='"+rs.getString("title")+ "'/> </td>");
                out.println("<td>"+rs.getString("description")+"</td>");
                out.println("<td>"+rs.getString("mrp")+ "</td>");
                out.println("<td>"+rs.getString("price")+"</td>");
                out.println("<td><img height='100px' width='100px' src='"+pic+ "' /></td>");
                out.println("<td>"+rs.getString("category")+"</td>");
                out.println("<td><input type='number' name='qty' id='qty' value='" +rs.getString("itemqty")+"' /></td>");
                out.println("<td><input type='submit' class='btn btn-info' value='update' /></td>");
                out.println("</tr></form>");
            }
//else{
//                response.sendRedirect("/ecomm/admin/login");
//            }
        }catch(Exception e){
out.println(e);                
//response.sendRedirect("/ecomm/admin/login");
        }
        %>
    </tbody> 
                                                </table>
                                                
                                                <br/><br/>
	                                    </div>
	                                </div>
	                            </div>
	                            
	                            <div class="col-xs-12 col-sm-12">
	                                <div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        Trendy
	                                    </div>
	                                    <div class="panel-body">
	                                        <br/><br/>
                                                <table class="table table-stripped table-hover table-bordered">
                                                    <thead>
      <tr>
        <th>Item Title</th>
        <th>Item description</th>
        <th>MRP</th>
        <th>Discounted Price</th>
        <th>Picture</th>
        <th>Category</th>
        <th>Item Quantity</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
        <%
        try{
            %><%@include file="dbConnection.jsp" %>
            <%PreparedStatement smt = (PreparedStatement) con.prepareStatement("select * from adminproduct where owner=? and buyed > 0 Limit 3");
            smt.setString(1,session.getAttribute("adminemail").toString());
            ResultSet rs=smt.executeQuery();
            
            while(rs.next()){
                String pic = rs.getString("picture1");
                out.println("<form method='get' action='update'><tr>");
                out.println("<input type='hidden' name='id' value='"+rs.getString("id")+"' />");
                out.println("<td><input type='text' name='title' disabled value='"+rs.getString("title")+ "'/> </td>");
                out.println("<td>"+rs.getString("description")+"</td>");
                out.println("<td>"+rs.getString("mrp")+ "</td>");
                out.println("<td>"+rs.getString("price")+"</td>");
                out.println("<td><img height='100px' width='100px' src='"+pic+ "' /></td>");
                out.println("<td>"+rs.getString("category")+"</td>");
                out.println("<td><input type='number' name='qty' id='qty' value='" +rs.getString("itemqty")+"' /></td>");
                out.println("<td><input type='submit' class='btn btn-info' value='update' /></td>");
                out.println("</tr></form>");
            }
//else{
//                response.sendRedirect("/ecomm/admin/login");
//            }
        }catch(Exception e){
out.println(e);                
//response.sendRedirect("/ecomm/admin/login");
        }
        %>
    </tbody> 
                                                </table>
                                                <br/><br/>
	                                    </div>
	                                </div>
	                            </div>
	                            
	                            <div class="col-xs-12 col-sm-12">
	                                <div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        Not Buyed
	                                    </div>
	                                    <div class="panel-body">
	                                        <br/><br/>
                                                
                                                <table class="table table-stripped table-hover table-bordered">
                                                    <thead>
      <tr>
        <th>Item Title</th>
        <th>Item description</th>
        <th>MRP</th>
        <th>Discounted Price</th>
        <th>Picture</th>
        <th>Category</th>
        <th>Item Quantity</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
        <%
        try{
            %><%@include file="dbConnection.jsp" %>
            <%PreparedStatement smt = (PreparedStatement) con.prepareStatement("select * from adminproduct where owner=? and buyed = 0 Limit 3");
            smt.setString(1,session.getAttribute("adminemail").toString());
            ResultSet rs=smt.executeQuery();
            
            while(rs.next()){
                String pic = rs.getString("picture1");
                out.println("<form method='get' action='update'><tr>");
                out.println("<input type='hidden' name='id' value='"+rs.getString("id")+"' />");
                out.println("<td><input type='text' name='title' disabled value='"+rs.getString("title")+ "'/> </td>");
                out.println("<td>"+rs.getString("description")+"</td>");
                out.println("<td>"+rs.getString("mrp")+ "</td>");
                out.println("<td>"+rs.getString("price")+"</td>");
                out.println("<td><img height='100px' width='100px' src='"+pic+ "' /></td>");
                out.println("<td>"+rs.getString("category")+"</td>");
                out.println("<td><input type='number' name='qty' id='qty' value='" +rs.getString("itemqty")+"' /></td>");
                out.println("<td><input type='submit' class='btn btn-info' value='update' /></td>");
                out.println("</tr></form>");
            }
//else{
//                response.sendRedirect("/ecomm/admin/login");
//            }
        }catch(Exception e){
out.println(e);                
//response.sendRedirect("/ecomm/admin/login");
        }
        %>
    </tbody> 
                                                </table>
                                                
                                                <br/><br/>
	                                    </div>
	                                </div>
	                            </div>
	                            
	                            <div class="col-xs-12 col-sm-12">
	                                <div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        Out of Stock
	                                    </div>
	                                    <div class="panel-body">
	                                        <br/><br/>
                                                
                                                <table class="table table-stripped table-hover table-bordered">
                                                    <thead>
      <tr>
        <th>Item Title</th>
        <th>Item description</th>
        <th>MRP</th>
        <th>Discounted Price</th>
        <th>Picture</th>
        <th>Category</th>
        <th>Item Quantity</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
        <%
        try{
            %><%@include file="dbConnection.jsp" %>
            <%PreparedStatement smt = (PreparedStatement) con.prepareStatement("select * from adminproduct where owner=? and itemqty=0 Limit 3");
            smt.setString(1,session.getAttribute("adminemail").toString());
            ResultSet rs=smt.executeQuery();
            
            while(rs.next()){
                String pic = rs.getString("picture1");
                out.println("<form method='get' action='update'><tr>");
                out.println("<input type='hidden' name='id' value='"+rs.getString("id")+"' />");
                out.println("<td><input type='text' name='title' disabled value='"+rs.getString("title")+ "'/> </td>");
                out.println("<td>"+rs.getString("description")+"</td>");
                out.println("<td>"+rs.getString("mrp")+ "</td>");
                out.println("<td>"+rs.getString("price")+"</td>");
                out.println("<td><img height='100px' width='100px' src='"+pic+ "' /></td>");
                out.println("<td>"+rs.getString("category")+"</td>");
                out.println("<td><input type='number' name='qty' id='qty' value='" +rs.getString("itemqty")+"' /></td>");
                out.println("<td><input type='submit' class='btn btn-info' value='update' /></td>");
                out.println("</tr></form>");
            }
//else{
//                response.sendRedirect("/ecomm/admin/login");
//            }
        }catch(Exception e){
out.println(e);                
//response.sendRedirect("/ecomm/admin/login");
        }
        %>
    </tbody> 
                                                </table>
                                                
                                                <br/><br/>
	                                    </div>
	                                </div>
	                            </div>
                            </div>
		                    
		                </section>
		                
		                <section class="tab-pane fade" id="roles">
		                    
		                    <div class="row">
                                <div class="col-xs-12 col-sm-8 col-md-9">
	                                <div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        Important emails
	                                    </div>
	                                    <div class="panel-body">
	                                        <br/><br/>
                                                
                                                <table class="table table-stripped table-hover table-bordered">
                                                    <thead>
      <tr>
          <th>Email #</th> 
        <th>Subject</th>
        <th>Username</th>
        <th>Data</th>
        <th>Reply</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
        <%
        try{
            %><%@include file="dbConnection.jsp" %>
            <%PreparedStatement smt = (PreparedStatement) con.prepareStatement("select * from emails where to2=? and important=1 order by date desc");
            smt.setString(1,session.getAttribute("adminemail").toString());
            ResultSet rs=smt.executeQuery();
            
            while(rs.next()){
//                out.println("<input type='hidden' name='id' value='"+rs.getString("o")+"' />");
                out.println("<form method='get' action='/ecomm/delieveryupdater.jsp'><tr>");
                out.println("<input type='text' disabled name='id' value='"+rs.getString("id")+"' />");
                out.println("<td>"+rs.getString("subject")+ "</td>");
                out.println("<td>"+rs.getString("from2")+"</td>");
                out.println("<td>"+rs.getString("data")+"</td>");
                
                out.println("<td><input type='text' name='reply' placeholder='YourReplyMessage'/> </td>");
                
                out.println("<td><input type='submit' class='btn btn-info' value='Reply' /></td>");
                out.println("</tr></form>");
            }
//else{
//                response.sendRedirect("/ecomm/admin/login");
//            }
        }catch(Exception e){
out.println(e);                
//response.sendRedirect("/ecomm/admin/login");
        }
        %>
    </tbody> 
                                                </table>
                                                
                                                <br/><br/>
	                                    </div>
	                                </div>
	                            </div>
	                            
	                            <div class="hidden-xs col-sm-4 col-md-3">
	                                <div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        Picture1
	                                    </div>
	                                    <div class="panel-body">
	                                        <br/>
                                                <br/>
                                                <%
        try{
            %><%@include file="dbConnection.jsp" %>
            <%PreparedStatement smt = (PreparedStatement) con.prepareStatement("select * from adminproduct where owner=? limit 1");
            smt.setString(1,session.getAttribute("adminemail").toString());
            ResultSet rs=smt.executeQuery();
            
            if(rs.next()){
//                out.println("<input type='hidden' name='id' value='"+rs.getString("o")+"' />");
                out.println("<td><img height='80px' width='60px'src='"+rs.getString("picture1")+"'/> </td>");
            }
//else{
//                response.sendRedirect("/ecomm/admin/login");
//            }
        }catch(Exception e){
out.println(e);                
//response.sendRedirect("/ecomm/admin/login");
        }
        %>
                                                <br/>
                                                <br/>
	                                    </div>
	                                </div>
	                                
	                                <div class="panel panel-default">
	                                    <div class="panel-heading">
	                                        Picture2
	                                    </div>
	                                    <div class="panel-body">
	                                        <br/>
                                                <br/>
                                                <%
        try{
            %><%@include file="dbConnection.jsp" %>
            <%PreparedStatement smt = (PreparedStatement) con.prepareStatement("select * from adminproduct where owner=? limit 1");
            smt.setString(1,session.getAttribute("adminemail").toString());
            ResultSet rs=smt.executeQuery();
            
            if(rs.next()){
//                out.println("<input type='hidden' name='id' value='"+rs.getString("o")+"' />");
                out.println("<td><img height='80px' width='60px' src='"+rs.getString("picture2")+"'/> </td>");
            }
//else{
//                response.sendRedirect("/ecomm/admin/login");
//            }
        }catch(Exception e){
out.println(e);                
//response.sendRedirect("/ecomm/admin/login");
        }
        %>
                                                <br/>
                                                <br/>
	                                    </div>
	                                </div>
	                            </div>
	                       </div>
		                </section>
		                
		            </section>
		            
	           </section>
	           
	           <section class="tab-pane fade" id="users">
	               
	           			        <div class="row">
                                <div class="col-xs-12">
	                                <div class="panel panel-default">
	                                    
	                                    <div class="panel-body">
	                                       <br/>
	                                    </div>
	                                </div>
	                            </div>
	                             <div class="row">
                                         <div class="col-xs-1"></div>
                                <div class="col-xs-10">
	                                <div class="panel panel-default">
	                                    <div class="panel-heading">
	                                       Recent Buyers
	                                    </div>
	                                    <div class="panel-body">
	                                        <br/><br/>
                                                
                                                <table class="table table-stripped table-hover table-bordered">
                                                    <thead>
      <tr>
          <th>Item #</th> 
        <th>Item Title</th>
        <th>Username</th>
        <th>Qty Buyed</th>
        <th>Delievery Address</th>
        <th>Date</th>
        <th>time</th>
        <th>Progress</th>
        <th>Payment Method</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
        <%
        try{
            %><%@include file="dbConnection.jsp" %>
            <%PreparedStatement smt = (PreparedStatement) con.prepareStatement("select * from customerbuyed where owner=? order by date desc");
            smt.setString(1,session.getAttribute("adminemail").toString());
            ResultSet rs=smt.executeQuery();
            
            while(rs.next()){
//                out.println("<input type='hidden' name='id' value='"+rs.getString("o")+"' />");
                out.println("<form method='get' action='/ecomm/delieveryupdater.jsp'><tr>");
                out.println("<input type='text' disabled name='id' value='"+rs.getString("id")+"' />");
                out.println("<td><input type='text' name='title' disabled value='"+rs.getString("title")+ "'/> </td>");
                out.println("<td><input type='text' name='user' disabled  value='"+rs.getString("user")+"'/> </td>");
                out.println("<td>"+rs.getString("buyed")+ "</td>");
                out.println("<td>"+rs.getString("delieveryAddress")+"</td>");
                out.println("<td>"+rs.getString("date")+"</td>");
                out.println("<td>"+rs.getString("time")+"</td>");
                out.println("<td><input type='text' name='progress' value='"+rs.getString("progress")+"'/> </td>");
                out.println("<td>"+rs.getString("paymentMethod")+"</td>");
                out.println("<td><input type='submit' class='btn btn-info' value='update' /></td>");
                out.println("</tr></form>");
            }
//else{
//                response.sendRedirect("/ecomm/admin/login");
//            }
        }catch(Exception e){
out.println(e);                
//response.sendRedirect("/ecomm/admin/login");
        }
        %>
    </tbody> 
                                                </table>
                                                
                                                <br/><br/>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-xs-1"></div>
	                            
	                           
	                            
                            </div>


	           </section>
	           
	           <section class="tab-pane fade" id="mail">



 


<div id="mailsub" class="notification mailsub" align="center">
  
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="min-width: 320px; margin-top: 130px;"><tr><td align="center" bgcolor="#eff3f8">




<table border="0" cellspacing="0" cellpadding="0" class="table_width_100" width="100%" style="max-width: 680px; min-width: 300px;">
    <tr><td>
	<h1>E-Mail</h1>
	</td></tr>
	
	<tr><td align="center" bgcolor="#ffffff">
                
		<table width="90%" border="0" cellspacing="0" cellpadding="0">
			<%
        try{
            %><%@include file="dbConnection.jsp" %>
            <%PreparedStatement smt = (PreparedStatement) con.prepareStatement("select * from emails where to2=? and important=0 order by date desc");
            smt.setString(1,session.getAttribute("adminemail").toString());
            ResultSet rs=smt.executeQuery();
            
            while(rs.next()){
                
                out.println("<form method='get' action='/ecomm/important.jsp'><tr>");
            out.println("<input type='hidden' name='id' value='"+rs.getString("id")+"' />");    
            %>
                <tr>
                        <td align="center">
                            <a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; float:left; width:100%; padding:20px;text-align:center; font-size: 13px;">
                            <font face="Arial, Helvetica, sans-seri; font-size: 13px;" size="3" color="#596167">
                            <!--<img src="http://talmanagency.com/wp-content/uploads/2014/12/cropped-logo-new.png" width="250" alt="Metronic" border="0"  />-->
                            <%=rs.getString("subject")%>
                            </font>
                            </a>
			</td>
                        <td align="right">
                            
                        </td>
                    </tr>
                    <tr><td>
			 <p> <%=rs.getString("data")%></p>
                    </td></tr>
                    <tr><td align="center">
				<div style="line-height: 24px;">
					<!--<a href="#" target="_blank" class="btn btn-danger block-center">-->
		<input type="submit" class="btn btn-danger block-center" value="save as importent" />
					
				</div>
				<!-- padding --><div style="height: 60px; line-height: 60px; font-size: 10px;"></div>
			</td></tr>
                <%
                out.println("</tr></form>");
            }
//else{
//                response.sendRedirect("/ecomm/admin/login");
//            }
        }catch(Exception e){
out.println(e);                
//response.sendRedirect("/ecomm/admin/login");
        }
        %>
                    
                    
<!--                    <tr>
                        <td align="center" bgcolor="#fbfcfd">
                            <font face="Arial, Helvetica, sans-serif" size="4" color="#57697e" style="font-size: 15px;">
                            <table width="90%" border="0" cellspacing="0" cellpadding="0">
			<tr><td>
			   <p> here comes the data</p>
			</td></tr>
			<tr><td align="center">
				<div style="line-height: 24px;">
					<a href="#" target="_blank" class="btn btn-danger block-center">
					   save as importent
					</a>
				</div>
				 padding <div style="height: 60px; line-height: 60px; font-size: 10px;"></div>
			</td></tr>

			<tr><td>
	
	</td></tr>
	
	<tr><td align="center" bgcolor="#ffffff">
		
		<table width="90%" border="0" cellspacing="0" cellpadding="0">
			<tr><td align="center">
			    		<a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; float:left; width:100%; padding:20px;text-align:center; font-size: 13px;">
									<font face="Arial, Helvetica, sans-seri; font-size: 13px;" size="3" color="#596167">
									<img src="http://talmanagency.com/wp-content/uploads/2014/12/cropped-logo-new.png" width="250" alt="Metronic" border="0"  /></font></a>
					</td>
					<td align="right">
			
	</td></tr>

	<tr><td align="center" bgcolor="#fbfcfd">
	    <font face="Arial, Helvetica, sans-serif" size="4" color="#57697e" style="font-size: 15px;">
		<table width="90%" border="0" cellspacing="0" cellpadding="0">
			<tr><td>
			   <p> here comes the data</p>
			</td></tr>
			<tr><td align="center">
				<div style="line-height: 24px;">
					<a href="#" target="_blank" class="btn btn-danger block-center">
					   save as importent
					</a>
				</div>
				 padding <div style="height: 60px; line-height: 60px; font-size: 10px;"></div>
			</td></tr>-->




		</table>
		</font>
	</td></tr>
	<!--content 1 END-->


	<!--footer -->
	<tr><td class="iage_footer" align="center" bgcolor="#ffffff">

		
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr><td align="center" style="padding:20px;flaot:left;width:100%; text-align:center;">
				<font face="Arial, Helvetica, sans-serif" size="3" color="#96a5b5" style="font-size: 13px;">
				<span style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">
					2017 © DEALHOUSE ALL Rights Reserved.
				</span></font>				
			</td></tr>			
		</table>
	</td></tr>
	<!--footer END-->
	<tr><td>

	</td></tr>
</table>
<!--[if gte mso 10]>
</td></tr>
</table>
<![endif]-->
 
</td></tr>
</table>











	               
	           </section>
	           
	        </section>
	        
	        
	                
	        
	    </section>
	    
	</article>
	  <!-- par 2 for uplaod script not working####
	  -->
          
<script type="text/javascript">

$(document).on("click",".sidebar-toggle",function(){
    $(".wrapper").toggleClass("toggled");
});
</script>
</body>
</html>
