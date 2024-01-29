<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Show All Lessons</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2>Show All Lessons</h2>

    <c:if test="${not empty lessons}">
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Topic</th>
                    <th>Week Number</th>
                    <th>Needs Review</th>
                    <th>Project</th>
                    <th>URL</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="lesson" items="${lessons}">
                    <tr style="cursor: pointer;" onclick="window.location='getLesson.do?id=${lesson.id}'">
                        <td>${lesson.id}</td>
                        <td>${lesson.topic}</td>
                        <td>${lesson.weekNumber}</td>
                        <td>
                            <c:if test="${not lesson.needsReview}">
                                Doesn't Need Review
                            </c:if>
                            <c:if test="${lesson.needsReview}">
                                Ready to Review
                            </c:if>
                        </td>
                        <td>${lesson.project}</td>
                        <td>${lesson.url}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>

    <a href="home.do" class="btn btn-primary">Home</a>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
