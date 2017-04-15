<%-- 
    Document   : index_header1
    Created on : Apr 15, 2017, 10:11:37 AM
    Author     : DELL
--%>

</head>
<body id="top">

<!-- iudhisdjds -->

<!-- jduashud -->

<div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
    <div class="fl_left">
      <ul>
        <li><%=user%></li>
        <li><a href="" >TRACK ITEMS</a></li>
      </ul>
    </div>
    <div class="fl_right">
      <ul>
        <li><a href="<%=user.equals("Guest") ? addr1 : addr2%>"><i class="fa fa-lg fa-home"></i></a></li>
        <li><a href="<%=user.equals("Guest") ? "/ecomm/user/login" : "/ecomm/user/logout"%>"><%=user.equals("Guest") ? "LOGIN" : "LOGOUT"%></a></li>  
         <!--  login and signup on same page  -->
        <li><a href="/ecomm/admin/login">DEALER LOGIN</a></li>
      </ul>
    </div>
  </div>
</div>
<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
    <div id="logo" class="fl_left">
      <h1><a href="<%=user.equals("Guest") ? "/ecomm/index.jsp" : "/ecomm/user/index"%>">DEALHOUSE</a></h1>
      <p>Be AWWesome.</p>
    
    </div>
  
        <div class="col-md-8">
            <div id="custom-search-input">
                <div class="input-group col-md-12">
                    <input type="text" class="form-control input-lg" placeholder="tell us waht you want " />
                    <span class="input-group-btn">
                        <button class="btn btn-info btn-lg" type="button">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                </div>
            </div>
        </div>


    <div id="quickinfo" class="fl_right">
      <ul class="nospace inline">
        <li><strong>CART:</strong><br>
         </li>
        <li><strong><button class="cart"> 
  <a href="/ecomm/user/cart">
          <span class="glyphicon glyphicon-shopping-cart"></span>
          <span class="cart__count"><%=cart%></span>
    </a>
    
    </button> </strong><br>
          </li>
      </ul>
    </div>
  </header>
  <div id="tcx"></div>
  <nav id="mainav" class="hoc clear" > 
    <ul class="clear">
      <li class="active"><a href="<%=user.equals("Guest") ? "/ecomm/index.jsp" : "/ecomm/user/index"%>">HOME</a></li>
      <li data-toggle="modal" data-target="#myModal3"><a href="#">MEN</a>
        
      </li>
      <li data-toggle="modal" data-target="#myModal1"><a href="#">WOMEN</a>
        
      </li>
      <li data-toggle="modal" data-target="#myModal1"><a href="#">ELECTRONICS</a></li>
      <li data-toggle="modal" data-target="#myModal1"><a href="#">DROP</a></li>
      <li data-toggle="modal" data-target="#myModal1"><a href="#">VOTE</a></li>
      <li data-toggle="modal" data-target="#myModal1" ><a href="#" >DISCUSSIONs</a></li>
    </ul>
  </nav>
</div>