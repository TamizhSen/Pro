<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>
	<title>Donor to Receiver</title>
	<!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="New Clinic Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--//tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/appointment_style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //for bootstrap working -->
	<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600,600i,700" rel="stylesheet">
</head>

<body>
<div class="header" id="home">
		<div class="top_menu_w3layouts">
		<div class="container">
			 <div class="header_left">
				<ul>
					<li><i class="fa fa-map-marker" aria-hidden="true"></i> Thunder Bay, Canada </li>
					<li><i class="fa fa-phone" aria-hidden="true"></i> +(1) 807 356 4561</li>
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="mailto:donortoreceiver@gmail.com">donortoreceiver@gmail.com</a></li>
					<c:if test="${userdeatils ne null}">
					<c:choose>
					<c:when test="${userdeatils.firstName ne null}">
    					<li><i class="fa fa-user" aria-hidden="true"></i>${userdeatils.firstName}</li>
 					<li><i class="fa fa-window-close" aria-hidden="true"> </i><a href="logout">logout</a></li>
 					 </c:when>
 					 
 					<c:otherwise>
 					<li><i class="fa fa-user" aria-hidden="true"></i>${userdeatils.email}
 					</li>
 					<li><i class="fa fa-window-close" aria-hidden="true"> </i><a href="logout">logout</a></li>
 					 
    					
  					</c:otherwise>
					</c:choose>
					</c:if>
					<c:if test="${sessionScope.userdeatils ne null and userdeatils eq null}">
					<c:choose>
 					 <c:when test="${sessionScope.userdeatils.userName ne null}">
    					<li><i class="fa fa-user" aria-hidden="true"></i>${sessionScope.userdeatils.userName}</li>
 					<li><i class="fa fa-window-close" aria-hidden="true"> </i><a href="logout">logout</a></li>
 					 </c:when>
 					<c:otherwise>
 					<li><i class="fa fa-user" aria-hidden="true"></i>${sessionScope.userdeatils.email}
 					</li>
 					<li><i class="fa fa-window-close" aria-hidden="true"> </i><a href="logout">logout</a></li>
 					 
    					
  					</c:otherwise>
					</c:choose>
					</c:if>
					
 					 
					
					
					
				</ul>
			</div>
			<div class="header_right">
				<ul class="forms_right">					
					<li><a href="#"> Donate  </a> </li>
					<li><a href="message"> Receive  </a> </li>
				</ul>
			</div>
			<div class="clearfix"> </div>
			</div> 
		</div>

		<div class="content white">
			<nav class="navbar navbar-default" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
						<a class="navbar-brand" href="home">
							<h1><span class="fa fa-stethoscope" aria-hidden="true"></span>Donor2Receiver </h1>
						</a>
					</div>
					<!--/.navbar-header-->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<nav>
							<ul class="nav navbar-nav">
								<li><a href="home" >Home</a></li>
								<li class="dropdown">
							<!--  		<a href="#" class="dropdown-toggle" data-toggle="dropdown">Manage accounts <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="#" data-toggle="modal" data-target="#myModalL">LOGIN</a></li>										
										<li class="divider"></li>
										<li><a href="#" data-toggle="modal" data-target="#myModalS">SIGN UP</a></li>
										<li class="divider"></li>										
									</ul>
									-->
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Manage accounts <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="#" data-toggle="modal" data-target="#myModalL">Update Profile</a></li>										
										<li class="divider"></li>
										<li><a href="#" data-toggle="modal" data-target="#myModalP">Update Password</a></li>	
								</ul>
								<li><a href="helpReceived">Received</a></li>
								<li><a href="about.jsp" >About Us</a></li>								
								<li><a href="faq.jsp">FAQ</a></li>						
								<li><a href="#" data-toggle="modal" data-target="#myModalCon">Contact Us</a></li>
								<!--  <li><a href="logout">logout</a></li> -->
							</ul>
						</nav>
					</div>
					<!--/.navbar-collapse-->
					<!--/.navbar-->
				</div>
			</nav>
		</div>
	</div>
	<!-- banner -->
<div class="banner_inner_content_agile_w3l">
	
</div>
	<!--//banner -->
		<!-- /inner_content -->
	<div class="banner-bottom">
		<div class="container">
			<div class="inner_sec_info_agileits_w3">
              <h2 class="heading-agileinfo">Post a Message<span>Let the donor's know that you are in need</span></h2>
				<div class="contact-form">
					     <form:form method="post" action="receiverMessage" modelAttribute="message">
							 <div class="left_form">
					    	<div>
						    	<span><label>Name *</label></span>
						    	<span><form:input name="userName" type="text" path="name" class="textbox"/></span>
						    </div>
						    <div>
						     	<span><label>phone</label></span>
						    	<span><form:input name="userPhone" type="text" path="phone" class="textbox"/></span>
						    </div>
						    <div>
						     	<span><label>Category</label></span>
						    	<span><select size="1" name="category" id="category"
										class="form-control">
											<option value="Blood" selected="selected">Blood</option>
											<option value="Organ">Organ</option>
											<option value="Tissue">Tissue</option>
											</select></span>
						    </div>
					    </div>
					    <div class="right_form">
								<div>					    	
									<span><label>Message *</label></span>
									<span><form:textarea name="Message" path="message" /> </span>
								</div>
							   <div>
									<span><input type="submit" value="Submit" class="myButton"></span>
							  </div>
					    </div>
					    <div class="clearfix"><c:if test="${posted ne null}"><font color="red">${posted }</font></c:if></div>
						</form:form>
				  </div>
			</div>
		

		</div>
	</div>
	<!-- footer -->
	<!-- div class="footer_top_agile_w3ls">
		<div class="container">
			<div class="col-md-3 footer_grid">
				<h3>About Us</h3>
				<p>Nam libero tempore cum vulputate id est id, pretium semper enim. Morbi viverra congue eros.

				</p>
				
			</div>
			<div class="col-md-3 footer_grid">
				<h3>Latest News</h3>
				<ul class="footer_grid_list">
					<li><i class="fa fa-angle-right" aria-hidden="true"></i>
						<a href="#" data-toggle="modal" data-target="#myModal">Lorem ipsum neque vulputate </a>
					</li>
					<li><i class="fa fa-angle-right" aria-hidden="true"></i>
						<a href="#" data-toggle="modal" data-target="#myModal">Dolor amet sed quam vitae</a>
					</li>
					<li><i class="fa fa-angle-right" aria-hidden="true"></i>
						<a href="#" data-toggle="modal" data-target="#myModal">Lorem ipsum neque, vulputate </a>
					</li>
					<li><i class="fa fa-angle-right" aria-hidden="true"></i>
						<a href="#" data-toggle="modal" data-target="#myModal">Dolor amet sed quam vitae</a>
					</li>
					<li><i class="fa fa-angle-right" aria-hidden="true"></i>
						<a href="#" data-toggle="modal" data-target="#myModal">Lorem ipsum neque, vulputate </a>
					</li>
				</ul>
			</div>
			<div class="col-md-3 footer_grid">
				<h3>Contact Info</h3>
				<ul class="address">
					<li><i class="fa fa-map-marker" aria-hidden="true"></i>8088 USA, Honey block, <span>New York City.</span></li>
					<li><i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">info@example.com</a></li>
					<li><i class="fa fa-phone" aria-hidden="true"></i>+09187 8088 9436</li>
				</ul>
			</div>
			<div class="col-md-3 footer_grid ">
				<h3>Sign up for our Newsletter</h3>
				<p>Get Started For Free</p>
				<div class="footer_grid_right">

					<form action="#" method="post">
						<input type="email" name="Email" placeholder="Email Address..." required="">
						<input type="submit" value="Submit">
					</form>
				</div>
			</div>
			<div class="clearfix"> </div>

		</div>
	</div-->
	<div class="footer_wthree_agile">
		<p>A © 2018 Donor2Receiver. All rights reserved</a></p>
	</div>
	<!-- Login -->
	<div class="modal video-modal fade" id="myModalL" tabindex="-1" role="dialog" aria-labelledby="myModal">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						My Profile
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
					</div>
						<div class="modal-body">
						<div class="col-sm-3 text-center test_img">
							<img src="images/avatar.png" alt=" " class="img-responsive" /></div>
							<form:form action="update" name="updateForm" method="post" modelAttribute="detailsUpdate" class="niceform">
							<fieldset>
							<table>
								<tr>
									<td><span
										style="margin: 15px 54px 10px 0px; display: inline-block;">First
											Name</span></td>
									<td><form:input path="firstName" type="text" value="${detailsUpdate.firstName}"
											class="form-control"
											style="margin-bottom: 10px; width: 250px;" /></td>
									<td><span
										style="margin: 15px 54px 10px 0px; display: inline-block;"><form:errors
												path="firstName" cssClass="error" style="font:red" /></span></td>
								</tr>
								<tr>
									<td><span
										style="margin: 15px 54px 10px 0px; display: inline-block;">LastName
								 </span></td>
									<td><form:input path="lastName" type="text" value="${detailsUpdate.lastName}"
											class="form-control"
											style="margin-bottom: 10px; width: 250px;" /></td>
									<td><span
										style="margin: 15px 54px 10px 0px; display: inline-block;"><form:errors
												path="lastName" cssClass="error" style="font:red" /></span></td>
								</tr>
								<tr>
									<td><span
										style="margin: 15px 54px 10px 0px; display: inline-block;">Contact
											Number</span></td>
									<td><form:input path="phone" type="text" value="${detailsUpdate.phone}"
											class="form-control"
											style="margin-bottom: 10px; width: 250px;" /></td>
									<td><span
										style="margin: 15px 54px 10px 0px; display: inline-block;"><form:errors
												path="phone" cssClass="error" style="font:red" /></span></td>
								</tr>
								<tr>
									<td><span
										style="margin: 15px 54px 10px 0px; display: inline-block;">City
								 </span></td>
									<td><form:input path="city" type="text" value="${detailsUpdate.city}"
											class="form-control"
											style="margin-bottom: 10px; width: 250px;" /></td>
									<td><span
										style="margin: 15px 54px 10px 0px; display: inline-block;"><form:errors
												path="city" cssClass="error" style="font:red" /></span></td>
								</tr>
								<tr>
									<td><span
										style="margin: 15px 54px 10px 0px; display: inline-block;">Country
								 </span></td>
									<td><form:input path="country" type="text" value="${detailsUpdate.country}"
											class="form-control"
											style="margin-bottom: 10px; width: 250px;" /></td>
									<td><span
										style="margin: 15px 54px 10px 0px; display: inline-block;"><form:errors
												path="country" cssClass="error" style="font:red" /></span></td>
								</tr>
							
								<tr>
									<td><span
										style="margin: 15px 54px 10px 0px; display: inline-block;">Date:
									</span></td>
									<td><form:input path="dob" class="form-control" type="date"
											style="margin-bottom: 10px; width: 250px;" id="date" /></td>
									<td><span
										style="margin: 15px 54px 10px 0px; display: inline-block;"><form:errors
												path="dob" cssClass="error" /></span></td>
								</tr>
								
								

								<tr class="submit">
									<td colspan="1" align="center"><input type="submit"
										name="submit" id="submit" value="Submit" /></td>
										
								</tr>

							</table>

						</fieldset>
							
							</form:form>
						</div>
				</div>
			</div>
		</div>
<!-- Login -->
	<!-- Update Password-->
		<div class="modal video-modal fade" id="myModalP" tabindex="-1" role="dialog" aria-labelledby="myModal">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						Update Password
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
					</div>
						<div class="modal-body">
						<p>
							<label for="psw"><b>Password</b></label>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
							<input type="password" placeholder=" Enter Password" name="psw" id="psw" required><br><br>
							<label for="psw-repeat"><b>Repeat Password</b></label>&nbsp &nbsp
							<input type="password" placeholder=" Repeat Password" name="psw-repeat" id="rpt" required>	
							<p><label id="passwordUpdated"></label></p>
							<p><button type="submit" onclick="javascript:updatePassword()" class="">Update</button>
						</P>						
					</div>
				</div>
			</div>
		</div>
	<!-- Sign up-->
	<!-- Contact Us-->
	<div class="modal video-modal fade" id="myModalCon" tabindex="-1" role="dialog" aria-labelledby="myModal">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						Contact Us
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
					</div>
						<div class="modal-body">
						<p>
							<label><b>DONOR2RECEIVER</b></label></br>
							<label><b>Location:</b> ThunderBay, Canada</label></br>
							<label><b>Call us at :</b>+1 807 356 4561</label></br>
							<label><b>Mail us at :</b>donortoreceiver@gmail.com</label></br>
						</p>						
					</div>
				</div>
			</div>
		</div>
	<!-- Contact Us-->
	<!-- forgot password-->
	
	<div class="modal video-modal fade" id="myModalF" tabindex="-1" role="dialog" aria-labelledby="myModal">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						Forgot Password
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
					</div>
						<div class="modal-body">
						<p>
							<label for="email"><b>Email ID</b></label>
							<input type="text" placeholder="Enter Email" name="email" required><br>
							<p><button type="submit" class="">Send Mail</button>
						</P>						
					</div>
				</div>
			</div>
		</div>
	<!-- forgot password-->

	<!-- //footer 
	<!-- bootstrap-modal-pop-up 
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					New Clinic
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
					<div class="modal-body">
						<img src="images/g7.jpg" alt=" " class="img-responsive" />
						<p>Ut enim ad minima veniam, quis nostrum 
							exercitationem ullam corporis suscipit laboriosam, 
							nisi ut aliquid ex ea commodi consequatur? Quis autem 
							vel eum iure reprehenderit qui in ea voluptate velit 
							esse quam nihil molestiae consequatur, vel illum qui 
							dolorem eum fugiat quo voluptas nulla pariatur.
							<i>" Quis autem vel eum iure reprehenderit qui in ea voluptate velit 
								esse quam nihil molestiae consequatur.</i></p>
					</div>
			</div>
		</div>
	</div>-->
<!-- //bootstrap-modal-pop-up --> 
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script>
		$('ul.dropdown-menu li').hover(function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
		}, function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
		});
	</script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>

</html>