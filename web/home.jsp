<%-- 
    Document   : home
    Created on : May 12, 2021, 3:25:29 PM
    Author     : omar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="w3.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>home</title>
        <style>
            body{
                margin: 0px;
            }
            a{
                text-decoration: none;
            }
            
        </style>
    </head>
    <body>
        <%String nom = (String) session.getAttribute("nom");
            String prenom = (String) session.getAttribute("prenom");
            if (nom == null || prenom == null) {
                response.sendRedirect("login.jsp");
            }
        %>
        <nav class="w3-container w3-amber w3-center w3-padding-16">
            <a class="w3-left"><%=nom + " " + prenom%></a> 
            <a class="w3-margin-right" href="matiereDeEv.jsp">Materiales</a>
            <a class="w3-margin" href="specialite.jsp">Specialites</a>
            <a class="w3-margin" href="invalidate.jsp">Logout</a>
            <!--include file="callWebService.jsp"-->
        </nav>

    </body>
</html>
