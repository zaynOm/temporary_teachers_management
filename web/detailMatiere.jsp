<%-- 
    Document   : detailMatiere
    Created on : May 13, 2021, 3:01:52 AM
    Author     : omar
--%>

<%@page import="src.cnx1"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detaile du matiere</title>
    </head>
    <body>
        <%@include file="home.jsp"%>
        <h4 class="w3-center">Detaile sur la matiere avec id <%=session.getAttribute("idMatForDetails")%></h4><br>
        <%ResultSet rs = cnx1.executeReq("select nomMat, MH, objectiftMat from Matiere where idMat=" + 
                session.getAttribute("idMatForDetails"));
        while (rs.next()) {                
                out.println("<p class='w3-margin w3-padding '>Nom du matiere: " +rs.getString(1)+"<br>"
                        + "Masse horaire du matiere: " +rs.getString(2)+"<br>"
                                + "Objectif du matiere: " + rs.getString(3)+ "</p>");
            }
        %>

    </body>
</html>
