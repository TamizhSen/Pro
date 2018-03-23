/**
 * 
 */
package com.donortoreceiver.dao;

import java.util.List;

import com.donortoreceiver.beans.Donor;
import com.donortoreceiver.beans.ReceiverMessage;
import com.donortoreceiver.beans.Transactions;
import com.donortoreceiver.beans.UserDetails;

/**
 * @author Satish Reddy
 *
 */
public interface IDonorToReceiverDao {

	public Boolean login(String userName, String password);
	public Boolean addUserDetais(UserDetails  userDetails);
	public Boolean updateUserdetails(UserDetails userDetails);
	public UserDetails getUserDetails(String userName);
	public List<Transactions> getContatcedList(String userName);
	public String forgotPassword(String userName);
	public Boolean postMessage(ReceiverMessage receiverMessage);
	public boolean updatePassword(String password, String userName);
	public List<ReceiverMessage> getReceiverMessages(String all);
	public List<ReceiverMessage> getReceiverMessages(String type,String all);
	public void insertTransaction(List<Transactions> LTransactions);
	public void donated(List<Donor> donor);
	public boolean updateReceiverMessage(List<String> ids);
	
}
