<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form th:action="@{/login}" method="post"
		style="max-width: 350px; margin: 0 auto">
		
		<div class="border border-secondary rounded p-3">
			<p>
				<input type="email" name="email" class="form-control"
					placeholder="E-mail" required />
			</p>
			<p>
				<input type="password" name="password" class="form-control"
					placeholder="Password" required />
			</p>
			<p>
				<input type="checkbox" name="remember-me" />&nbsp;Remember Me
			</p>
			<p>
				<input type="submit" value="Login" class="btn btn-primary" />
			</p>
		</div>
	</form>

</body>
</html>