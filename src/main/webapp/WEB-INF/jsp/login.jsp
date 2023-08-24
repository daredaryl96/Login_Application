<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>

<head>
<title>Web Application</title>
<link href="webjars/bootstrap/5.3.1/css/bootstrap.min.css"
	rel="stylesheet">

</head>

<body>
	<a href="/login?lang=en" role="button">English</a>
	<a href="/login?lang=cn" role="button">Mandarin</a>
	<div class="container">
		<form class="text-center border border-light p-5" action="/login"
			method="post">

			<p class="h4 mb-4">
			
			<h3>${login_signin}</h3>
			</p>

			<!-- Email -->
			<Fieldset>
				<input type="text" name="username" class="form-control mb-4"
					placeholder="${login_username}" required="required">
			</Fieldset>
			</br>
			<!-- Password -->
			<FieldSet>
				<input type="password" name="password" class="form-control mb-4"
					placeholder="${login_password}" required="required">
			</FieldSet>
			</br>

			<!-- Sign in button -->
			<button class="btn btn-info btn-block my-4" type="submit">${login_submit}
			</button>


			<h3>
				<font color="red">${errorMessage}</font>
			</h3>

		</form>
		<script src="webjars/jquery/3.7.0/jquery.min.js"></script>
		<script src="webjars/bootstrap/5.3.1/js/bootstrap.min.js"></script>
	</div>
</body>
</html>