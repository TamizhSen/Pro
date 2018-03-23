/**
 * 
 */
package com.donortoreceiver.service;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.springframework.beans.factory.annotation.Autowired;

import com.donortoreceiver.beans.ReceiverMessage;
import com.donortoreceiver.dao.IDonorToReceiverDao;



/**
 * @author Satish Reddy
 *
 */
@Path("/receiver")
public class D2RService {
	@Autowired
	IDonorToReceiverDao donorToReceiverDao;

	 @GET
	   @Path("/users")
	   @Produces(MediaType.APPLICATION_XML)
	   public List<ReceiverMessage> getUsers(){
		 System.out.println("inside rest call"+  donorToReceiverDao.getReceiverMessages("NO"));
		 return donorToReceiverDao.getReceiverMessages("NO");
	    
	   }
}
