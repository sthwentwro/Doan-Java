package entity;

import java.sql.Timestamp;

public class Bill {

	private int MaDonHang;
	private boolean Dathanhtoan;
	private boolean Tinhtrangdonhang;
	private Timestamp Ngaydat;
	private Timestamp Ngaygiao;
	private int Total;
	private int IDUser;
	private String diachigiao;
	
	public Bill(int maDonHang, boolean dathanhtoan, boolean tinhtrangdonhang, Timestamp ngaydat,Timestamp ngaygiao, int total,
			int iDUser, String diachi) {
		
		this.MaDonHang = maDonHang;
		this.Dathanhtoan = dathanhtoan;
		this.Tinhtrangdonhang = tinhtrangdonhang;
		this.Ngaydat = ngaydat;
		this.Ngaygiao = ngaygiao;
		this.Total = total;
		this.IDUser = iDUser;
		this.setDiachigiao(diachi);
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
	public String getDiachigiao() {
		return diachigiao;
	}
	public void setDiachigiao(String diachigiao) {
		this.diachigiao = diachigiao;
	}
	


	
	
}
