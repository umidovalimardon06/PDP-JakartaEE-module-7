<%--
  Created by IntelliJ IDEA.
  User: satoshi
  Date: 2/17/2026
  Time: 11:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Books</title>
    <link rel="icon" type="image/svg+xml" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='%2300d2ff'><path d='M21 5c-1.11-.35-2.33-.5-3.5-.5-1.95 0-4.05.4-5.5 1.5-1.45-1.1-3.55-1.5-5.5-1.5S2.45 4.9 1 6v14.65c0 .25.25.5.5.5.1 0 .15-.05.25-.05C3.1 20.45 5.05 20 6.5 20c1.95 0 4.05.4 5.5 1.5 1.35-.85 3.8-1.5 5.5-1.5 1.65 0 3.35.3 4.75 1.05.1.05.15.05.25.05.25 0 .5-.25.5-.5V6c-.6-.45-1.25-.75-2-1zm0 13.5c-1.1-.35-2.3-.5-3.5-.5-1.7 0-4.15.65-5.5 1.5V8c1.35-.85 3.8-1.5 5.5-1.5 1.2 0 2.4.15 3.5.5v11.5z'/></svg>">
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
            padding: 2rem 0;
        }
        .home-container {
            background: linear-gradient(145deg, #1c1c1c, #252525);
            padding: 2.5rem;
            border-radius: 16px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.6);
            width: 90%;
            max-width: 900px;
            border: 1px solid #333;
        }
        .home-title {
            text-align: center;
            margin-bottom: 0.5rem;
            color: #ffffff;
            font-weight: 600;
            font-size: 1.75rem;
        }
        .home-subtitle {
            text-align: center;
            color: #b0b0b0;
            margin-bottom: 2rem;
            font-size: 0.9rem;
        }
        .table {
            color: #d0d0d0;
            border-color: #333;
            margin-bottom: 0;
        }
        .table thead th {
            background-color: #2a2a2a;
            color: #ffffff;
            border-color: #3a3a3a;
            font-weight: 600;
            text-transform: uppercase;
            font-size: 0.8rem;
            letter-spacing: 0.5px;
            padding: 1rem;
        }
        .table tbody tr {
            border-color: #2e2e2e;
            transition: background-color 0.2s ease;
        }
        .table tbody tr:hover {
            background-color: #2a2a2a;
        }
        .table tbody td {
            border-color: #2e2e2e;
            vertical-align: middle;
            padding: 0.85rem 1rem;
            color: #d0d0d0;
        }
        .book-title {
            color: #ffffff;
            font-weight: 500;
        }
        .book-author {
            color: #b0b0b0;
            font-style: italic;
        }
        .separator {
            color: #3a3a3a;
            margin: 0 0.25rem;
        }
        .btn-danger {
            background: linear-gradient(135deg, #ff4757 0%, #ff6348 100%);
            border: none;
            font-size: 0.8rem;
            padding: 0.35rem 0.85rem;
            transition: all 0.3s ease;
        }
        .btn-danger:hover {
            background: linear-gradient(135deg, #ff3742 0%, #ff5533 100%);
            transform: translateY(-1px);
            box-shadow: 0 4px 12px rgba(255, 71, 87, 0.4);
        }
        .btn-warning {
            background: linear-gradient(135deg, #ffa502 0%, #ff7f50 100%);
            border: none;
            color: #fff;
            font-size: 0.8rem;
            padding: 0.35rem 0.85rem;
            transition: all 0.3s ease;
        }
        .btn-warning:hover {
            background: linear-gradient(135deg, #e6940f 0%, #e56e3d 100%);
            color: #fff;
            transform: translateY(-1px);
            box-shadow: 0 4px 12px rgba(255, 165, 2, 0.4);
        }
        .add-btn {
            display: inline-block;
            padding: 0.65rem 1.5rem;
            font-weight: 500;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            background: linear-gradient(135deg, #00d2ff 0%, #3a7bd5 100%);
            border: none;
            border-radius: 8px;
            color: #ffffff;
            text-decoration: none;
            transition: all 0.3s ease;
            font-size: 0.85rem;
        }
        .add-btn:hover {
            background: linear-gradient(135deg, #00bfe6 0%, #3368c2 100%);
            transform: translateY(-2px);
            box-shadow: 0 5px 20px rgba(0, 210, 255, 0.4);
            color: #ffffff;
        }
        .top-bar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 1.5rem;
        }
        .book-count {
            color: #b0b0b0;
            font-size: 0.85rem;
        }
        .book-count span {
            color: #00d2ff;
            font-weight: 600;
        }
        .empty-state {
            text-align: center;
            padding: 3rem 0;
            color: #666;
        }
        .empty-state p {
            margin-top: 1rem;
            font-size: 1rem;
        }
    </style>
</head>
<body>
<div class="home-container">
    <h2 class="home-title">📚 Book Library</h2>
    <p class="home-subtitle">Manage your book collection</p>

    <div class="top-bar">
        <span class="book-count">Total books: <span>${books.size()}</span></span>
        <a href="/book/add" class="add-btn">+ Add Book</a>
    </div>

    <div class="table-responsive">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th scope="col">Title</th>
                <th scope="col">Author</th>
                <th scope="col">Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:choose>
                <c:when test="${empty books}">
                    <tr>
                        <td colspan="3">
                            <div class="empty-state">
                                <p>No books found. Add your first book!</p>
                            </div>
                        </td>
                    </tr>
                </c:when>
                <c:otherwise>
                    <c:forEach var="book" items="${books}">
                        <tr>
                            <td class="book-title"><c:out value="${book.title}"/></td>
                            <td class="book-author"><c:out value="${book.author}"/></td>
                            <td>
                                <a href="/book/delete/${book.title}" class="btn btn-danger btn-sm">Delete</a>
                                <span class="separator">|</span>
                                <a href="/book/update/${book.title}" class="btn btn-warning btn-sm">Update</a>
                            </td>
                        </tr>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
