package entity;

public class Category {
	private int idcategory;
	public int getIdcategory() {
		return idcategory;
	}
	public void setIdcategory(int idcategory) {
		this.idcategory = idcategory;
	}
	public String getTenloai() {
		return tenloai;
	}
	public void setTenloai(String tenloai) {
		this.tenloai = tenloai;
	}
	private String tenloai; 
	public Category() {}
	public Category (int idcategory, String tenloai) {
		this.idcategory=idcategory;
		this.tenloai=tenloai;
	}
}