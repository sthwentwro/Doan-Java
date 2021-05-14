package entity;

public class User {
	private int ID;
	private String username;
	private String password;
	private String email;
	private String sdt;
	private String diachi;
	private String fullname;
	private int roleid;
	private String rolename;
	public User() {
	}

	public User(int iD, String username, String password, String email, String sdt, String diachi, String fullname,int roleid) {
		ID = iD;
		this.username = username;
		this.password = password;
		this.email = email;
		this.sdt = sdt;
		this.diachi = diachi;
		this.fullname = fullname;
		this.roleid = roleid;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public int getRoleid() {
		return roleid;
	}

	public void setRoleid(int roleId) {
		this.roleid = roleId;
	}

	public String getRolename() {
		return rolename;
	}

	public void setRolename(String rolename) {
		this.rolename = rolename;
	}	
}
