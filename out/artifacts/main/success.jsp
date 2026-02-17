<%--
  Created by IntelliJ IDEA.
  User: satoshi
  Date: 2/16/2026
  Time: 11:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Upload Success</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
          crossorigin="anonymous">
    <style>
        body {
            background: linear-gradient(135deg, #0f0f0f 0%, #1a1a1a 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .success-container {
            background: linear-gradient(145deg, #1c1c1c, #252525);
            padding: 3rem;
            border-radius: 16px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.6);
            max-width: 500px;
            width: 100%;
            border: 1px solid #333;
            text-align: center;
        }
        .success-icon {
            width: 80px;
            height: 80px;
            background: linear-gradient(135deg, #00d2ff 0%, #3a7bd5 100%);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 1.5rem;
            animation: scaleIn 0.5s ease-out;
        }
        .success-icon svg {
            width: 45px;
            height: 45px;
            stroke: white;
            stroke-width: 3;
            stroke-linecap: round;
            stroke-linejoin: round;
            fill: none;
        }
        .success-title {
            color: #ffffff;
            font-weight: 600;
            font-size: 1.75rem;
            margin-bottom: 1rem;
        }
        .success-message {
            color: #b0b0b0;
            margin-bottom: 0.5rem;
            font-size: 1rem;
        }
        .file-name {
            color: #00d2ff;
            font-weight: 500;
            margin-bottom: 2rem;
            word-break: break-all;
        }
        .btn-primary {
            padding: 0.75rem 2rem;
            font-weight: 500;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            background: linear-gradient(135deg, #00d2ff 0%, #3a7bd5 100%);
            border: none;
            margin: 0.5rem;
            transition: all 0.3s ease;
        }
        .btn-primary:hover {
            background: linear-gradient(135deg, #00bfe6 0%, #3368c2 100%);
            transform: translateY(-2px);
            box-shadow: 0 5px 20px rgba(0, 210, 255, 0.4);
        }
        .btn-secondary {
            padding: 0.75rem 2rem;
            font-weight: 500;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            background: linear-gradient(135deg, #3a3a3a 0%, #2a2a2a 100%);
            border: 1px solid #4a4a4a;
            margin: 0.5rem;
            color: #ffffff;
            transition: all 0.3s ease;
        }
        .btn-secondary:hover {
            background: linear-gradient(135deg, #4a4a4a 0%, #3a3a3a 100%);
            transform: translateY(-2px);
            box-shadow: 0 5px 20px rgba(74, 74, 74, 0.4);
            color: #ffffff;
        }
        @keyframes scaleIn {
            from {
                transform: scale(0);
                opacity: 0;
            }
            to {
                transform: scale(1);
                opacity: 1;
            }
        }
        @keyframes checkmark {
            0% {
                stroke-dashoffset: 100;
            }
            100% {
                stroke-dashoffset: 0;
            }
        }
        .checkmark {
            stroke-dasharray: 100;
            animation: checkmark 0.5s ease-out 0.3s forwards;
        }
    </style>
</head>
<body>
<div class="success-container">
    <div class="success-icon">
        <svg viewBox="0 0 52 52">
            <path class="checkmark" d="M14 27l8 8 16-16"/>
        </svg>
    </div>
    <h2 class="success-title">Upload Successful!</h2>
    <p class="success-message">Your file has been uploaded successfully</p>
    <p class="file-name">${fileName}</p>
    <div>
        <a href="http://localhost:8080/upload" class="btn btn-primary">Upload Another</a>
        <a href="http://localhost:8080/download" class="btn btn-secondary">Download Files</a>
    </div>
</div>
</body>
</html>
