/**
 * 
 */
package com.donortoreceiver.extractors;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.donortoreceiver.beans.ReceiverMessage;

/**
 * @author Satish Reddy
 *
 */
public class ReceiverMessageExtractor implements ResultSetExtractor<ReceiverMessage> {

	@Override
	public ReceiverMessage extractData(ResultSet resultSet) throws SQLException, DataAccessException {
		ReceiverMessage receiverMessage = new ReceiverMessage();
		/*idReceiver,category,message,name,phone,approved,username*/
		try {
			receiverMessage.setId(resultSet.getString(1));
			receiverMessage.setCategory(resultSet.getString(2));
			receiverMessage.setMessage(resultSet.getString(3));
			receiverMessage.setName(resultSet.getString(4));
			receiverMessage.setUsername(resultSet.getString(7));
			receiverMessage.setPhone(resultSet.getString(5));
			receiverMessage.setApproved(resultSet.getString(6));
		} catch (Exception e) {
			
			e.printStackTrace();
			receiverMessage=null;
		}
		
		return receiverMessage;
	}

}
