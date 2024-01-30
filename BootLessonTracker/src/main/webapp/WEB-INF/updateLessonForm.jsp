<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update Lesson</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2>Update Lesson</h2>

    <form action="/updateLesson.do/${lesson.id}" method="post" modelAttribute="lesson">
        <div class="form-group">
            <label for="topic">Topic:</label>
            <input type="text" class="form-control" id="topic" name="topic" value="${lesson.topic}" />
        </div>
        <div class="form-group">
            <label for="weekNumber">Week Number:</label>
            <input type="text" class="form-control" id="weekNumber" name="weekNumber" value="${lesson.weekNumber}" />
        </div>
        <div class="form-group">
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="needsReview" name="needsReview" ${lesson.needsReview ? 'checked' : ''}>
                <label class="form-check-label" for="needsReview">Needs Review</label>
            </div>
        </div>
        <div class="form-group">
            <label for="project">Project:</label>
            <input type="text" class="form-control" id="project" name="project" value="${lesson.project}" />
        </div>
        <div class="form-group">
            <label for="url">URL:</label>
            <input type="text" class="form-control" id="url" name="url" value="${lesson.url}" />
        </div>
        <button type="submit" class="btn btn-primary">Update Lesson</button>
    </form>

    <a href="/home.do" class="btn btn-secondary mt-3">Home</a>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
