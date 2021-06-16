package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import context.DBContext;
import entity.Bill;
import entity.BillDetail;
import entity.Product;

public class BillDetailDAO {
	Connection conn = null;
	//cau lenh sql
	PreparedStatement ps = null;
	//ket qua du kieu tra ve
	ResultSet rs = null;
	
	  public boolean addBillDetail(BillDetail bDetail) 
	  {
			String query = "insert into CTDH\n"
					+"values(?,?,?,?)";
			try {
				conn = new DBContext().getConnection();//mo ket noi den sql
				ps = conn.prepareStatement(query);			
				ps.setInt(1, bDetail.getMaDonHang());			 
				ps.setInt(2, bDetail.getMaPhuKien());
				ps.setInt(3, (int) bDetail.getDongia());
				ps.setInt(4, bDetail.getSoluong());
				
				//chay cau lenh query
				ps.executeUpdate();
				conn.close();
				return true;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return false;
	  }
	  public boolean updateslProduct(int sl ,int IdPhukien)
		{
			String query = "update PhuKien \r\n"
					+ " set Soluongton = ?\r\n"	
					+ "where MaPhuKien = ?";			
			try {
				conn = new DBContext().getConnection();//mo ket noi den sql
				ps = conn.prepareStatement(query);		
				ps.setInt(1, sl);
				ps.setInt(2, IdPhukien);
				ps.executeUpdate();
				conn.close();
				return true;
			} catch (Exception e) {
				e.printStackTrace();
			}
			return false;
		}
	  public int getSoluongTon(int ID){
			
		  String query = "select Soluongton from PhuKien  where MaPhuKien = ?";
			try {
				conn = new DBContext().getConnection();//mo ket noi den sql
				ps = conn.prepareStatement(query);		
				ps.setInt(1, ID);
				
				rs = ps.executeQuery();
				while(rs.next()) {
					return rs.getInt(1);
							
				}
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return 0;
		}
	  public List<BillDetail> getBillDetail(String ma) {
		  List<BillDetail> b = new ArrayList<>();
		  
		  String query = "select * from CTDH\r\n"
		  		       + "where MaDonHang =?";
		  try {
			    conn = new DBContext().getConnection();//mo ket noi den sql
				ps = conn.prepareStatement(query);	
				ps.setString(1, ma);
				rs = ps.executeQuery();
				while(rs.next()) {
					b.add(new BillDetail(rs.getInt("MaDonHang"),
							rs.getInt("MaPhuKien"),
							rs.getInt("Dongia"),
							rs.getInt("Soluong")));
				}
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		  return b;
	  }
	  public static void main(String[] args) {
			BillDetailDAO bd = new BillDetailDAO();
			
			System.out.print(bd.getSoluongTon(10));
	  }
	 
}
