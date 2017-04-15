<%-- 
    Document   : important
    Created on : Apr 15, 2017, 12:34:54 AM
    Author     : DELL
--%>
<%
String id=request.getParameter("id");
String email = session.getAttribute("adminemail").toString();
try{
            %><%@include file="dbConnection.jsp" %>
            <%PreparedStatement smt = (PreparedStatement) con.prepareStatement("update emails set important=1 where owner=? and id=?");
            smt.setString(1,email);
            smt.setString(2,id);
            smt.executeUpdate();
            smt.close();
        }catch(Exception e){
            out.println("error try after some time");    
            response.setHeader("Refresh", "5;url=/ecomm/admin/index#configuration");
        }
response.setHeader("Refresh", "0;url=/ecomm/admin/index#configuration");
%>
