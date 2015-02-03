<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/indexstyle.css">
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript">
	$(function() {

		jQuery.validator.addMethod("lettersonly", function(value, element) {
			return this.optional(element) || /^[a-z," "]+$/i.test(value);
		}, "Letters and spaces only please");

		$("#formvalidate").validate({
			rules : {
				fname : {
					required : true,
					minlength : 2,
					lettersonly : true
				},
				lname : {
					lettersonly : true
				},
				email : {
					required : true
				},
				/* password : {
					required : true,
					minlength : 6,
					maxlength : 8
				}, */
				address : {
					required : true
				},
				city : {
					required : true,
					lettersonly : true
				},
				state : {
					required : true,
					lettersonly : true
				},
				pincode : {
					required : true,
					number : true
				},
				contactNo : {
					required : true,
					number : true
				},

			/* agree: "required" */
			},
			messages : {
				fname : {
					required : "First name cannot be empty",
					minlength : "First name cannot be less then 2 letter"
				},

				email : {
					required : "Email cannot be empty"
				},
				/* password : {
					required : "password cannot be empty",
					minlength : "password length cannot be less then 6 digits or alphabets ",
					maxlength : "password length cannot be greater then 8 digits or alphabets "
				}, */
				address : {
					required : "Address cannot be empty"
				},
				state : {
					required : "State cannot be empty"
				},
				city : {
					required : "City cannot be empty"
				},
				pincode : {
					required : "Pincode cannot be empty",
					minlength : "Enter valid 6 digit pincode"
				},
				contactNo : {
					required : "Contact cannot be empty"
				}
			}
		});
	});

	$(function() {
		$("#cancle").click(function() {
			$("label.error,h4").hide();
		});
	});
</script>
<style type="text/css">

</style>
</head>
<body>
	<%@include file="header.jsp"%>
	<div class="container" id="indexcontainer">

		<br> <br>
		<div class="panel panel-danger" id="reg-form">
			<div class="panel-heading">
				<h3>Register here...</h3>
			</div>
			<br>
			<div class="panel-boby" id="reg">
			<h5>Fields with <em>*</em> are mandatory</h5>
				<form class="form-horizontal" action="appserv/register"
					id="formvalidate" method="post">
					<div class="form-group">
						<label class="control-label col-sm-2" for="firstname">First
							Name <em>*</em>:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="fname" name="fname"
								placeholder="First Name" required="required">
						</div>

					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="firstname">Last
							Name:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="lname" name="lname"
								placeholder="Last Name">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="firstname">Email@ <em>*</em>:</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id="email" name="email"
								placeholder="Email" required="required">
						</div>
					</div>


					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd">Address <em>*</em>:</label>
						<div class="checkbox-inline">
							<label><input type="radio" name="addressOption"
								value="Home" checked>Home</label>
						</div>
						<div class="checkbox-inline">
							<label><input type="radio" name="addressOption" id="addresslabel"
								value="Office" required="required">Office</label>
						</div>

					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<textarea id="address" name="address" cols="48" rows="5"></textarea>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="firstname">City <em>*</em>:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="city" name="city"
								placeholder="City" required="required">
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="firstname">State <em>*</em>:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="state" name="state"
								placeholder="State" required="required">
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="firstname">Pincode <em>*</em>:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="pincode"
								name="pincode" placeholder="Pincode" required="required">
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="firstname">Mobile
							No <em>*</em>:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="contactNo"
								name="contactNo" placeholder="Contact Number"
								required="required">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-danger">Submit</button>
							<button type="reset" class="btn btn-default"
								onclick="confirmCancle()" id="cancle">Cancle</button>
						</div>

					</div>
				</form>
			</div>
		</div>
	</div>


	
	<%@include file="footer.jsp"%>
</body>
</html>