<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
		<div class="nav">
			<h4>Top Ten Songs</h4>
			<a href="/dashboard">Dashboard</a>
		</div>
		<div class="results">
			<c:forEach items="${music}" var="m" varStatus="idx">
				<c:if test="${idx.count <= 10}">
					<h5><c:out value="${m.rating}"/> - <a href="/songs/${m.id}"><c:out value="${m.title}"/></a> - <c:out value="${m.artist}"/> </h5>
				</c:if>
			</c:forEach>		
		</div>
	</div>
</body>
</html>
