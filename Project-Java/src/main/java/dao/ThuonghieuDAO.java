package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import entity.Thuonghieu;

public class ThuonghieuDAO {
	//ket noi sql
	Connection conn = null;
	//cau lenh sql
	PreparedStatement ps = null;
	//ket qua du kieu tra ve
	ResultSet rs = null;
	
	public List<Thuonghieu> getAll(){
		List<Thuonghieu> list = new ArrayList<>();
		String query = "select * from ThuongHieu";
		try {
			conn = new DBContext().getConnection();//mo ket noi den sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new Thuonghieu(rs.getString(1),
						rs.getNString(2)));
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public static void main(String[] args) {
		ThuonghieuDAO dao = new ThuonghieuDAO();
		dao.getAll();
	}
}
