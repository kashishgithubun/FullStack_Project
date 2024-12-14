
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/addClient")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50 // 50MB
)
public class addClient extends HttpServlet {

    public static final String UPLOAD_DIR = "images";
    private String dbFileName = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        // Retrieve form data
        String name = request.getParameter("projectName");
        String description = request.getParameter("projectdescription");

        Part part = request.getPart("projectImage");//
        String fileName = extractFileName(part);//file name
        String savePath ="C:\\Users\\DELL\\Documents\\NetBeansProjects\\myApp\\web\\images\\"+ File.separator +fileName;
        File fileSaveDir = new File(savePath);
        part.write(savePath + File.separator);
        
//        String applicationPath = getServletContext().getRealPath("");
//        String uploadPath = applicationPath + File.separator + UPLOAD_DIR;
//        System.out.println("applicationPath:" + applicationPath);
//        File fileUploadDirectory = new File(uploadPath);
//        if (!fileUploadDirectory.exists()) {
//            fileUploadDirectory.mkdirs();
//        }
//        String savePath = uploadPath + File.separator + fileName;
//        System.out.println("savePath: " + savePath);
//        String sRootPath = new File(savePath).getAbsolutePath();
//        System.out.println("sRootPath: " + sRootPath);
//        
//        File fileSaveDir1 = new File(savePath);
        /*if you may have more than one files with same name then you can calculate some random characters
        and append that characters in fileName so that it will  make your each image name identical.*/
//        dbFileName = UPLOAD_DIR + File.separator + fileName;
//        part.write(savePath + File.separator);
        // Save details to database
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/admin", "root", "W7301@jqir#");

            PreparedStatement pst = con.prepareStatement("INSERT INTO clients VALUES (?,?,?)");
            pst.setString(1, name);
            pst.setString(2, description);
          //  pst.setString(3, dbFileName);
            pst.setString(3, savePath);
            pst.executeUpdate();


            out.println("<center><h1>Project added successfully!</h1></center>");
        } catch (Exception e) {
            out.println("<center><h1>Error: " + e.getMessage() + "</h1></center>");
        } finally {
            out.close();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("addProject.jsp"); // Redirect to the form page
    }

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        for (String content : contentDisp.split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf("=") + 2, content.length() - 1);
            }
        }
        return "";
    }
}
