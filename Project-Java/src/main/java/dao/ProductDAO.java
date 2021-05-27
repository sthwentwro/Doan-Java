package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
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
		
		Date date = new Date();
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
		
		public List<Product> getListProductByCategory(int category_id,int index)  
		{
			List<Product> list = new ArrayList<>();					
			String query = "select a.*,b.TenLoaiPK\r\n"
					+ "from PhuKien a, LoaiPhuKien b\r\n"
					+ "where a.MaLoaiPK = "+ category_id +" and b.MaLoaiPK="+ category_id +"\r\n"
					+ "order by a.MaPhuKien\r\n"
					+ "offset ? rows fetch next 6 rows only";
			//PhuKien a join LoaiPhuKien b on a.MaLoaiPK=b.MaLoaiPK where a.MaLoaiPK=
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
		
		public boolean updateProduct(String ten,String maloai,String maTH,String mota,String slt,String giaban,String cover,String id,String noidung,String baohanh)
		{
			String query = "update PhuKien \r\n"
					+ "set TenPhuKien = ?,\r\n"
					+ " MaLoaiPK = ?,\r\n"
					+ " IDThuongHieu = ?,\r\n"
					+ " Mota = ?,\r\n"
					+ " Soluongton = ?,\r\n"
					+ "GiaBan = ?,\r\n"
					+ "Cover = ?,\r\n"
					+ "NoiDungSP = ?,\r\n"
					+ "ModifiedDate = ?,\r\n"
					+ "BaoHanh = ?\r\n"
					+ "where MaPhuKien = ?";			
			Timestamp sqlDate = new Timestamp(date.getTime());
			try {
				conn = new DBContext().getConnection();//mo ket noi den sql
				ps = conn.prepareStatement(query);		
				ps.setNString(1, ten);
				ps.setString(2, maloai);
				ps.setString(3, maTH);
				ps.setNString(4, mota);
				ps.setString(5, slt);
				ps.setString(6, giaban);
				ps.setString(7, cover);
				ps.setNString(8, noidung);
				ps.setTimestamp(9, sqlDate);
				ps.setString(10, baohanh);
				ps.setString(11, id);
				ps.executeUpdate();
				conn.close();
				return true;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return false;
		}
		public boolean insertProduct(String ten,String maloai,String maTH,String mota,String slt,String giaban,String cover,String noidung,String baohanh,String username) {
			String query = "insert into PhuKien \r\n"
					+ "(TenPhuKien,MaLoaiPK,IDThuongHieu,Mota,Soluongton,\r\n"
					+ "NoiDungSP,GiaBan,Cover,BaoHanh,CreatedBy,CreatedDate)\r\n"
					+ "values\r\n"
					+ "(?,?,?,?,?,\r\n"
					+ "?,?,?,?,?,?)";
			Timestamp sqlDate = new Timestamp(date.getTime());
			try {
				conn = new DBContext().getConnection();//mo ket noi den sql
				ps = conn.prepareStatement(query);
				ps.setNString(1, ten);
				ps.setString(2, maloai);
				ps.setString(3, maTH);
				ps.setNString(4, mota);
				ps.setString(5, slt);
				ps.setNString(6, noidung);
				ps.setString(7, giaban);
				ps.setString(8, cover);
				ps.setString(9, baohanh);
				ps.setString(10,username);
				ps.setTimestamp(11, sqlDate);
				ps.executeUpdate();
				conn.close();
				return true;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return false;
		}
		public boolean deleteProduct(String id) {
			String query = "delete from PhuKien\n"
                    +"where MaPhuKien = ?";
			try {
				conn = new DBContext().getConnection();//mo ket noi den sql
				ps = conn.prepareStatement(query);
				ps.setString(1,id);
				ps.executeUpdate();
				conn.close();
				return true;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return false;
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
		public int getTotalProductByCategory(int category_id) {
			String query = "select count(*)\r\n"
					+ "from PhuKien a, LoaiPhuKien b\r\n"
					+ "where a.MaLoaiPK ="+ category_id +"and b.MaLoaiPK=" + category_id;
			try {
				conn = new DBContext().getConnection();//mo ket noi den sql
				ps = conn.prepareStatement(query);
				rs = ps.executeQuery();
				while(rs.next()) {
					return rs.getInt(1);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return 0;
		}
		public int getTotalProduct() {
			String query = "select count(*) from PhuKien";
			try {
				conn = new DBContext().getConnection();//mo ket noi den sql
				ps = conn.prepareStatement(query);
				rs = ps.executeQuery();
				while(rs.next()) {
					return rs.getInt(1);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return 0;
		}
		public List<Product> pagingProduct(int index){
			List<Product> list = new ArrayList<>();
			String query = "select * from PhuKien\r\n"
					+ "order by MaPhuKien\r\n"
					+ "offset ? rows fetch next 8 rows only;";
			try {
				conn = new DBContext().getConnection();//mo ket noi den sql
				ps = conn.prepareStatement(query);
				ps.setInt(1, (index-1)*8);
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
		public static void main(String[] args) throws ParseException {
			ProductDAO dao = new ProductDAO();
			int pr = dao.getTotalProductByCategory(3);
			System.out.print(pr);
			}
		}
		 
