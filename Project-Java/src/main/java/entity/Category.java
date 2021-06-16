package entity;

public class Category {
	private int Idcategory;
	private String tenloai;
	
	
	public int getIdcategory() {
		return Idcategory;
	}
	public void setIdcategory(int idcategory) {
		this.Idcategory = idcategory;
	}
	public String getTenloai() {
		return tenloai;
	}
	public void setTenloai(String tenloai) {
		this.tenloai = tenloai;
	}
	 
	public Category() {}
	public Category (int idcategory, String tenloai) {
		this.Idcategory=idcategory;
		this.tenloai=tenloai;
	}
}