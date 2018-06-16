package timeTable;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class time_table_do {
	private static Connection getConn() {
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost/srtp?user=root&password=06104777&useUnicode=true&characterEncoding=utf8&useSSL=true";
		Connection conn = null;
	    try {
	        Class.forName(driver); //classLoader,加载对应驱动
	        System.out.println("Connecting to a selected database...");
	        conn = (Connection) DriverManager.getConnection(url);
	        System.out.println("Connected database successfully!");
	    } catch (ClassNotFoundException e) {
	        e.printStackTrace();
	        System.out.println("Connected database NotFound!");
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return conn;
	}
	
	
	public static ResultSet getAll() {

		Connection conn = getConn();
		String sql = "select * from time_table";
		PreparedStatement pstmt;
		ResultSet rSet = null;
		try {
			pstmt = (PreparedStatement) conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			rSet = rs;
		} catch (SQLException e) {
			e.printStackTrace();// TODO: handle exception
			System.out.println("query failed!");
		}
		return rSet;
	}
	
}
