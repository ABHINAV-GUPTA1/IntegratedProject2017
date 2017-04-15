<%-- 
    Document   : dbConnection
    Created on : Apr 14, 2017, 11:20:11 AM
    Author     : ABHINAV GUPTA
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%
Class.forName("com.mysql.jdbc.Driver"); // Load Driver
Connection con = (Connection) DriverManager.getConnection("jdbc:mysql:///ecomm","root","");
%>
