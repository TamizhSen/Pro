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
					<li><a href="donate"> Donate  </a> </li>
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
	<!-- services -->
<div class="services">
<div class="container">
		<h3 class="heading-agileinfo">Welcome To The World of Pure Hearts!<span>Thanks for being a part of our Projects.</span></h3>	
		<div class="services-top-grids">
			<div class="col-md-4">
				<div class="grid1">
					<i class="fa fa-tint" aria-hidden="true"></i>
					<h4>BLOOD</h4>
					<ul><li class="post-title"><a href="blood" class="active">Be a Donor Now !!!</a></li></ul></br>
					<p>Every two seconds someone in the U.S. needs blood. Approximately 36,000 units of red blood cells are needed every day in the U.S.Nearly 7,000 units of platelets and 10,000 units of plasma are needed daily in the U.S. </p>
				</div>
			</div>
			<div class="col-md-4">
				<div class="grid1">
					<i class="fa fa-heartbeat" aria-hidden="true"></i>
					<h4>ORGAN</h4>					
					<ul><li class="post-title"><a href="organ" class="active">Be a Donor Now !!!</a></li></ul></br>
					<p>22 people die every day while waiting for a transplant.1 organ donor can save 8 lives and change the lives of more than 50 people.Almost anyone can be an organ donor, regardless of age or medical history. </p>
				</div>
			</div>
			<div class="col-md-4">
				<div class="grid1">
					<i class="fa fa-medkit" aria-hidden="true"></i>
					<h4>TISSUES</h4>					
					<ul><li class="post-title"><a href="tissue" class="active">Be a Donor Now !!!</a></li></ul></br>
					<p>Tissue donation can greatly enhance a recipient's life quality.Nearly a million tissue transplant surgeries are performed every year in U.S. It is estimated that one in 20 Americans will need some type of tissue transplant.</p>
				</div>
			</div>			
			<div class="clearfix"></div>
		</div>
	
	</div>
</div>
<!--services -->

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
</body>

</html>