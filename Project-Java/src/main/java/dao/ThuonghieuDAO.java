package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import entity.Product;
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
	public List<Product> getListTheoTH(int idth,int index)  
	{
		List<Product> list = new ArrayList<>();					
		String query = "select * from PhuKien a,ThuongHieu b, LoaiPhuKien c where a.IDThuongHieu="+ idth +" and b.IDThuongHieu = " +idth+" and c.MaLoaiPK = a.MaLoaiPK   order by a.IDThuongHieu offset ? rows fetch next 6 rows only";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1,(index-1)*6);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new Product(rs.getInt("MaPhuKien"),
						rs.getInt("MaLoaiPK"),
						rs.getNString("TenPhuKien"),
						rs.getInt("IDThuongHieu"),
						rs.getString("MetaTitle"),
						rs.getNString("Mota"),
						rs.getInt("Soluongton"),
						rs.getNString("NoiDungSP"),
						rs.getInt("GiaBan"),
						rs.getInt("GiaCu"),
						rs.getString("Cover"),
						rs.getInt("BaoHanh"),
						rs.getDate("CreatedDate"),
						rs.getDate("ModifiedDate"),
						rs.getString("ModifiedBy"),
						rs.getBoolean("Status"),
						rs.getInt("ViewCount"),
						rs.getNString("TenLoaiPK")));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public static void main(String[] args) {
		ThuonghieuDAO dao = new ThuonghieuDAO();
		

		
	}
}
