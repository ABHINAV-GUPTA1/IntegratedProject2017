<%-- 
    Document   : process
    Created on : Apr 14, 2017, 7:45:59 PM
    Author     : DELL
--%>
<html>
    <head>
        
        <%
//Cookie title = new Cookie("title",request.getParameter("title"));
//Cookie description = new Cookie("description",request.getParameter("description"));
//Cookie tags = new Cookie("tags",request.getParameter("tags"));
//Cookie mrp = new Cookie("mrp",request.getParameter("mrp"));
//Cookie price = new Cookie("price",request.getParameter("price"));
//Cookie item = new Cookie("item",request.getParameter("item"));
//   // Set expiry date after 24 Hrs for both the cookies.
//title.setMaxAge(60*60*24); 
//description.setMaxAge(60*60*24); 
//tags.setMaxAge(60*60*24); 
//mrp.setMaxAge(60*60*24); 
//price.setMaxAge(60*60*24); 
//item.setMaxAge(60*60*24); 
//
//// Add both the cookies in the response header.
//   response.addCookie( title );
//   response.addCookie( description );
//   response.addCookie( tags );
//   response.addCookie( mrp );
//   response.addCookie( price );
//   response.addCookie( item );

session.setAttribute("admintitle", request.getParameter("title"));
session.setAttribute("admindescription", request.getParameter("description"));
session.setAttribute("admintags", request.getParameter("tags"));
session.setAttribute("adminmrp", request.getParameter("mrp"));
session.setAttribute("adminprice", request.getParameter("price"));
session.setAttribute("adminitem", request.getParameter("item"));
session.setAttribute("admincategory", "abc");
        %>
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/ecomm/css/bs-filestyle.css" type="text/css" />
       <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script> 
        
    </head>
    <body>
<form action="/ecomm/adminUpload" method="post" enctype="multipart/form-data" >
<div class="col-md-12" > 
<!--IMAGE--> 
<div class="col-md-3" >
    <label for="picture_1">Photo 1: <small>*</small></label>
<input accept="image/*" class="file-loading upload1" data-allowed-file-extensions='[]' type="file" id="picture_1" name="picture_1" />
<!--IMAGE-->
</div>

<div class="col-md-3" >
<label for="picture_2">Photo 2: <small>*</small></label>
    <input accept="image/*" class="file-loading upload1" data-allowed-file-extensions='[]' type="file" id="picture_2" name="picture_2" />
<!--IMAGE-->
</div>
<div class="col-md-3" >
<label for="picture_3">Photo 3: <small>*</small></label>
<input accept="image/*" class="file-loading upload1" data-allowed-file-extensions='[]' type="file" id="picture_3" name="picture_3" />
<!--IMAGE-->
</div>
<div class="col-md-3" >
<label for="picture_4">Photo 4: <small>*</small></label>
<input accept="image/*" class="file-loading upload1" data-allowed-file-extensions='[]' type="file" id="picture_4" name="picture_4" />
<!--IMAGE-->
</div>
</div>
    <div class="col-md-9"> <br/><br/></div>
    <div class="col-md-9"></div>
    <div class="col-md-3">
        
    <input type="submit" class="btn btn-info btn-lg" style="align-items: center;" value="ADD THIS PRODUCT" />
    </div>
</form>
        
        <script type="text/javascript" src="/ecomm/js/bs-filestyle.js"></script>
        <script type="text/javascript">

$(document).on("click",".sidebar-toggle",function(){
    $(".wrapper").toggleClass("toggled");
});
$(document).on('ready', function() {
			$("#upload").fileinput({
				mainClass: "input-group-md",
				showUpload: true,
				previewFileType: "image",
				browseClass: "btn btn-success",
				browseLabel: "Pick Image",
				browseIcon: "<i class=\"icon-picture\"></i> ",
				removeClass: "btn btn-danger",
				removeLabel: "Delete",
				removeIcon: "<i class=\"icon-trash\"></i> ",
				uploadClass: "btn btn-info",
				uploadLabel: "Upload",
				uploadIcon: "<i class=\"icon-upload\"></i> "
			});
            $(".upload1").fileinput({
				mainClass: "input-group-md",
				showUpload: true,
				previewFileType: "image",
				browseClass: "btn btn-success",
				browseLabel: "Pick Image",
				browseIcon: "<i class=\"icon-picture\"></i> ",
				removeClass: "btn btn-danger",
				removeLabel: "Delete",
				removeIcon: "<i class=\"icon-trash\"></i> ",
				uploadClass: "btn btn-info",
				uploadLabel: "Upload",
				uploadIcon: "<i class=\"icon-upload\"></i> "
			});
                        
		});
</script>
    </body>
</html>