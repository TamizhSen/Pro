/**
 * 
 */
package com.donortoreceiver.beans;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * @author Satish reddy
 *
 */
@XmlRootElement(name = "receiver")
public class ReceiverMessage {

	private String message;
	private String phone;
	private String name;
	private String username;
	private String category;
	private String id;
	private String approved;
	
	public String getApproved() {
		return approved;
	}
	@XmlElement
	public void setApproved(String approved) {
		this.approved = approved;
	}
	public String getId() {
		return id;
	}
	@XmlElement
	public void setId(String id) {
		this.id = id;
	}
	/**
	 * @return the message
	 */
	public String getMessage() {
		return message;
	}
	/**
	 * @param message the message to set
	 */
	 @XmlElement
	public void setMessage(String message) {
		this.message = message;
	}
	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}
	/**
	 * @param phone the phone to set
	 */
	 @XmlElement
	public void setPhone(String phone) {
		this.phone = phone;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	 @XmlElement
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @param username the username to set
	 */
	 @XmlElement
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * @return the category
	 */
	public String getCategory() {
		return category;
	}
	/**
	 * @param category the category to set
	 */
	 @XmlElement
	public void setCategory(String category) {
		this.category = category;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "ReceiverMessage [message=" + message + ", phone=" + phone + ", name=" + name + ", username=" + username
				+ ", category=" + category + "]";
	}
	
	


	
}
