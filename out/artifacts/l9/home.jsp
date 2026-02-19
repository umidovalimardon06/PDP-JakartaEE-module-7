<%--
  Created by IntelliJ IDEA.
  User: satoshi
  Date: 2/19/2026
  Time: 10:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <link rel="icon" type="image/svg+xml" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><text y='0.9em' font-size='90'>🏠</text></svg>">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            background: linear-gradient(135deg, #0f0f0f 0%, #1a1a1a 100%);
            min-height: 100vh;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
            color: #d0d0d0;
        }
        .navbar {
            background: linear-gradient(145deg, #1c1c1c, #252525);
            border-bottom: 1px solid #333;
            padding: 1rem 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .nav-left {
            display: flex;
            align-items: center;
            gap: 2rem;
        }
        .username {
            color: #00d2ff;
            font-size: 1.25rem;
            font-weight: 600;
        }
        .nav-links {
            display: flex;
            gap: 1.5rem;
            list-style: none;
        }
        .nav-link {
            color: #b0b0b0;
            text-decoration: none;
            font-size: 0.95rem;
            padding: 0.5rem 1rem;
            border-radius: 6px;
            transition: all 0.2s ease;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }
        .nav-link:hover {
            background-color: #2a2a2a;
            color: #ffffff;
        }
        .nav-link.active {
            color: #ffffff;
            border-bottom: 2px solid #00d2ff;
            border-radius: 0;
        }
        .content {
            max-width: 1200px;
            margin: 3rem auto;
            padding: 0 2rem;
        }
        .welcome-card {
            background: linear-gradient(145deg, #1c1c1c, #252525);
            padding: 2.5rem;
            border-radius: 16px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.6);
            border: 1px solid #333;
            text-align: center;
        }
        .welcome-title {
            color: #ffffff;
            font-size: 2rem;
            font-weight: 600;
            margin-bottom: 1rem;
        }
        .welcome-subtitle {
            color: #b0b0b0;
            font-size: 1.1rem;
        }
        .highlight {
            color: #00d2ff;
            font-weight: 600;
        }
    </style>
</head>
<body>
<nav class="navbar">
    <div class="nav-left">
        <span class="username"><%=request.getSession().getAttribute("loginUsername")%></span>
        <ul class="nav-links">
            <li><a href="http://localhost:8080/home" class="nav-link active">📊 Overview</a></li>
            <li><a href="http://localhost:8080/profile" class="nav-link">👤 Profile</a></li>
            <li><a href="http://localhost:8080/login" class="nav-link">🚪 Logout</a></li>
            <%--   login -> logut    --%>
        </ul>
    </div>
</nav>

<div class="content">
    <div class="welcome-card">
        <h1 class="welcome-title">🏠 Welcome Home!</h1>
        <p class="welcome-subtitle">
            You're logged in as <span class="highlight"><%=request.getSession().getAttribute("loginUsername")%></span>
        </p>
    </div>
</div>
</body>
</html>
