package ReadPDF;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ReadPDF
 */
@WebServlet("/ReadPDF")
public class ReadPDF extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private String dbURL = "jdbc:mysql://localhost:3306/laptrinhweb";
	    private String dbUser = "root";
	    private String dbPass = "Thief1996";    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReadPDF() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
    	response.setCharacterEncoding("UTF-8");
    	
       //get ID 
        int Id_file = Integer.parseInt(request.getParameter("idfileshare"));
         
        ServletOutputStream sos;
        Connection  con=null;
        PreparedStatement pstmt=null;
         
        response.setContentType("application/pdf");
 
         sos = response.getOutputStream();
         
 
           try {
               Class.forName("com.mysql.jdbc.Driver");
               con = DriverManager.getConnection(dbURL, dbUser, dbPass);
          } catch (Exception e) {
                     System.out.println(e);
                     System.exit(0); 
                          }
            
          ResultSet rset=null;
            try {
                pstmt = con.prepareStatement("Select file from file_share where ID_file_share=?");
                pstmt.setInt(1, Id_file);
                rset = pstmt.executeQuery();
                if (rset.next())
                    sos.write(rset.getBytes("file"));
                else
                    return;
                 
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
     
        sos.flush();
        sos.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
