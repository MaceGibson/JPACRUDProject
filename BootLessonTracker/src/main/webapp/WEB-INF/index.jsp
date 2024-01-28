<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Home</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <form action="getLesson.do" method="GET">
        <div class="form-group">
            <label for="keyword">Find lesson by keyword:</label>
            <input type="text" class="form-control" id="keyword" name="keyword" />
        </div>
        <button type="submit" class="btn btn-primary">Find Lesson</button>
    </form>

    <form action="getLesson.do" method="GET">
        <div class="form-group">
            <label for="id">Find lesson by ID:</label>
            <input type="text" class="form-control" id="id" name="id" />
        </div>
        <button type="submit" class="btn btn-primary">Find Lesson</button>
    </form>

    <a href="createLessonForm.do" class="btn btn-success mt-3">Create Lesson</a>
    
    <!-- New button for Show All Lessons -->
    <a href="showAllLessons.do" class="btn btn-info mt-3">Show All Lessons</a>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
