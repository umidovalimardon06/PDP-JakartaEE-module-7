<%--
  Created by IntelliJ IDEA.
  User: satoshi
  Date: 2/17/2026
  Time: 11:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Book</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
          crossorigin="anonymous">
    <link rel="icon" type="image/svg+xml" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><text y='0.9em' font-size='90'>📚</text></svg>">
    <style>
        body {
            background: linear-gradient(135deg, #0f0f0f 0%, #1a1a1a 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .add-container {
            background: linear-gradient(145deg, #1c1c1c, #252525);
            padding: 2.5rem;
            border-radius: 16px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.6);
            max-width: 500px;
            width: 100%;
            border: 1px solid #333;
        }
        .add-title {
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
        .form-control::placeholder {
            color: #555;
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
        .btn-submit {
            width: 100%;
            padding: 0.75rem;
            font-weight: 500;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            background: linear-gradient(135deg, #ff4757 0%, #ff6348 100%);
            border: none;
            border-radius: 8px;
            color: #ffffff;
            transition: all 0.3s ease;
            cursor: pointer;
        }
        .btn-submit:hover {
            background: linear-gradient(135deg, #ff3742 0%, #ff5533 100%);
            transform: translateY(-2px);
            box-shadow: 0 5px 20px rgba(255, 71, 87, 0.4);
        }
        .back-link {
            display: block;
            text-align: center;
            margin-top: 1.25rem;
            color: #555;
            text-decoration: none;
            font-size: 0.85rem;
            transition: color 0.2s ease;
        }
        .back-link:hover {
            color: #b0b0b0;
        }
    </style>
</head>
<body>
<div class="add-container">
    <h2 class="add-title">📚 Add Book</h2>
    <form enctype="multipart/form-data" action="/book/add" method="post">
        <div>
            <label for="book" class="form-label">Choose Book File</label>
            <input type="file" name="book" id="book" class="form-control" required>
        </div>
        <div>
            <label for="author" class="form-label">Author's Name</label>
            <input type="text" name="author" id="author" class="form-control"
                   placeholder="Author's name..." required>
        </div>
        <button type="submit" class="btn-submit">Add Book</button>
        <a href="/book" class="back-link">← Back to Library</a>
    </form>
</div>
</body>
</html>
