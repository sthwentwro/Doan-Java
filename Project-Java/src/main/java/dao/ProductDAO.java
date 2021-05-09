package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import entity.Product;

public class ProductDAO {
	//ket noi sql
		Connection conn = null;
		//cau lenh sql
		PreparedStatement ps = null;
		//ket qua du kieu tra ve
		ResultSet rs = null;
		
		public List<Product> getNumProduct(int sl){
			List<Product> list = new ArrayList<>();
			String query = "select top "
					+ sl +" * from PhuKien";
			try {
				conn = new DBContext().getConnection();//mo ket noi den sql
				ps = conn.prepareStatement(query);
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
							rs.getInt("ViewCount")));
				}
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return list;
		}
		
		  public static void main(String[] args) { ProductDAO dao = new ProductDAO();
		  List<Product> list = dao.getNumProduct(4); for (Product p : list) {
		  System.out.print(p); } }
		 
}
