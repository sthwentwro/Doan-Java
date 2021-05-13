package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import context.DBContext;
import entity.Category;
import entity.Product;
import java.sql.SQLException;

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
		public List<Product> getListProductByCategory(long category_id)  
		{
			List<Product> list = new ArrayList<>();
			String sql = "select *\r\n"
					+ "from PhuKien where MaLoaiPK=" + category_id +"";
			
			//PhuKien a join LoaiPhuKien b on a.MaLoaiPK=b.MaLoaiPK where a.MaLoaiPK=
			try {
				conn = new DBContext().getConnection();
				ps = conn.prepareStatement(sql);
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
			}catch (Exception e) {
				e.printStackTrace();
			}
			return list;
		}
		
		public List<Category> getListCategory()  
		{
			List<Category> list = new ArrayList<>();
			String sql = "select *from LoaiPhuKien ";
			
			//PhuKien a join LoaiPhuKien b on a.MaLoaiPK=b.MaLoaiPK where a.MaLoaiPK=
			try {
				conn = new DBContext().getConnection();
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();
				while(rs.next()) {
					list.add(new Category(rs.getInt(1), rs.getString(2)));
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
			return list;
		}
		
		public static void main(String[] args) {
			ProductDAO dao = new ProductDAO();
			List<Product> list = dao.getListProductByCategory(1);
			for (Product p : list) {
				System.out.print(p);
			}
		}		 
}
