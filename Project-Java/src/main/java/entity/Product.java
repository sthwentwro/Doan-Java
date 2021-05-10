package entity;

import java.util.Date;

public class Product {
	private int IDPhukien;
	private int IDloaiPK;
	private String tenphukien;
	private int IDthuonghieu;
	private String metaTitle;
	private String mota;
	private int soluongton;
	private String noidungSP; 
	private int giaban;
	private int giacu;
	private String cover;
	private int baohanh;
	private Date ngaytao;
	private Date ngaycapnhat;
	private String nguoisua;
	@Override
	public String toString() {
		return "Product [IDPhukien=" + IDPhukien + ", IDloaiPK=" + IDloaiPK + ", tenphukien=" + tenphukien
				+ ", IDthuonghieu=" + IDthuonghieu + ", metaTitle=" + metaTitle + ", mota=" + mota + ", soluongton="
				+ soluongton + ", noidungSP=" + noidungSP + ", giaban=" + giaban + ", giacu=" + giacu + ", cover="
				+ cover + ", baohanh=" + baohanh + ", ngaytao=" + ngaytao + ", ngaycapnhat=" + ngaycapnhat
				+ ", nguoisua=" + nguoisua + ", tinhtrang=" + tinhtrang + ", luotxem=" + luotxem + ", Tenthuonghieu="
				+ Tenthuonghieu + ", Tenloai=" + Tenloai + "]";
	}

	private boolean tinhtrang;
	private int luotxem;
	private String Tenthuonghieu;
	private String Tenloai;
	
	public Product() {
		
	}

	public Product(int iDPhukien, int iDloaiPK, String tenphukien, int iDthuonghieu, String metaTitle,
			String mota, int soluongton, String noidungSP, int giaban, int giacu, String cover,int baohanh, Date ngaytao,
			Date ngaycapnhat, String nguoisua, boolean tinhtrang, int luotxem) {
		super();
		IDPhukien = iDPhukien;
		IDloaiPK = iDloaiPK;
		this.tenphukien = tenphukien;
		IDthuonghieu = iDthuonghieu;
		this.metaTitle = metaTitle;
		this.mota = mota;
		this.soluongton = soluongton;
		this.noidungSP = noidungSP;
		this.giaban = giaban;
		this.giacu = giacu;
		this.cover = cover;
		this.baohanh = baohanh;
		this.ngaytao = ngaytao;
		this.ngaycapnhat = ngaycapnhat;
		this.nguoisua = nguoisua;
		this.tinhtrang = tinhtrang;
		this.luotxem = luotxem;
	}

	public Product(int iDPhukien, int iDloaiPK, String tenphukien, int iDthuonghieu, String metaTitle,
			String mota, int soluongton, String noidungSP, int giaban, int giacu, String cover,int baohanh, Date ngaytao,
			Date ngaycapnhat, String nguoisua, boolean tinhtrang, int luotxem, String tenthuonghieu, String tenloai) {
		super();
		IDPhukien = iDPhukien;
		IDloaiPK = iDloaiPK;
		this.tenphukien = tenphukien;
		IDthuonghieu = iDthuonghieu;
		this.metaTitle = metaTitle;
		this.mota = mota;
		this.soluongton = soluongton;
		this.noidungSP = noidungSP;
		this.giaban = giaban;
		this.giacu = giacu;
		this.cover = cover;
		this.baohanh = baohanh;
		this.ngaytao = ngaytao;
		this.ngaycapnhat = ngaycapnhat;
		this.nguoisua = nguoisua;
		this.tinhtrang = tinhtrang;
		this.luotxem = luotxem;
		Tenthuonghieu = tenthuonghieu;
		Tenloai = tenloai;
	}
	

	public int getBaohanh() {
		return baohanh;
	}

	public void setBaohanh(int baohanh) {
		this.baohanh = baohanh;
	}

	public int getIDPhukien() {
		return IDPhukien;
	}

	public void setIDPhukien(int iDPhukien) {
		IDPhukien = iDPhukien;
	}

	public int getIDloaiPK() {
		return IDloaiPK;
	}

	public void setIDloaiPK(int iDloaiPK) {
		IDloaiPK = iDloaiPK;
	}

	public String getTenphukien() {
		return tenphukien;
	}

	public void setTenphukien(String tenphukien) {
		this.tenphukien = tenphukien;
	}
	

	public int getIDthuonghieu() {
		return IDthuonghieu;
	}

	public void setIDthuonghieu(int iDthuonghieu) {
		IDthuonghieu = iDthuonghieu;
	}

	public String getMetaTitle() {
		return metaTitle;
	}

	public void setMetaTitle(String metaTitle) {
		this.metaTitle = metaTitle;
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

	public String getNoidungSP() {
		return noidungSP;
	}

	public void setNoidungSP(String noidungSP) {
		this.noidungSP = noidungSP;
	}

	public int getGiaban() {
		return giaban;
	}

	public void setGiaban(int giaban) {
		this.giaban = giaban;
	}

	public int getGiacu() {
		return giacu;
	}

	public void setGiacu(int giacu) {
		this.giacu = giacu;
	}

	public String getCover() {
		return cover;
	}

	public void setCover(String cover) {
		this.cover = cover;
	}

	public Date getNgaytao() {
		return ngaytao;
	}

	public void setNgaytao(Date ngaytao) {
		this.ngaytao = ngaytao;
	}

	public Date getNgaycapnhat() {
		return ngaycapnhat;
	}

	public void setNgaycapnhat(Date ngaycapnhat) {
		this.ngaycapnhat = ngaycapnhat;
	}

	public String getNguoisua() {
		return nguoisua;
	}

	public void setNguoisua(String nguoisua) {
		this.nguoisua = nguoisua;
	}

	public boolean isTinhtrang() {
		return tinhtrang;
	}

	public void setTinhtrang(boolean tinhtrang) {
		this.tinhtrang = tinhtrang;
	}

	public int getLuotxem() {
		return luotxem;
	}

	public void setLuotxem(int luotxem) {
		this.luotxem = luotxem;
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
}
	
	