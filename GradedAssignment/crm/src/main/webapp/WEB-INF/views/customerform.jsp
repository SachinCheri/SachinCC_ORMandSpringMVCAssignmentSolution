<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Save Customer</title>
</head>

<div class="container">

		<h3>CUSTOMER RELATIONSHIP MANAGEMENT</h3>
		<hr>

		<p class="h4 mb-4">Customer</p>

		<form action="save" method="post">

			<!-- Add hidden form field to handle update -->
			<div class="form-group">
				<input type="hidden" class="form-control" placeholder="Enter ID"
					name="id" value="${customer.id}">

			<div class="form-group">
				<input type="text" name="firstName" value="${customer.firstName}"
					class="form-control mb-4 col-4" placeholder="FristName">

			</div>

			<div class="form-group">

				<input type="text" name="lastName" value="${customer.lastName}"
					class="form-control mb-4 col-4" placeholder="LastName">


			</div>

			<div class="form-group">

				<input type="text" name="email" value="${customer.email}"
					class="form-control mb-4 col-4" placeholder="email">


			</div>
			<button type="submit" class="btn btn-info col-2">Save</button>
		</form>

		<hr>
		<a href="CRM/list">Back to Customers List</a>

	</div>
</body>

</html>










