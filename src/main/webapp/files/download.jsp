<%--
  Created by IntelliJ IDEA.
  User: satoshi
  Date: 2/16/2026
  Time: 11:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Download</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
          crossorigin="anonymous">
</head>
<body>
<form action="" method="POST">
    <div>
        <label for="file_name" id="file_name" class="form-label">Enter file name</label>
        <input type="text" name="file_name" id="file_name" class="form-control">
        <button type="submit" class="btn btn-danger">Download</button>
    </div>
</form>
</body>
</html>
