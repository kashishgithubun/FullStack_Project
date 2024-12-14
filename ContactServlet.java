import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullName = request.getParameter("full_name");
        String email = request.getParameter("email_address");
        String mobile = request.getParameter("mobile_number");
        String city = request.getParameter("city");

        PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        try {
            // Load JDBC Driver
            Class.forName("com.mysql.jdbc.Driver");

            // Prepare SQL query
            try ( // Connect to the database
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/admin", "root", "W7301@jqir#")) {
                // Prepare SQL query
                String query = "INSERT INTO contact_form (full_name, email_address, mobile_number, city) VALUES (?, ?, ?, ?)";
                PreparedStatement pst = con.prepareStatement(query);
                pst.setString(1, fullName);
                pst.setString(2, email);
                pst.setString(3, mobile);
                pst.setString(4, city);
                
                // Execute query
                int rowCount = pst.executeUpdate();
                
                if (rowCount > 0) {
                    out.println("<h1>Contact information submitted successfully!</h1>");
                } else {
                    out.println("<h1>Failed to submit contact information.</h1>");
                }
                
                // Close resources
                pst.close();
            }

        } catch (ClassNotFoundException | SQLException e) {
            out.println("<h1>Error: " + e.getMessage() + "</h1>");
        }
    }
}
