package entity;

import java.util.Date;

public class Product {
	private int IDPhukien;
	private String Tenphukien;
	private int giaban;
	private String cover;
	private String mota;	
	private int soluongton;
	private int IDloaiPK;
	private Date Ngaycapnhat;
	private int IDthuonghieu;
	private String Tenthuonghieu;
	private String Tenloai;
	
	public Product() {
		super();
	}

	
	public Product(int iDPhukien, String tenphukien, int giaban, String cover, String mota, int soluongton,
			int iDloaiPK, Date ngaycapnhat, int iDthuonghieu) {
		super();
		IDPhukien = iDPhukien;
		Tenphukien = tenphukien;
		this.giaban = giaban;
		this.cover = cover;
		this.mota = mota;
		this.soluongton = soluongton;
		IDloaiPK = iDloaiPK;
		Ngaycapnhat = ngaycapnhat;
		IDthuonghieu = iDthuonghieu;
	}


	public Product(int iDPhukien, String tenphukien, int giaban, String cover, String mota, int soluongton,
			int iDloaiPK, Date ngaycapnhat, int iDthuonghieu, String tenthuonghieu, String tenloai) {
		super();
		IDPhukien = iDPhukien;
		Tenphukien = tenphukien;
		this.giaban = giaban;
		this.cover = cover;
		this.mota = mota;
		this.soluongton = soluongton;
		IDloaiPK = iDloaiPK;
		Ngaycapnhat = ngaycapnhat;
		IDthuonghieu = iDthuonghieu;
		Tenthuonghieu = tenthuonghieu;
		Tenloai = tenloai;
	}


	public int getIDPhukien() {
		return IDPhukien;
	}


	public void setIDPhukien(int iDPhukien) {
		IDPhukien = iDPhukien;
	}


	public String getTenphukien() {
		return Tenphukien;
	}


	public void setTenphukien(String tenphukien) {
		Tenphukien = tenphukien;
	}


	public int getGiaban() {
		return giaban;
	}


	public void setGiaban(int giaban) {
		this.giaban = giaban;
	}


	public String getMota() {
		return mota;
	}


	public void setMota(String mota) {
		this.mota = mota;
	}


	public int getSoluongton() {
		return soluongton;
	}


	public void setSoluongton(int soluongton) {
		this.soluongton = soluongton;
	}


	public int getIDloaiPK() {
		return IDloaiPK;
	}


	public void setIDloaiPK(int maloaiPK) {
		IDloaiPK = maloaiPK;
	}


	public Date getNgaycapnhat() {
		return Ngaycapnhat;
	}


	public void setNgaycapnhat(Date ngaycapnhat) {
		Ngaycapnhat = ngaycapnhat;
	}


	public int getIDthuonghieu() {
		return IDthuonghieu;
	}


	public void setIDthuonghieu(int iDthuonghieu) {
		IDthuonghieu = iDthuonghieu;
	}


	public String getTenthuonghieu() {
		return Tenthuonghieu;
	}


	public void setTenthuonghieu(String tenthuonghieu) {
		Tenthuonghieu = tenthuonghieu;
	}


	public String getTenloai() {
		return Tenloai;
	}


	public void setTenloai(String tenloai) {
		Tenloai = tenloai;
	}


	@Override
	public String toString() {
		return "Product [IDPhukien=" + IDPhukien + ", Tenphukien=" + Tenphukien + ", giaban=" + giaban + ", mota="
				+ mota + ", soluongton=" + soluongton + ", MaloaiPK=" + IDloaiPK + ", Ngaycapnhat=" + Ngaycapnhat
				+ ", IDthuonghieu=" + IDthuonghieu + ", Tenthuonghieu=" + Tenthuonghieu + ", Tenloai=" + Tenloai + "]";
	}


	public String getCover() {
		return cover;
	}


	public void setCover(String cover) {
		this.cover = cover;
	}
	
}
