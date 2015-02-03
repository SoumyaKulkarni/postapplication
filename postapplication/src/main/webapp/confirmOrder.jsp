<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order placed successfully</title>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/validate.js"></script>
<script type="text/javascript" src="js/jquery-validate.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<style type="text/css">
#pick {
	height: 550px;
	overflow: auto;
	margin-left: 500px;
}
#body{
	font-size:26px;
	line-height: 3.429;
	color: #F9F4FB;
	text-align: center; 
}
.img-responsive{
	height: 90px;
	width: 60px;
	margin-top: 5px;

}

#header,#header1{
	background-color:maroon;
	min-height: 30px;
}

#navhead{
	min-height: 30px;
	
}#footer{
	background-color: maroon;
}
#footerp{
	text-align: center;
	color: #F9F4FB;
}
.form-group{
	margin-left: 10px;
}
a{
margin-left: 450px;
}

</style>
</head>
<body>
<%@include file="header.jsp" %>
<div class="container" id="pick">
<br>
<img alt="delivery.." src="image/delivering.jpg">
<h3>Your order has been placed successfully..</h3><a href="appserv/">home</a>
</div>

<%@include file="footer.jsp" %>
</body>
</html>