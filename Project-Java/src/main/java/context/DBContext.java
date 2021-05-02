package context;

import java.sql.*;

public class DBContext {
	
    private final String hostName = "localhost";//tên host
	private final String instanceName = "";
	private final String database = "WebBanPhuKien";//tên database
	private final String userName = "sa";//tên tài khoản đăng nhập sql
	private final String password = "23012000";//mật khẩu đăng nhập sql
	
	//phương thức lấy kết nối đến sql server
	public  Connection getConnection() throws SQLException, ClassNotFoundException
	{
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		String connectionURL = "jdbc:sqlserver://" + hostName + ":1433"+
	             instanceName + ";databaseName=" + database;
	    return DriverManager.getConnection(connectionURL, userName,password);
	}
	/*
	 * public static void main(String[] args) { try { System.out.println(new
	 * DBContext().getConnection()); } catch (Exception e) { e.printStackTrace(); }
	 * }
	 */
}
