<%--
  Created by IntelliJ IDEA.
  User: satoshi
  Date: 2/18/2026
  Time: 7:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="icon" type="image/svg+xml" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><text y='0.9em' font-size='90'>🔐</text></svg>">
    <style>
        body {
            background: linear-gradient(135deg, #0f0f0f 0%, #1a1a1a 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
        }
        .login-container {
            background: linear-gradient(145deg, #1c1c1c, #252525);
            padding: 2.5rem;
            border-radius: 16px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.6);
            max-width: 400px;
            width: 100%;
            border: 1px solid #333;
        }
        .login-title {
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
            display: block;
            font-size: 0.9rem;
        }
        .form-control {
            width: 100%;
            margin-bottom: 1.5rem;
            border: 2px solid #3a3a3a;
            padding: 0.75rem;
            background-color: #2a2a2a;
            color: #ffffff;
            border-radius: 8px;
            font-size: 1rem;
            box-sizing: border-box;
        }
        .form-control:focus {
            outline: none;
            border-color: #00d2ff;
            box-shadow: 0 0 0 0.2rem rgba(0, 210, 255, 0.25);
            background-color: #2a2a2a;
        }
        .form-control::placeholder {
            color: #555;
        }
        .btn-login {
            width: 100%;
            padding: 0.75rem;
            font-weight: 500;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            background: linear-gradient(135deg, #00d2ff 0%, #3a7bd5 100%);
            border: none;
            border-radius: 8px;
            color: #ffffff;
            font-size: 0.9rem;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        .btn-login:hover {
            background: linear-gradient(135deg, #00bfe6 0%, #3368c2 100%);
            transform: translateY(-2px);
            box-shadow: 0 5px 20px rgba(0, 210, 255, 0.4);
        }
    </style>
</head>
<body>
<div class="login-container">
    <h2 class="login-title">🔐 Login</h2>
    <form method="POST">
        <label class="form-label">Username</label>
        <input type="text" name="loginUsername" class="form-control" placeholder="Enter username..." required>
        <label class="form-label">Password</label>
        <input type="password" name="loginPassword" class="form-control" placeholder="Enter password..." required>
        <button type="submit" class="btn-login">Login</button>
    </form>
</div>
</body>
</html>
