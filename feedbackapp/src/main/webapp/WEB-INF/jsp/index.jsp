<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Feedback List</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-4">
    <h2>Feedback List</h2>
    <a href="${pageContext.request.contextPath}/feedback/form" class="btn btn-primary mb-3">Submit Feedback</a>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Message</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="feedback" items="${feedbackList}">
            <tr>
                <td><c:out value="${feedback.name}" /></td>
                <td><c:out value="${feedback.email}" /></td>
                <td><c:out value="${feedback.message}" /></td>
                <td>
                    <!-- Delete link -->
                    <a href="${pageContext.request.contextPath}/feedback/delete/${feedback.id}" class="btn btn-danger btn-sm">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<!-- Bootstrap JS and dependencies (Popper.js and jQuery) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
