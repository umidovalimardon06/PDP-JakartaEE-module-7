# Jakarta EE – Minimal Overview

Jakarta EE is a **set of specifications** for building **enterprise-grade, server-side Java applications**.

---

## Core Purpose

* Build scalable **server-side applications**
* Standardized APIs for web, persistence, security, and transactions

---

## Main Jakarta EE Modules

1. **Jakarta Servlet**
   Handles HTTP request/response lifecycle

2. **Jakarta Faces (JSF)**
   Server-side UI framework

3. **CDI (Contexts and Dependency Injection)**
   Dependency injection and lifecycle management

4. **Jakarta Config**
   Externalized configuration

5. **JPA (Jakarta Persistence API)**
   ORM and database access

6. **Jakarta Transactions**
   ACID-compliant transaction management

7. **Jakarta Security**
   Authentication and authorization

---

## Servlet Container (Example: Tomcat)

Tomcat is a **Servlet Container** that runs inside an application server.
It hosts and manages **Servlets (Java classes)**.

---

## Request Processing Inside the Server

1. **Filter Chain**

    * Logging
    * Authentication
    * CORS
    * Compression

2. **Servlet**

    * `service()`
    * `doGet()`
    * `doPost()`
    * `doPut()`
    * `doDelete()`

3. **Listeners**

    * Context lifecycle events
    * Session lifecycle events

4. **Session Store**

    * `HttpSession`
    * Cookies
    * `JSESSIONID`

---

## Servlet Class Hierarchy

```
java.lang.Object
     |
jakarta.servlet.GenericServlet
     |
jakarta.servlet.http.HttpServlet
```

---

## Key Notes

* A **Servlet is a singleton** per mapping
* Handles requests via methods, not instances
* Not thread-safe

---

