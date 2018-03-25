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
				</ul>
			</div>
			<div class="header_right">
				<ul class="forms_right">					
					<li><a href="#" data-toggle="modal" data-target="#myModalL"> Donate  </a> </li>
					<li><a href="#" data-toggle="modal" data-target="#myModalL"> Receive  </a> </li>
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
						<a class="navbar-brand" href="index.jsp">
							<h1><span class="fa fa-stethoscope" aria-hidden="true"></span>Donor2Receiver </h1>
						</a>
					</div>
					<!--/.navbar-header-->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<nav>
							<ul class="nav navbar-nav">
								<li><a href="index.jsp" class="active">Home</a></li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Manage accounts <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="#" data-toggle="modal" data-target="#myModalL">LOGIN</a></li>										
										<li class="divider"></li>
										<li><a href="#" data-toggle="modal" data-target="#myModalS">SIGN UP</a></li>
										<li class="divider"></li>										
									</ul>
								</li>
								<li><a href="#">About Us</a></li>								
								<li><a href="#">Gallery</a></li>								
								<li><a href="#" data-toggle="modal" data-target="#myModalCon">Contact Us</a></li>								
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
	<!-- about -->
	<div class="about">
		<div class="container">
			<h3 class="heading-agileinfo">Who We are</h3>
			<h3 class="heading-agileinfo"><span> We are a Non Profit Organization,Working towards the welfare of the human race.</span></h3> 
			<div class="col-md-6 about-w3right">
				<img src="images/don.jpg" class="img-responsive" alt="" />
			</div>
			<div class="col-md-6 about-w3left">
				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h5 class="panel-title asd">
								<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false"
								    aria-controls="collapseOne">
								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>BLOOD</a>
							</h5>
						</div>
						<div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne" aria-expanded="false"
						    style="height: 0px;">
							<div class="panel-body panel_text">
								Every two seconds someone in the U.S. needs blood. Approximately 36,000 units of red blood cells are needed every day in the U.S.Nearly 7,000 units of platelets and 10,000 units of plasma are needed daily in the U.S. 
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
							<h5 class="panel-title asd">
								<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false"
								    aria-controls="collapseTwo">
								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>ORGAN
							</a>
							</h5>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo" aria-expanded="false"
						    style="height: 0px;">
							<div class="panel-body panel_text">
								22 people die every day while waiting for a transplant.1 organ donor can save 8 lives and change the lives of more than 50 people.Almost anyone can be an organ donor, regardless of age or medical history. 
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingThree">
							<h5 class="panel-title asd">
								<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false"
								    aria-controls="collapseThree">
								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>TISSUES
							</a>
							</h5>
						</div>
						<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree" aria-expanded="false"
						    style="height: 0px;">
							<div class="panel-body panel_text">
								Tissue donation can greatly enhance a recipient's life quality.Nearly a million tissue transplant surgeries are performed every year in U.S. It is estimated that one in 20 Americans will need some type of tissue transplant.
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //about -->
<!-- emergency -->
<div class="emergency_cases_w3ls">
<div class="emergency_cases_bt">
	<div class="container">
	<div class="emergency_cases_top">
		<div class="col-md-6 emergency_cases_w3ls_left">
			<h4>Customer Care Hours</h4>
			<h6>Monday - Friday&nbsp;<span class="eme">00.00 - 24.00</span></h6>
			<h6>Weekends &nbsp;<span class="eme">6.00 - 20.00</span></h6>
		</div>
		<div class="col-md-6 emergency_cases_w3ls_right">
			<h4>Consult a Doctor</h4>
			<h5><i class="fa fa-phone" aria-hidden="true"></i>+1 807 123 1234 </h5>
			<p>Clear all your queries about the donation process,with our set of qualified doctors.</p>
		</div>
		
		<div class="clearfix"></div>
		</div>
	</div>
	</div>
</div>
<!-- //emergency -->

	<div class="footer_wthree_agile">
		<p>© 2018 D2R. All rights reserved </p>

	</div>
<!-- //footer -->
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