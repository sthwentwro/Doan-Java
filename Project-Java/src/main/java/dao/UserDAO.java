package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import entity.User;

public class UserDAO {
	//ket noi sql
	Connection conn = null;
	//cau lenh sql
	PreparedStatement ps = null;
	//ket qua du kieu tra ve
	ResultSet rs = null;
	
	public User getUser(String username,String pass){
		User user = null;
		String query = "select * from KhachHang where Username=? and Password=?";
		try {
			conn = new DBContext().getConnection();//mo ket noi den sql
			ps = conn.prepareStatement(query);
			//gan gia tri username vao dau ? thu 1 
			ps.setString(1, username);
			//gan gia tri pass vao dau ? thu 2 
			ps.setString(2, pass);
			//chay cau lenh query
			rs = ps.executeQuery();
			while(rs.next()) {
				user = new User(rs.getInt(1), 
						rs.getString(2), 
						rs.getString(3), 
						rs.getString(4), 
						rs.getString(5), 
						rs.getString(6), 
						rs.getString(7),
						rs.getInt(8));
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	//hàm đăng ký
	public boolean signup(String username, String password, String email, String sdt, String diachi, String fullname) {		
		String query = "insert into KhachHang\n"
				+"values(?,?,?,?,?,?)";
		try {
			conn = new DBContext().getConnection();//mo ket noi den sql
			ps = conn.prepareStatement(query);
			//gan gia tri username vao dau ? thu 1 
			ps.setString(1, username);
			//gan gia tri pass vao dau ? thu 2 
			ps.setString(2, password);
			ps.setString(3, email);
			ps.setString(4, sdt);
			ps.setString(5, diachi);
			ps.setString(6, fullname);		
			//chay cau lenh query
			ps.executeUpdate();
			conn.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	//kiểm tra user đã tồn tại chưa
	public User checkUser(String username){
		User user = null;
		String query = "select * from KhachHang where Username=?";
		try {
			conn = new DBContext().getConnection();//mo ket noi den sql
			ps = conn.prepareStatement(query);
			//gan gia tri username vao dau ? thu 1 
			ps.setString(1, username);
			//chay cau lenh query
			rs = ps.executeQuery();
			while(rs.next()) {
				user = new User(rs.getInt(1), 
						rs.getString(2), 
						rs.getString(3), 
						rs.getString(4), 
						rs.getString(5), 
						rs.getString(6), 
						rs.getString(7),
						rs.getInt(8)); 
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	public List<User> getListUser(){
		List<User> listUser = new ArrayList<>();
		String query = "select a.*,b.RoleName from KhachHang a , Role b\r\n"
				+ "where a.RoleID=b.RoleID and a.RoleID!=1";
		try {
			conn = new DBContext().getConnection();//mo ket noi den sql
			ps = conn.prepareStatement(query);			
			//chay cau lenh query
			rs = ps.executeQuery();
			while(rs.next()) {
				listUser.add(new User(rs.getInt(1), 
						rs.getString(2), 
						rs.getString(3), 
						rs.getString(4), 
						rs.getString(5), 
						rs.getString(6), 
						rs.getString(7),
						rs.getInt(8),
						rs.getString(9)));
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listUser;
	}
}
