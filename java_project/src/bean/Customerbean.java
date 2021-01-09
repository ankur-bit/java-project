package bean;

public class Customerbean {
	private int userid;
	private String username;
	private String password;
	private int mobile_number;
	private String address;
	private String gender;
	private String state;
	public Customerbean(int userid, String username, String password, int mobile_number, String address,
			String gender, String state) {
		super();
		this.userid = userid;
		this.username = username;
		this.password = password;
		this.mobile_number = mobile_number;
		this.address = address;
		this.gender = gender;
		this.state = state;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
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
	public int getMobile_number() {
		return mobile_number;
	}
	public void setMobile_number(int mobile_number) {
		this.mobile_number = mobile_number;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "Customerbean [userid=" + userid + ", username=" + username + ", password=" + password
				+ ", mobile_number=" + mobile_number + ", address=" + address + ", gender=" + gender + ", state="
				+ state + "]";
	}
}
