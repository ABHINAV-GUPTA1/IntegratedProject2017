/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Login;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class checkLog extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (
            PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Signin error</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Try Again......</h1><br/><a href='register.jsp'>Login again</a>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        PrintWriter out=response.getWriter();
        String email=request.getParameter("email");
        String pass=request.getParameter("password");
        try {
            Class.forName("com.mysql.jdbc.Driver"); // Load Driver
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql:///ecomm","root","");
            PreparedStatement smt = (PreparedStatement) con.prepareStatement("select * from register where email=? and password=?");
            smt.setString(1,email);
            smt.setString(2,pass);
            ResultSet rs=(ResultSet) smt.executeQuery();
            boolean val=rs.next();
            if(val) {
                try {
                    HttpSession s = request.getSession();
                    Date d;
                    d = Calendar.getInstance().getTime();
                    s.setAttribute("email", rs.getString("email"));
                    s.setAttribute("address", rs.getString("address"));
                    s.setAttribute("contact",rs.getString("contact"));
                    rs.close();
                    smt.close();
                    smt=(PreparedStatement) con.prepareStatement("update loginfo set lastsignin=?,done=? where email=?");
                    smt.setString(1, new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(d));
                    smt.setString(2,"Online");
                    smt.setString(3,email);
                    smt.executeUpdate();
                    smt.close();
                } catch(Exception e) {
                    out.println("<h1> Error occured: code:1</h1>"+e);
                    out.println("<p style='color:red;'>Please try to Register/Login</p>");
                    out.println("<a href='login'>Register here</a>");
                    return;
                }
                con.close();
                //response.sendRedirect(response.encodeRedirectURL("logInSuccess.jsp"));
            } else {
                //response.sendRedirect(response.encodeRedirectURL("login.jsp"));
                out.println("<h1> Error occured: code:1</h1>");
                out.println("<p style='color:red;'>Please try to login again</p>");
                out.println("<a href='login'>Register here</a>");
                return;
            }
        } catch(Exception e) {
            out.println("<h1> Error occured: code:2</h1>"+e);
            //response.sendRedirect(response.encodeRedirectURL("register.jsp"));
            out.println("<p style='color:red;'>Please try to login again</p>");
            out.println("<a href='login'>Register here</a>");        
            return;
        }
        out.println("<p style='color:green;'>Success</p><a href='logout'>Logout</a>");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
