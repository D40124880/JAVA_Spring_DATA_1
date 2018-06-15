<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show One Language</title>
</head>
<body>
	<div class="nav">
		<a href="/languages">Dash-board</a>
	</div>
	<div class="results">
		<h1><c:out value="${lang.name}"/></h1>
		<h2><c:out value="${lang.creator}"/></h2>
		<h2><c:out value="${lang.version}"/></h2>
	</div>
	<div class="bnav">
		<a href="/languages/${lang.id}/edit">Edit</a>
		<form action="/languages/${lang.id}" method="post">
		    <input type="hidden" name="_method" value="delete">
		    <input type="submit" value="Delete">
		</form>
	</div>
</body>
</html>
