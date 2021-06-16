package dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import context.DBContext;
import entity.Bill;
import entity.Revenue;

public class BillDAO {
	Connection conn = null;
	//cau lenh sql
	PreparedStatement ps = null;
	//ket qua du kieu tra ve
	ResultSet rs = null;

	public boolean addBill(Bill bill)
	{
		String query = "insert into Dondathang\n"
				+"values(?,?,?,?,?,?,?)";
		try {
			conn = new DBContext().getConnection();//mo ket noi den sql
			ps = conn.prepareStatement(query);			
			ps.setBoolean(1, bill.getDathanhtoan());			 
			ps.setBoolean(2, bill.getTinhtrangdonhang());
			ps.setTimestamp(3, bill.getNgaydat());
			ps.setTimestamp(4, bill.getNgaygiao());
			ps.setInt(5, bill.getTotal());
			ps.setInt(6, bill.getIDUser());
			ps.setNString(7, bill.getDiachigiao());
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
	public List<Bill> pagingOrder(int index){
		List<Bill> list = new ArrayList<>();
		String query = "select *\r\n"
				+ "from Dondathang\r\n"
				+ "order by Ngaydat desc\r\n"
				+ "offset ? rows fetch next 8 rows only ";
		try {
			conn = new DBContext().getConnection();//mo ket noi den sql
			ps = conn.prepareStatement(query);
			ps.setInt(1, (index-1)*8);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new Bill(rs.getInt("MaDonHang"),
						rs.getBoolean("Dathanhtoan"),
						rs.getBoolean("Tinhtrangdonhang"),
						rs.getTimestamp("Ngaydat"),
						rs.getTimestamp("Ngaygiao"),
						rs.getInt("Total"),
						rs.getInt("IDUser"),
						rs.getNString("Diachigiao")));
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public int getTotalBill() {
		String query = "select COUNT(*) from Dondathang";
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
	public void doitinhtrangdonhang(String ma, String status) 
	{
		int s = 1;
		if(status.equals("true")) {
			s = 0;
		}
		String query = "update Dondathang\r\n"
				+ "set Tinhtrangdonhang = ?\r\n"
				+ "where MaDonHang = ?";
		try {
			conn = new DBContext().getConnection();//mo ket noi den sql
			ps = conn.prepareStatement(query);
			ps.setInt(1, s);
			ps.setString(2, ma);
			ps.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ;
	}
	public void doitinhtrangthanhtoan(String ma, String status) 
	{
		int s = 1;
		if(status.equals("true")) {
			s = 0;
		}
		String query = "update Dondathang\r\n"
				+ "set Dathanhtoan = ?\r\n"
				+ "where MaDonHang = ?";
		try {
			conn = new DBContext().getConnection();//mo ket noi den sql
			ps = conn.prepareStatement(query);
			ps.setInt(1, s);
			ps.setString(2, ma);
			ps.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ;
	}
	//lay thong tin don dat hang theo id
	public Bill getBillbyID(String ma) {
		Bill b = null;
		String query = "select * from Dondathang a\r\n"
				+ "where a.MaDonHang = ?";
		try {
			conn = new DBContext().getConnection();//mo ket noi den sql
			ps = conn.prepareStatement(query);
			ps.setString(1, ma);
			rs = ps.executeQuery();
			while(rs.next()) {
				b = new Bill(rs.getInt("MaDonHang"),
						rs.getBoolean("Dathanhtoan"),
						rs.getBoolean("Tinhtrangdonhang"),
						rs.getTimestamp("Ngaydat"),
						rs.getTimestamp("Ngaygiao"),
						rs.getInt("Total"),
						rs.getInt("IDUser"),
						rs.getNString("Diachigiao"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
	}
	public void updateBill(String ma,Timestamp ngaygiao,String diachi) {
		String query = "update Dondathang\r\n"
				+ "set Ngaygiao = ?,\r\n"
				+ "	Diachigiao = ?\r\n"
				+ "where MaDonHang = ?";
		try {
			conn = new DBContext().getConnection();//mo ket noi den sql
			ps = conn.prepareStatement(query);
			ps.setTimestamp(1, ngaygiao);
			ps.setString(2, diachi);
			ps.setString(3, ma);
			ps.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ;
	}
	public void deleteBill(String ma) {
		String query = "delete from Dondathang\r\n"
				+ "where MaDonHang =?";
		try {
			conn = new DBContext().getConnection();//mo ket noi den sql
			ps = conn.prepareStatement(query);
			ps.setString(1, ma);
			ps.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return;
	}
	public  List<Revenue> getDoanhthu()
	{
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy");
		Date date = new Date();
		List<Revenue> list = new ArrayList<>(); 
		  String query = "select MONTH(Ngaydat) AS Thang ,Sum(Total) AS Doanhthu  from Dondathang where YEAR(Ngaydat)= ? and Dathanhtoan = 1 group by MONTH(Ngaydat)";  
		  try {  
			  conn = new DBContext().getConnection();//mo ket noi den sql
				ps = conn.prepareStatement(query);
				ps.setString(1, formatter.format(date) );
				rs = ps.executeQuery();
		  while(rs.next()) {            
			  Revenue doanhthu = new Revenue();
		  doanhthu.setThang(rs.getInt("Thang")); 
		  doanhthu.setTotal(rs.getLong("Doanhthu"));
		  list.add(doanhthu);
		  }     } catch (Exception e) {         } 
		  return list;
	}
	public static void main(String[] args) {
		BillDAO dao = new BillDAO();
		dao.getLastBillID();
		
		
		
		
	}
}
