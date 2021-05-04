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
					list.add(new Product(rs.getInt(1),
							rs.getNString(2),
							rs.getInt(3),
							rs.getNString(4),
							rs.getNString(5),
							rs.getInt(6),
							rs.getInt(7),
							rs.getDate(8),
							rs.getInt(9)));
				}
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return list;
		}
		/*
		 * public static void main(String[] args) { ProductDAO dao = new ProductDAO();
		 * List<Product> list = dao.get3Product(); for (Product p : list) {
		 * System.out.print(p); } }
		 */
}
