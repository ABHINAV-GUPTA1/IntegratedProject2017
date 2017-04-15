<%-- 
    Document   : update
    Created on : Apr 14, 2017, 10:08:56 PM
    Author     : DELL
--%>
<%@include file="secure-admin.jsp" %>
<%
String id=request.getParameter("id");
String val =request.getParameter("qty"); 
String email =session.getAttribute("adminemail").toString();
//out.println(email);
//return;
try{
            %><%@include file="dbConnection.jsp" %>
            <%PreparedStatement smt = (PreparedStatement) con.prepareStatement("update adminproduct set itemqty=? where owner=? and id=?");
            smt.setString(1,val);
            smt.setString(2,email);
            smt.setString(3,id);
            smt.executeUpdate();
            smt.close();
        }catch(Exception e){
            out.println("error try after some time");    
            response.sendRedirect("/ecomm/admin/index");
        }
response.setHeader("Refresh", "0;url=/ecomm/admin/index#configuration");
%>
