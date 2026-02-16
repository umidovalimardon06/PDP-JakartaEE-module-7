<%--
  Created by IntelliJ IDEA.
  User: satoshi
  Date: 2/16/2026
  Time: 9:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Upload</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
          crossorigin="anonymous">
    <style>
        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .upload-container {
            background: white;
            padding: 2.5rem;
            border-radius: 12px;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            width: 100%;
        }
        .upload-title {
            text-align: center;
            margin-bottom: 2rem;
            color: #333;
            font-weight: 600;
        }
        .form-label {
            font-weight: 500;
            color: #555;
            margin-bottom: 0.5rem;
        }
        .form-control {
            margin-bottom: 1.5rem;
            border: 2px solid #e0e0e0;
            padding: 0.75rem;
        }
        .form-control:focus {
            border-color: #667eea;
            box-shadow: 0 0 0 0.2rem rgba(102, 126, 234, 0.25);
        }
        .btn-danger {
            width: 100%;
            padding: 0.75rem;
            font-weight: 500;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
    </style>
</head>
<body>
<div class="upload-container">
    <h2 class="upload-title">File Upload</h2>
    <form enctype="multipart/form-data" action="upload" method="post">
        <div>
            <label for="file" class="form-label">Choose File</label>
            <input type="file" name="file" id="file" class="form-control" required>
            <button type="submit" class="btn btn-danger">Upload File</button>
        </div>
    </form>
</div>
</body>
</html>
