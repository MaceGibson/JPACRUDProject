<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Status</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2>
        <c:choose>
            <c:when test="${success}">
                Update Successful
            </c:when>
            <c:otherwise>
                Update Failed
            </c:otherwise>
        </c:choose>
    </h2>

    <div class="btn-group mt-3" role="group">
        <form action="updateLessonForm.do/${lesson.id}" method="GET">
            <input type="submit" class="btn btn-primary" value="Try Again">
        </form>
        <form action="/home.do" method="GET">
            <input type="submit" class="btn btn-success" value="Home">
        </form>
    </div>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
