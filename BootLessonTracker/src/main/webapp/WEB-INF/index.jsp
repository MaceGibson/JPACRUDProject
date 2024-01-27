<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<body>
<form action="getLessonTracker.do" method="GET">
  Film ID: <input type="text" name="id" />
  <input type="submit" value="Find Lesson" />
</form>
<br>
<h4>Film List</h4>
    <c:forEach var="lessonTracker" items="${lessonTrackers}">
        <div>
            <a href="getLessonTracker.do?id=${lessonTracker.id}">${lessonTracker.title}</a>
        </div>
    </c:forEach>

</body>
</html>