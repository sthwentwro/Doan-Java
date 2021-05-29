package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Date;

import context.DBContext;
import entity.Bill;
import entity.BillDetail;

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
	  public static void main(String[] args) {
			BillDetailDAO bd = new BillDetailDAO();
			BillDetail b = new BillDetail();
			b.setMaDonHang(1);
			b.setMaPhuKien(10);
			b.setDongia(10000);
			b.setSoluong(10);
			boolean kg = bd.addBillDetail(b);
	  }
	 
}
