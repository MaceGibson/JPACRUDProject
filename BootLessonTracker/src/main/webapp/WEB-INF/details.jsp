<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Lesson Details</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2>${lesson.topic}</h2>
    <p>Lesson ID: ${lesson.id }</p>
    <p>${lesson.weekNumber}</p>
    
    <c:choose>
        <c:when test="${lesson.needsReview}">
            <p><a href="${lesson.url}" target="_blank">Go review</a></p>
        </c:when>
        <c:otherwise>
            <p>Reviewed</p>
        </c:otherwise>
    </c:choose>
    
    <p>Projects: ${lesson.project}</p>

  	<div class="btn-group mt-3" role="group">
   		<a href="<c:url value='/updateLessonForm.do/'/>${lesson.id}" class="btn btn-warning">Update</a>
    	<a href="<c:url value='/deleteLesson.do/'/>${lesson.id}" class="btn btn-danger">Delete</a>
    	<a href="<c:url value='/'/>" class="btn btn-primary">Home</a>
	</div>

</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
