package entity;

import java.sql.Timestamp;
import java.util.Date;

public class Bill {

	int MaDonHang;
	boolean Dathanhtoan;
	boolean Tinhtrangdonhang;
	Timestamp Ngaydat;
	Timestamp Ngaygiao;
	int Total;
	int IDUser;
	
	public Bill(int maDonHang, boolean dathanhtoan, boolean tinhtrangdonhang, Timestamp ngaydat,Timestamp ngaygiao, int total,
			int iDUser) {
		
		this.MaDonHang = maDonHang;
		this.Dathanhtoan = dathanhtoan;
		this.Tinhtrangdonhang = tinhtrangdonhang;
		this.Ngaydat = ngaydat;
		this.Ngaygiao = ngaygiao;
		this.Total = total;
		this.IDUser = iDUser;
	}
	public Bill() {
		
	}
	public int getMaDonHang() {
		return MaDonHang;
	}
	public void setMaDonHang(int maDonHang) {
		MaDonHang = maDonHang;
	}
	public boolean getDathanhtoan() {
		return Dathanhtoan;
	}
	public void setDathanhtoan(boolean dathanhtoan) {
		Dathanhtoan = dathanhtoan;
	}
	public boolean getTinhtrangdonhang() {
		return Tinhtrangdonhang;
	}
	public void setTinhtrangdonhang(boolean tinhtrangdonhang) {
		Tinhtrangdonhang = tinhtrangdonhang;
	}
	public Timestamp getNgaydat() {
		return Ngaydat;
	}
	public void setNgaydat(Timestamp ngaydat) {
		Ngaydat = ngaydat;
	}
	public Timestamp getNgaygiao() {
		return Ngaygiao;
	}
	public void setNgaygiao(Timestamp ngaygiao) {
		Ngaygiao = ngaygiao;
	}
	public int getTotal() {
		return Total;
	}
	public void setTotal(int total) {
		Total = total;
	}
	public int getIDUser() {
		return IDUser;
	}
	public void setIDUser(int iDUser) {
		IDUser = iDUser;
	}
	


	
	
}
