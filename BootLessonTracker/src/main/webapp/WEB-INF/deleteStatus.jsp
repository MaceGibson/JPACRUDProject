<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Status</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2>
        <c:choose>
            <c:when test="${requestScope.status == 'success'}">
                Deletion Successful
            </c:when>
            <c:otherwise>
                Deletion Failed
            </c:otherwise>
        </c:choose>
    </h2>

    <div class="alert alert-dismissible fade show" role="alert">
        <strong><%= request.getAttribute("statusMessage") %></strong>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>

    <div class="btn-group mt-3" role="group">
        <a href="/" class="btn btn-primary">Home</a>
        <a href="createLessonForm" class="btn btn-success">Create Lesson</a>
    </div>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>

