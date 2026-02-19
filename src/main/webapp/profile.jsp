<%--
  Created by IntelliJ IDEA.
  User: satoshi
  Date: 2/19/2026
  Time: 10:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Profile</title>
    <link rel="icon" type="image/svg+xml" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><text y='0.9em' font-size='90'>👤</text></svg>">
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
        .profile-card {
            background: linear-gradient(145deg, #1c1c1c, #252525);
            padding: 2.5rem;
            border-radius: 16px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.6);
            border: 1px solid #333;
        }
        .profile-header {
            display: flex;
            align-items: center;
            gap: 2rem;
            margin-bottom: 2rem;
            padding-bottom: 2rem;
            border-bottom: 1px solid #333;
        }
        .profile-avatar {
            width: 120px;
            height: 120px;
            background: linear-gradient(135deg, #00d2ff 0%, #3a7bd5 100%);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 3.5rem;
            border: 3px solid #333;
        }
        .profile-info h1 {
            color: #ffffff;
            font-size: 2rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }
        .profile-info p {
            color: #b0b0b0;
            font-size: 1rem;
        }
        .profile-stats {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 1.5rem;
        }
        .stat-card {
            background-color: #2a2a2a;
            padding: 1.5rem;
            border-radius: 12px;
            border: 1px solid #3a3a3a;
            text-align: center;
        }
        .stat-number {
            color: #00d2ff;
            font-size: 2rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }
        .stat-label {
            color: #b0b0b0;
            font-size: 0.9rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
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
    <div class="profile-card">
        <div class="profile-header">
            <div class="profile-avatar">👤</div>
            <div class="profile-info">
                <h1><%=request.getSession().getAttribute("loginUsername")%></h1>
                <p>Member since 2026</p>
            </div>
        </div>

        <div class="profile-stats">
            <div class="stat-card">
                <div class="stat-number">48</div>
                <div class="stat-label">Repositories</div>
            </div>
            <div class="stat-card">
                <div class="stat-number">12</div>
                <div class="stat-label">Projects</div>
            </div>
            <div class="stat-card">
                <div class="stat-number">2</div>
                <div class="stat-label">Stars</div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
