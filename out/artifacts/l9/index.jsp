<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
  <link rel="icon" type="image/svg+xml" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><text y='0.9em' font-size='90'>☕</text></svg>">
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
    .container {
      background: linear-gradient(145deg, #1c1c1c, #252525);
      padding: 3rem;
      border-radius: 16px;
      box-shadow: 0 20px 60px rgba(0, 0, 0, 0.6);
      border: 1px solid #333;
      text-align: center;
    }
    h1 {
      color: #00d2ff;
      font-size: 2.5rem;
      font-weight: 600;
      margin: 0 0 1rem 0;
      letter-spacing: 1px;
    }
    h2 {
      color: #b0b0b0;
      font-size: 1.25rem;
      font-weight: 500;
      margin: 0.5rem 0;
    }
    h2:first-of-type {
      color: #ff4757;
    }
    h2:last-of-type {
      color: #9a9a9a;
      font-size: 1rem;
      margin-top: 1.5rem;
    }
  </style>
</head>
<body>
<div class="container">
  <h1><%= "PDP-JAKARTA-MODULE!" %></h1>
  <h2><%= "LESSON-9" %></h2>
  <h2><%= "Session, Cookie, Events, Init Parameters, Filter" %></h2>
</div>
</body>
</html>
