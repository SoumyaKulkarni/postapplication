package application.pojo;

public class Address {
	private String address;
	private String city;
	private String state;
	private String pincode;
	private String contactnum;
	private String email;
	private String addressof;
	
	public Address() {
		// TODO Auto-generated constructor stub
	}

	public Address(String address, String city, String state, String pincode,
			String contactnum, String email,String addressof) {
		super();
		this.addressof=addressof;
		this.address = address;
		this.city = city;
		this.state = state;
		this.pincode = pincode;
		this.contactnum = contactnum;
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getContactnum() {
		return contactnum;
	}

	public void setContactnum(String contactnum) {
		this.contactnum = contactnum;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
	public String getAddressof() {
		return addressof;
	}

	public void setAddressof(String addressof) {
		this.addressof = addressof;
	}

	@Override
	public String toString() {
		return "Address [address=" + address + ", city=" + city + ", state="
				+ state + ", pincode=" + pincode + ", contactnum=" + contactnum
				+ ", email=" + email + ", addressof=" + addressof + "]";
	}
	
	

}
