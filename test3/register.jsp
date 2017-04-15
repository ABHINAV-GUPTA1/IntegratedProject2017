<%-- 
Document   : index
Created on : Jan 10, 2017, 9:17:01 AM
Author     : ABHINAV GUPTA
--%>
<!DOCTYPE html>
 <html lang="en" class="no-js">     <head>
        <meta charset="UTF-8" />
        <title>Indian DealHouse | logIn</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="ABHINAV GUPTA, AVINASH,ATUL,ANUBHAV" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="../css/demo.css" />
        <link rel="stylesheet" type="text/css" href="../css/style.css" />
		<link rel="stylesheet" type="text/css" href="../css/animate-custom.css" />
    </head>
    <body style="background-color: #2b2b2b">
	<header><pre>   
    </pre></header>
	<!--FORM STARTS-->
	<section>
   <div id="container_demo" >
      <a class="hiddenanchor" id="toregister"></a>
      <a class="hiddenanchor" id="tologin"></a>
      <div id="wrapper">
         <div id="login" class="animate form">
             <form action="checkLog" autocomplete="on" method="post">
                 <input type="hidden" name="register" value="customer" />
               <h1>Log in</h1>
               <p> 
                  <label for="email" class="uname" data-icon="u" > Your email</label>
                  <input id="email" name="email" required="required" type="text" placeholder="UserName"/>
               </p>
               <p> 
                  <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                  <input id="password" name="password" required="required" type="password" placeholder="password" /> 
               </p>
               <!--<p class="keeplogin"> 
                  <input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
                  <label for="loginkeeping">Keep me logged in</label>
               </p>-->
               <p class="login button"> 
                  <input type="submit" value="Login" /> 
               </p>
               <p class="change_link">
                  Not a member yet ?
                  <a href="#toregister" class="to_register">Join us</a>
               </p>
            </form>
         </div>
         <div id="register" class="animate form">
             <form  action="signin" autocomplete="on" method="post">
                 <input type="hidden" name="register" value="customer" />
               <h1> Sign up </h1>
               <p> 
                  <label for="username" class="uname" data-icon="u">Your username</label>
                  <input id="username" name="username" required="required" type="text" placeholder="username" />
               </p>
               <p> 
                  <label for="email" class="youmail" data-icon="e" > Your email</label>
                  <input id="email" name="email" required="required" type="email" placeholder="email"/> 
               </p>
               <p> 
                  <label for="password" class="youpasswd" data-icon="p">Your password </label>
                  <input id="password" name="password" required="required" type="password" placeholder="password"/>
               </p>
              <p> 
                  <label for="contact" class="youpasswd" data-icon="e">Contact</label>
                  <input id="contact" name="contact" required="required" type="phone" maxlength="10" placeholder="Contact"/>
               </p>
               <p class="signin button"> 
                  <input type="submit" value="Sign up"/> 
               </p>
               <p class="change_link">  
                  Already a member ?
                  <a href="#tologin" class="to_register"> Go and log in </a>
               </p>
            </form>
         </div>
      </div>
   </div>
</section>
	<!--FORM ENDS-->
    </body>
</html>