<%-- 
    Document   : invalidate
    Created on : May 13, 2021, 10:41:49 AM
    Author     : omar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%session.invalidate();
        response.sendRedirect("login.jsp");
        %>
    </body>
</html>
