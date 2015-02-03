<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pick-Up</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<!-- <link href="css/register.css" rel="stylesheet"> -->
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/pickup.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script src="js/bootstrap.min.js"></script>


<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>

<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript">
$(function() {
	$("#datepicker").datepicker({
		minDate:new Date,
		changeMonth : true,
		changeYear : true
		
	});
});

	 jQuery.validator.addMethod("lettersonly", function(value, element) 
			{
			return this.optional(element) || /^[a-z," "]+$/i.test(value);
			}, "Letters and spaces only please");
	 
	$("#formvalidate").validate({
		rules : {
			datepicker : {
				required : true
			},
			time : {
				required : true
			},
			weight : {
				required : true,
				lettersonly : true
			},
			/* agree: "required" */
		},
		messages : {
			datepicker : {
				required : "Please select pickup date"
			},
			time : {
				required : "Please select pickup time"
			},
			weight : {
				required : "Please select approximate weight"
			},
			pZipcode : {
				required : "zipcode cannot be empty",
				minlength : "length cannot be less then 6 digits"
			}
		}

});

$(function() {
	$("#reset").click(function() {
		$("label.error,h4").hide();
	});
}); 


</script>

</head>
<body>
<%@include file="header.jsp"%>
	<div class="container" id="pickUpContainer">

			<br> <br>
			<div class="panel panel-danger" id="reg-form">
				<div class="panel-heading">
					<h3>PickUp Details</h3>
				</div>
				<br>
				<div class="panel-boby">
				<h5>Fields with <em>*</em> are mandatory</h5>
					<form class="form-horizontal" role="form" action="appserv/pickup"
						id="formvalidate">
						<div class="form-group">
							<label class="control-label col-sm-2">Date <em>*</em> :</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="datepicker"
									name="datepicker" placeholder="PickUp Date(DD/MM/YY)"
									 readonly="readonly">
							</div>

						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="firstname">Time <em>*</em> :</label>
							<div class="col-sm-10">
								<select class="form-control" id="time" name="time" required>
									<option>--Pickup at--</option>
									<option>7:00 AM</option>
									<option>8:00 AM</option>
									<option>9:00 Am</option>
									<option>10:00 AM</option>
									<option>11:00 AM</option>
									<option>12:00 PM</option>
									<option>1:00 PM</option>
									<option>2:00 PM</option>
									<option>3:00 PM</option>
									<option>4:00 PM</option>
									<option>5:00 PM</option>
									<option>6:00 PM</option>
									<option>7:00 PM</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2" for="firstname">Approximate
								weight <em>*</em> :</label>
							<div class="col-sm-10">
									<select class="form-control" id="weight" name="weight">
									<option>--select--</option>
									<option>1 kg</option>
									<option>2 kg</option>
									<option>3 kg</option>
									<option>4 kg</option>
									<option>5 kg</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-danger">Submit</button>
								<button type="reset" class="btn btn-default"
									onclick="confirmCancle()">Cancle</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>


	<%@include file="footer.jsp"%>
</body>
</html>