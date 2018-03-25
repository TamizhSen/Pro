<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>
	<title>Donor2Receiver</title>
	<!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="DonorToReceiver" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
		function sendEmail() {
			var emailId = document.getElementById("emailId").value;
			
			$.ajax({
				type : "POST",
				url : "forgotPassword",
				data : {
					"emailId" : emailId,
					
				},
				beforeSend : function() {
					
				},
				success : function(data) {
					if (data == "FAIL") {
						/* $('#alertModal').find('.modal-body p').text(
						'unable to process the request');
				$('#alertModal').modal('show'); */
				document.getElementById('emailMessage').innerHTML = 'unable to process the request'
					setTimeout("$('#myModalF').modal('hide');",3000);
					} else {
						/*myModalF */
						document.getElementById('emailMessage').innerHTML = 'Password sent to your email!!'
							setTimeout("$('#myModalF').modal('hide');",3000);
					}
				},
				error : function(request, status, error) {
					/* $('#alertModal').find('.modal-body p').text(
					'The request failed:'+ request.responseText);
			$('#alertModal').modal('show'); */
					alert("The request failed: " + request.responseText);
				}
			});

		}
		
		function sendSignup() {
			var emailId = document.getElementById("name").value;
			var password = document.getElementById("password").value;
			
			$.ajax({
				type : "POST",
				url : "signUp",
				data : {
					"email" : emailId,
					"password" : password
					
				},
				beforeSend : function() {
					
				},
				success : function(data) {
					if (data == "FAIL") {
						/* $('#alertModal').find('.modal-body p').text(
						'unable to process the request');
				$('#alertModal').modal('show'); */
				document.getElementById('emailMessageOne').innerHTML = 'unable to process the request'
					setTimeout("$('#myModalS').modal('hide');",3000);
					} else {
						/*myModalF */
						document.getElementById('emailMessageOne').innerHTML = 'SignUp successfull please sign in'
							setTimeout("$('#myModalS').modal('hide');",3000);
					}
				},
				error : function(request, status, error) {
					/* $('#alertModal').find('.modal-body p').text(
					'The request failed:'+ request.responseText);
			$('#alertModal').modal('show'); */
					alert("The request failed: " + request.responseText);
				}
			});

		}
		function sendmail() {
			var message = document.getElementById("message").value;;
			var data =document.getElementById("hide").value;
			$.ajax({
				type : "POST",
				url : "bloodemail",
				data : {
					"message" : message,
					"data" : data
					
				},
				beforeSend : function() {
					
				},
				success : function(data) {
					if (data == "FAIL") {
						/* $('#alertModal').find('.modal-body p').text(
						'unable to process the request');
				$('#alertModal').modal('show'); */
				document.getElementById('success').innerHTML = 'unable to process the request'
					setTimeout("$('#myModalC').modal('hide');",3000);
					} else {
						/*myModalF */
						document.getElementById('success').innerHTML = 'Mail sent successfully'
							setTimeout("$('#myModalC').modal('hide');",3000);
					}
				},
				error : function(request, status, error) {
					/* $('#alertModal').find('.modal-body p').text(
					'The request failed:'+ request.responseText);
			$('#alertModal').modal('show'); */
					alert("The request failed: " + request.responseText);
				}
			});

		}
		function updatehide(data) {
			document.getElementById('hide').value = data;
			
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
	<!-- header -->
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
 					<li><i class="fa fa-window-close" aria-hidden="true"> </i><a  onclick ="logout()" id='logout' href="logout">logout</a></li>
 					 </c:when>
 					<c:otherwise>
 					<li><i class="fa fa-user" aria-hidden="true"></i>${userdeatils.email}
 					</li>
 					<li><i class="fa fa-window-close" aria-hidden="true"> </i><a onclick ="logout()" id='logout' href="logout">logout</a></li>
 					 
    					
  					</c:otherwise>
					</c:choose>
					</c:if>
					
					
					
				</ul>
			</div>
			<div class="header_right">
				<ul class="forms_right">					
					<li><a href="<c:url value="donate" />"> Donate  </a> </li>
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
								<li><a href="home" class="active">Home</a></li>
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
										<li class="divider"></li>
										<li><a href="#" data-toggle="modal" data-target="#">Subscriptions</a></li>
										<li class="divider"></li>
										</ul>
								</li>
								<li><a href="#">My Donations</a></li>								
								<li><a href="helpReceived">Received</a></li>								
								<li><a href="#">Help Others</a></li>
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
	<!-- about -->
	<div class="about">
		<div class="container">
			<h3 class="heading-agileinfo">Tissue<span> Donate Here </span></h3>
			<div class="col-md-12 about-w3left">
				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
				<c:forEach items="${postsList}" var="post" varStatus="loop">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="heading${loop.index} }">
							<h5 class="panel-title asd">
								<a id="${loop.index }"class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse${loop.index}" aria-expanded="false"
								    aria-controls="collapseOne">
								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>
								${post.name}
							</a>
							</h5>
						</div>
						<div id="collapse${loop.index }" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading${loop.index }" aria-expanded="false"
						    style="height: 0px;">
							<div class="panel-body panel_text">
								 ${post.message}
								<p align="center" ><button id="${post.id}" class="" data-toggle="modal" 
								data-target="#myModalC" onclick="javascript:updatehide(${post.id})">Contact Now</button>
							</div>							
						</div>
					</div>
					</c:forEach>
					
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //about -->

	<div class="footer_wthree_agile">
		<p>A © 2018 Donor2Receiver. All rights reserved </p>
	</div>
	
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
	
<!-- Donate Now -->
	<div class="modal video-modal fade" id="myModalC" tabindex="-1" role="dialog" aria-labelledby="myModal">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						Contact Recepient
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
					</div>
						<div class="modal-body">						
							<p>
								  <span><label>Message</label></span>
								  <span><textarea rows="8" cols="70" name="Message" required="" id="message"> </textarea></span>
								  <label><input type="checkbox" checked="checked" name="remember" > I hereby accept to contact the above recepient for blood donation</label></br>	
								  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp 
								  <input type="hidden" id="hide"/>
								  <font color="red"><label id="success"></label></font></br>
								  <input type="button" value="Send Now"  onclick="javascript:sendmail()"/></br>
						    </p>
						</div>
				</div>
			</div>
		</div>
<!-- Donate Now -->	
</body>

</html>