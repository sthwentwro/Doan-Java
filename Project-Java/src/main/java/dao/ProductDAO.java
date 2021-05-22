package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import entity.Category;
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
		
		public List<Product> getListProduct(){
			List<Product> list = new ArrayList<>();
			String query = "select a.*,b.TenLoaiPK\r\n"
					+ "from PhuKien a, LoaiPhuKien b\r\n"
					+ "where a.MaLoaiPK = b.MaLoaiPK";
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
							rs.getInt("ViewCount"),
							rs.getNString("TenLoaiPK")));
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
			String sql1 ="select a.*,b.TenLoaiPK \r\n"
					+ "from PhuKien a, LoaiPhuKien b\r\n"
					+ "where a.MaLoaiPK ="+ category_id +"and b.MaLoaiPK="+ category_id +"";
			//PhuKien a join LoaiPhuKien b on a.MaLoaiPK=b.MaLoaiPK where a.MaLoaiPK=
			try {
				conn = new DBContext().getConnection();
				ps = conn.prepareStatement(sql1);
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
		
		public List<Category> getListCategory()  
		{
			List<Category> list = new ArrayList<>();
			String sql = "select * from LoaiPhuKien ";
			
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
		
		
		
		public Product getProductbyId(int id) {
			String query = "select a.*,b.TenLoaiPK,c.TenThuongHieu\r\n"
					+ "from PhuKien a join LoaiPhuKien b on a.MaLoaiPK=b.MaLoaiPK \r\n"
					+ " join ThuongHieu c on a.IDThuongHieu = c.IDThuongHieu\r\n"
					+ "where a.MaPhuKien = ?";
			try {
				conn = new DBContext().getConnection();//mo ket noi den sql
				ps = conn.prepareStatement(query);		
				ps.setInt(1, id);
				//chay cau lenh query
				rs = ps.executeQuery();
				while(rs.next()) {
					return new Product(rs.getInt("MaPhuKien"),
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
							rs.getString("TenThuongHieu"),
							rs.getNString("TenLoaiPK"));
				}
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return null;
		}
		public List<Product> searchByName(String txtSearch)  
		{
			List<Product> list = new ArrayList<>();
			String query = "select * from PhuKien where [TenPhuKien] like ?";
			
			//PhuKien a join LoaiPhuKien b on a.MaLoaiPK=b.MaLoaiPK where a.MaLoaiPK=
			try {
				conn = new DBContext().getConnection();
				ps = conn.prepareStatement(query);
				ps.setString(1,"%"+txtSearch+"%");
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
		
		
		public static void main(String[] args) {
			ProductDAO dao = new ProductDAO();
			Product pr = dao.getProductbyId(8);
			System.out.print(pr.toString());
			}
		}
		 
