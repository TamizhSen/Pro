/**
 * 
 */
package com.donortoreceiver.beans;

/**
 * @author Satish reddy
 *
 */
public class Donor {

	private String id;
	private String category;
	private String lastDonated;
	private String userName;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getLastDonated() {
		return lastDonated;
	}
	public void setLastDonated(String lastDonated) {
		this.lastDonated = lastDonated;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
}
