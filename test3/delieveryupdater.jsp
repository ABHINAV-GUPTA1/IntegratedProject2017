<%-- 
    Document   : delieveryupdater
    Created on : Apr 14, 2017, 11:47:47 PM
    Author     : DELL
--%>
<%@include file="secure-admin.jsp" %>
<%
String id=request.getParameter("id");
String progress =request.getParameter("progress"); 
String email =session.getAttribute("adminemail").toString();
String buyer = request.getParameter("user");
//out.println(email);
//return;
try{
            %><%@include file="dbConnection.jsp" %>
            <%PreparedStatement smt = (PreparedStatement) con.prepareStatement("update customerbuyed set progress=? where owner=? and user=? and id=?");
            smt.setString(1,progress);
            smt.setString(2,email);
            smt.setString(3,buyer);
            smt.setString(4,id);
            smt.executeUpdate();
            smt.close();
        }catch(Exception e){
            out.println("error try after some time");    
            response.sendRedirect("/ecomm/admin/index");
        }
response.setHeader("Refresh", "0;url=/ecomm/admin/index#configuration");
%>

