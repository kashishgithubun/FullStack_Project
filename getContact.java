/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 import java.sql.ResultSet;
 import java.sql.DriverManager;
 import java.sql.Statement;
 import java.sql.Connection;

/**
 *
 * @author DELL
 */
public class getContact extends HttpServlet {

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
        
  PrintWriter out = response.getWriter();
        response.setContentType("text/html;charset=UTF-8");
        



    
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/admin", "root", "W7301@jqir#w");
                Statement st = con.createStatement();
                String sql = "SELECT full_name,email_address,mobile_number, city FROM  contact_form ";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
//                    int id = rs.getInt("id");
                    String full_name = rs.getString("full_name");
                    String email_address = rs.getString("email_address");
                    String mobile_number = rs.getString("mobile_number");
                    String city = rs.getString("city");
//                    String path = rs.getString("path");
        
                }
            } catch (Exception e) {
                out.println(e);
            }
    
    }}