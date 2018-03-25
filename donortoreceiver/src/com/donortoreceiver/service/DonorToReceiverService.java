/**
 * 
 */
package com.donortoreceiver.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.donortoreceiver.beans.ReceiverMessage;
import com.donortoreceiver.beans.Transactions;
import com.donortoreceiver.beans.UserDetails;
import com.donortoreceiver.dao.IDonorToReceiverDao;
import com.donortoreceiver.mailing.Contact;
import com.donortoreceiver.utils.DonorToReceiverUtils;

/**
 * @author Satish Reddy
 *
 */
@Component("donorToReceiverService")
public class DonorToReceiverService {
	@Autowired
	IDonorToReceiverDao donorToReceiverDao;
	@Autowired
	DonorToReceiverUtils donorToReceiverUtils;
	@Autowired
	Contact mail;
	public Boolean login(String userName, String password) {
		return  donorToReceiverDao.login(userName, password);

	}
	public UserDetails getUserDetails(String userName) {

		return donorToReceiverDao.getUserDetails(userName);
	}
	public boolean  addUser(String userName, String password,Model model) {

		boolean isUpdated = donorToReceiverDao.addUserDetais(donorToReceiverUtils.getObject(userName, password));
		return isUpdated;


	}
	public boolean update(UserDetails userDetail) {

		return donorToReceiverDao.updateUserdetails(userDetail);
	}
	public boolean forgotPassword(String email) {

		String password = donorToReceiverDao.forgotPassword(email);
		String template =null;
		try {
			template = donorToReceiverUtils.readTemplates("forgotPassword.txt");
		} catch (IOException e) {

			e.printStackTrace();
			return false;
		}
		template =template.replace("{{UserName}}", email);
		template= template.replace("{{password}}", password);
		return mail.sendMail(email, "New password", email,template)?true:false;


	}
	public boolean postMessage(ReceiverMessage receiverMessage) {

		return donorToReceiverDao.postMessage(receiverMessage);
	}
	public boolean updatePassword(String password, String userName) {

		return donorToReceiverDao.updatePassword(password,userName);
	}
	public List<ReceiverMessage> getpostMessage() {

		return donorToReceiverDao.getAllPosts("NO");
	}
	public void contactReceivers(String[] str,String userName) {
		
		List<ReceiverMessage> list = donorToReceiverDao.getAllPosts(Arrays.asList(str));
		String template =null;
		try {
			template = donorToReceiverUtils.readTemplates("contactReceivers.txt");
		} catch (IOException e) {

			e.printStackTrace();
			
		}
		template =template.replace("{{userName}}", userName);
		System.out.println("template : "+template);
		 mail.sendMail(getRecepints(list), "Willing to help", userName,template);
		 donorToReceiverDao.insertTransaction(getListOfTransactions(list,userName));
		
		
	}
	private List<Transactions> getListOfTransactions(List<ReceiverMessage> list, String userName) {
		 List<Transactions> tList = new ArrayList<>();
		for (ReceiverMessage receiverMessage:list) {
			tList.add(new Transactions(userName,receiverMessage.getCategory(),null,receiverMessage.getUsername()));
		}
		return tList;
	}
	private String[] getRecepints(List<ReceiverMessage> list) {
		String[] str = new String[list.size()];
		int count =0;
		for (ReceiverMessage receiverMessage:list) {
			
			str[count] = receiverMessage.getUsername();
			count++;
		}
		return str;
	}
	public List getTransactins(String userName) {
		
		return donorToReceiverDao.getContatcedList(userName);
	}
	public List getReceviverMessages(String string) {
		
		return donorToReceiverDao.getReceviverMessages(string);
	}
	public boolean sendEmail(String userName, String message, String data) {
		List<ReceiverMessage> list = donorToReceiverDao.getAllPosts(Arrays.asList(data));
		/*String template =null;
		try {
			template = donorToReceiverUtils.readTemplates("contactReceivers.txt");
		} catch (IOException e) {

			e.printStackTrace();
			
		}
		template =template.replace("{{userName}}", userName); */
		//System.out.println("template : "+template);
		System.out.println("list :"+list);
		 
		 donorToReceiverDao.insertTransaction(getListOfTransactions(list,userName));
		return mail.sendMail(getRecepints(list), "Willing to help", userName,message);
	}

}
