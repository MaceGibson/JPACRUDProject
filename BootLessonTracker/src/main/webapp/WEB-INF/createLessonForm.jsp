<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Lesson</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2>Create Lesson</h2>

    <form action="createLesson.do" method="post" modelAttribute="lesson">
        <div class="form-group">
            <label for="topic">Topic:</label>
            <input type="text" class="form-control" id="topic" name="topic" value="No Topic Supplied" placeholder="No Topic Supplied">
        </div>
        <div class="form-group">
            <label for="weekNumber">Week Number:</label>
            <input type="text" class="form-control" id="weekNumber" name="weekNumber" value="Week Number Not Supplied" placeholder="Week Number Not Supplied">
        </div>
        <div class="form-group">
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="needsReview" name="needsReview">
                <label class="form-check-label" for="needsReview">Needs Review</label>
            </div>
        </div>
        <div class="form-group">
            <label for="project">Project:</label>
            <input type="text" class="form-control" id="project" name="project" value="No Project this Week" placeholder="No Project this Week">
        </div>
        <div class="form-group">
            <label for="url">URL:</label>
            <input type="text" class="form-control" id="url" name="url" value="No URL Supplied" placeholder="No URL Supplied">
        </div>
        <button type="submit" class="btn btn-primary">Create Lesson</button>
    </form>

    <a href="/home.do" class="btn btn-secondary mt-3">Home</a>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
