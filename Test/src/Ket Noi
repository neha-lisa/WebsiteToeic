package testlogin;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class connect {
	private Connection conn =null;
	private final String driver ="com.mysql.jdbc.Driver" ;
	private final String url = "jdbc:mysql://localhost:3306/laptrinhweb";
	private final String user = "root";
	private final String password = "khongbiet123456789";

	
	
	public int updateData(String sql) throws ClassNotFoundException, SQLException{
		int result =0;
		openConnect();
		Statement sta = conn.createStatement();
		result = sta.executeUpdate(sql);
		closeConnect();
		return result;
	}
	
	public ResultSet getData(String sql) throws SQLException, ClassNotFoundException{
		ResultSet rs = null;
		openConnect();
		Statement sta = conn.createStatement();
		rs = sta.executeQuery(sql);
		return rs;
	}
	
	public void openConnect() throws ClassNotFoundException, SQLException{
		
		try {
				Class.forName(driver);
				conn = DriverManager.getConnection(url, user, password);
				System.out.println("thanh cong");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("that bai");
		}
	}
	public void closeConnect() throws SQLException{
		if(conn != null && !conn.isClosed()){
			conn.close();
		}
	}
}


