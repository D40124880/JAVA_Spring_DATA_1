<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Details</title>
</head>
<body>
	<div class="wrapper">
		<div class="nav">
			<a href="/dashboard">Dash-board</a>
		</div>
		<div class="results">
			<h1>Title     		<c:out value="${music.title}"/></h1>
			<h2>Artist    		<c:out value="${music.artist}"/></h2>
			<h2>Rating (1-10)	<c:out value="${music.rating}"/></h2>
		</div>
		<div class="bnav">
			<form action="/song/${music.id}" method="post">
		    <input type="hidden" name="_method" value="delete">
		    <input type="submit" value="Delete">
		</form>	
		</div>
	</div>
</body>
</html>
