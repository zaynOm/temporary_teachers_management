<%-- 
    Document   : login
    Created on : May 12, 2021, 3:11:20 PM
    Author     : omar
--%>

<%@page import="src.cnx1"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="w3.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
        <style>
            label, input{
                margin-top: 25px;
            }
        </style>
    </head>
    <body>
        <form class="w3-center" name="loginForm" method="POST">
            <h1>Login</h1>
            <label for="username">Username</label>
            <input type="text" name="username" required><br>
            <label for="password">Password</label>
            <input type="password" name="password" required><br>
            <input class="w3-button w3-amber w3-text-white" type="submit" value="Login" name="submit">
        </form>
        <%String submit = request.getParameter("submit");
            if (submit != null) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                ResultSet rs = cnx1.executeReq("select idEv, mPasse, nomEv, prenEv from EnseignantVacataire;");
                while (rs.next()) {
                    if (rs.getString(1).equals(username) && rs.getString(2).equals(password)) {
                        session.setAttribute("idEv", rs.getString(1));
                        session.setAttribute("nom", rs.getString(3));
                        session.setAttribute("prenom", rs.getString(4));
                        response.sendRedirect("home.jsp");
                    }
                }
                out.print("<p class='w3-center w3-text-red'>Invalide information</p>");
            }
        %>
    </body>
</html>
