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
		<%
			session = request.getSession(false);
			if (session.getAttribute("username") == null && session.getAttribute("roles") == null) {
				response.sendRedirect("login.jsp");
			}
		%>
		<h3>
			${welcome_name}:
			<%
				out.print(session.getAttribute("username"));
			%>
		</h3>
		<h3>
			${welcome_role}:
			<%
				String roles = session.getAttribute("roles").toString();
				out.print(roles.substring(1, roles.length() - 1));
			%>
		</h3>

		<a class="btn btn-danger" href="/logout" role="button">${welcome_logout}</a>

		<script src="webjars/jquery/3.7.0/jquery.min.js"></script>
		<script src="webjars/bootstrap/5.3.1/js/bootstrap.min.js"></script>
	</div>
</body>
</html>