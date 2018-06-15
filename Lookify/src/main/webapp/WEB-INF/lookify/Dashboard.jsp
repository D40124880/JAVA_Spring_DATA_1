<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dash-Board</title>
</head>
<body>
	<div class="wrapper">
		<div class="nav">
			<a href="/songs/new">Add New</a>
			<a href="/search/topten">Top Songs</a>
			<div class="form">
				<form action="/search" method="GET">
					<input name="search"/>
					<input type="submit" value="Search Artists"/>
				</form>
			</div>
		</div>
		<div class="results">
			<table>
				<thead>
					<tr>
						<th>Title</th>
						<th>Rating</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${music}" var="m">
						<tr>
							<td><c:out value="${m.title}"/></td>
							<td><c:out value="${m.rating}"/></td>
							<td>
								<form action="/song/${m.id}" method="post">
								    <input type="hidden" name="_method" value="delete">
								    <input type="submit" value="Delete">
								</form>
					</c:forEach>
				</tbody>
			</table>	
		</div>
	</div>
</body>
</html>


