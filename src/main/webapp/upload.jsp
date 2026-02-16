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
    <!-- Add inside <head> tag -->
    <link rel="icon" type="image/svg+xml" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><text y='0.9em' font-size='90'>📤</text></svg>">
    <style>
        body {
            background: linear-gradient(135deg, #0f0f0f 0%, #1a1a1a 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .upload-container {
            background: linear-gradient(145deg, #1c1c1c, #252525);
            padding: 2.5rem;
            border-radius: 16px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.6);
            max-width: 500px;
            width: 100%;
            border: 1px solid #333;
        }
        .upload-title {
            text-align: center;
            margin-bottom: 2rem;
            color: #ffffff;
            font-weight: 600;
            font-size: 1.75rem;
        }
        .form-label {
            font-weight: 500;
            color: #b0b0b0;
            margin-bottom: 0.5rem;
        }
        .form-control {
            margin-bottom: 1.5rem;
            border: 2px solid #3a3a3a;
            padding: 0.75rem;
            background-color: #2a2a2a;
            color: #ffffff;
        }
        .form-control:focus {
            border-color: #ff4757;
            box-shadow: 0 0 0 0.2rem rgba(255, 71, 87, 0.25);
            background-color: #2a2a2a;
            color: #ffffff;
        }
        .form-control::file-selector-button {
            background-color: #3a3a3a;
            color: #ffffff;
            border: none;
            padding: 0.5rem 1rem;
            margin-right: 1rem;
            border-radius: 6px;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        .form-control::file-selector-button:hover {
            background-color: #4a4a4a;
        }
        .btn-danger {
            width: 100%;
            padding: 0.75rem;
            font-weight: 500;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            background: linear-gradient(135deg, #ff4757 0%, #ff6348 100%);
            border: none;
            transition: all 0.3s ease;
        }
        .btn-danger:hover {
            background: linear-gradient(135deg, #ff3742 0%, #ff5533 100%);
            transform: translateY(-2px);
            box-shadow: 0 5px 20px rgba(255, 71, 87, 0.4);
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
            <button type="submit" class="btn-danger">Upload File</button>
        </div>
    </form>
</div>
</body>
</html>
