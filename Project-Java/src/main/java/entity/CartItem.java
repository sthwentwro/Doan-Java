package entity;

public class CartItem {
	private int id;
	private Product product;
	private long dongia;
	private long tongphu;
	private int quantity;
	
	public long getTongphu() {
		return tongphu;
	}
	public void setTongphu(long tongphu) {
		this.tongphu = tongphu;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public long getDongia() {
		return dongia;
	}
	public void setDongia(long dongia) {
		this.dongia = dongia;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getId() {
		return id;
	}
	
	public CartItem() { super();}
	public CartItem(int id, Product product,long dongia,int quantity) {
		this.id=id;
		this.product=product;
		this.dongia=dongia;
		this.quantity=quantity;
	}
}
