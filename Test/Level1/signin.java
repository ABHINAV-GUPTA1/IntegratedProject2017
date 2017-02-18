/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package register;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
public class signin extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Signup error</title>");            
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
        try{
        String name=request.getParameter("username");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        Date d;
        d = Calendar.getInstance().getTime();
        try {
            Class.forName("com.mysql.jdbc.Driver"); // Load Driver
            Connection con = DriverManager.getConnection("jdbc:mysql:///ecomm","root","");
            PreparedStatement smt = con.prepareStatement("insert into register(username, email, password, date, time) values(?,?,?,?,?)");
            smt.setString(1,name);
            smt.setString(2,email);
            smt.setString(3,password);
            smt.setString(4,new SimpleDateFormat("yyyy/MM/dd").format(d));
            smt.setString(5,new SimpleDateFormat("HH:mm:ss").format(d));
            smt.executeUpdate();
            smt.close();
            try{
                smt=con.prepareStatement("insert into loginfo(email,done) values(?,?)");
                smt.setString(1, email);
                smt.setString(2, "Registration");
                smt.executeUpdate();
                smt.close();
            } catch(Exception e) {
                
                out.print("Code 3:<br/>Registered but with errors"+e);
                return;
            }
        } catch(Exception e) {
                out.println("<p style='color:red;'>Please try to Register again</p>");
                out.println("<a href='register.jsp'>Register here</a>");
                out.print("Code 4:<br/>Error with database : "+e);
                return;
        }
        } catch(Exception e) {
                out.println("<p style='color:red;'>Please try to Register again</p>");
                out.println("<a href='register.jsp'>Register here</a>");
                out.print("Code 4:<br/>Error with database : "+e);
                return;
        }
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
