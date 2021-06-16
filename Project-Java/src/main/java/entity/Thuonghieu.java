package entity;

public class Thuonghieu {
	private String IDThuongHieu;
	private String TenThuongHieu;
	
	
	public Thuonghieu() {
		super();
	}


	public Thuonghieu(String iDThuongHieu, String tenThuongHieu) {
		IDThuongHieu = iDThuongHieu;
		TenThuongHieu = tenThuongHieu;
	}


	public String getIDThuongHieu() {
		return IDThuongHieu;
	}


	public void setIDThuongHieu(String iDThuongHieu) {
		IDThuongHieu = iDThuongHieu;
	}


	public String getTenThuongHieu() {
		return TenThuongHieu;
	}


	public void setTenThuongHieu(String tenThuongHieu) {
		TenThuongHieu = tenThuongHieu;
	}
	
}
