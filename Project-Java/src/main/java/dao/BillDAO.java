package dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import context.DBContext;
import entity.Bill;

public class BillDAO {
	Connection conn = null;
	//cau lenh sql
	PreparedStatement ps = null;
	//ket qua du kieu tra ve
	ResultSet rs = null;

	public boolean addBill(Bill bill)
	{
		String query = "insert into Dondathang\n"
				+"values(?,?,?,?,?,?)";
		try {
			conn = new DBContext().getConnection();//mo ket noi den sql
			ps = conn.prepareStatement(query);			
			ps.setBoolean(1, bill.getDathanhtoan());			 
			ps.setBoolean(2, bill.getTinhtrangdonhang());
			ps.setTimestamp(3, bill.getNgaydat());
			ps.setTimestamp(4, bill.getNgaygiao());
			ps.setInt(5, bill.getTotal());
			ps.setInt(6, bill.getIDUser());
			//chay cau lenh query
			ps.executeUpdate();
			conn.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public  int getLastBillID()
	{
		int ID = -1;
		String query = "select top 1 MaDonHang from Dondathang order by MaDonHang desc";
		try {
			conn = new DBContext().getConnection();//mo ket noi den sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while(rs.next()) {
			ID = rs.getInt("MaDonHang");
			}
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return ID;
	}
	public static void main(String[] args) {
		BillDAO dao = new BillDAO();
		dao.getLastBillID();
		
		
		
		
	}
}
