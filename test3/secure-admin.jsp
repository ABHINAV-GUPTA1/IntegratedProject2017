<%-- 
    Document   : secure-jsp
    Created on : Apr 14, 2017, 11:19:36 AM
    Author     : DELL
--%>
<!--
Author: ABHINAV GUPTA
Author URL: http://ABHINAVGUPTA.COM
-->
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
String loginMail=""; 
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");    
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires",-1);
    
 try
    {
    if(session.getAttribute("adminemail").toString().length()!=0)
    {
       try{
            %><%@include file="dbConnection.jsp" %>
            <%PreparedStatement smt = (PreparedStatement) con.prepareStatement("select * from admin where email=?");
            smt.setString(1,session.getAttribute("adminemail").toString());
            ResultSet rs=smt.executeQuery();
            if(rs.next()){
                loginMail=rs.getString("email");
            }else{
                response.sendRedirect("/ecomm/admin/login");
            }
        }catch(Exception e){
                response.sendRedirect("/ecomm/admin/login");
        }
    }
    else
    {
       
    }
    }
    catch(Exception e)
    {
    response.sendRedirect("/ecomm/admin/login");
    return;
    }
%>