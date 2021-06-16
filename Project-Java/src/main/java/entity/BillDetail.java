package entity;

public class BillDetail {
	int MaDonHang;
	int MaPhuKien;
	int Dongia;
	int Soluong;
	public BillDetail(int maDonHang, int maPhuKien, int dongia, int soluong) {
		
		this.MaDonHang = maDonHang;
		this.MaPhuKien = maPhuKien;
		this.Dongia = dongia;
		this.Soluong = soluong;
	}
	
	public BillDetail() {
		
	}

	public int getMaDonHang() {
		return MaDonHang;
	}

	public void setMaDonHang(int maDonHang) {
		MaDonHang = maDonHang;
	}

	public int getMaPhuKien() {
		return MaPhuKien;
	}

	public void setMaPhuKien(int maPhuKien) {
		MaPhuKien = maPhuKien;
	}

	public float getDongia() {
		return Dongia;
	}

	public void setDongia(int dongia) {
		Dongia = dongia;
	}

	public int getSoluong() {
		return Soluong;
	}

	public void setSoluong(int soluong) {
		Soluong = soluong;
	}
	 
}