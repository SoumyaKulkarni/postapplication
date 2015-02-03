package application.pojo;

public class PickUpDetails {
	private String email;
	private String pickupDate;
	private String pickupTime;
	private String weightOfparcel;
	
	public PickUpDetails() {
		// TODO Auto-generated constructor stub
	}

	public PickUpDetails(String email, String pickupDate, String pickupTime,
			String weightOfparcel) {
		super();
		this.email = email;
		this.pickupDate = pickupDate;
		this.pickupTime = pickupTime;
		this.weightOfparcel = weightOfparcel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPickupDate() {
		return pickupDate;
	}

	public void setPickupDate(String pickupDate) {
		this.pickupDate = pickupDate;
	}

	public String getPickupTime() {
		return pickupTime;
	}

	public void setPickupTime(String pickupTime) {
		this.pickupTime = pickupTime;
	}

	public String getWeightOfparcel() {
		return weightOfparcel;
	}

	public void setWeightOfparcel(String weightOfparcel) {
		this.weightOfparcel = weightOfparcel;
	}

	@Override
	public String toString() {
		return "PickUpDetails [email=" + email + ", pickupDate=" + pickupDate
				+ ", pickupTime=" + pickupTime + ", weightOfparcel="
				+ weightOfparcel + "]";
	}
	
	
}
