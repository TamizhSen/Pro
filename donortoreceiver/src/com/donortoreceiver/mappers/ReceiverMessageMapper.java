/**
 * 
 */
package com.donortoreceiver.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.donortoreceiver.beans.ReceiverMessage;
import com.donortoreceiver.extractors.ReceiverMessageExtractor;

/**
 * @author Satish reddy
 *
 */
public class ReceiverMessageMapper implements RowMapper<ReceiverMessage> {

	@Override
	public ReceiverMessage mapRow(ResultSet resultSet, int arg1) throws SQLException {
		
		return new ReceiverMessageExtractor().extractData(resultSet);
	}

}
