<%-- 
    Document   : successlogin
    Created on : Dec 16, 2017, 5:14:04 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <h1>${user.username}, Anda berhasil Login</h1>
            <a href="${pageContext.request.contextPath}/log/out" class="btn btn-warning">LogOut</a>
        </div>
    </body>
</html>
