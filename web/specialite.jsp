<%-- 
    Document   : specialite
    Created on : May 13, 2021, 12:22:22 AM
    Author     : omar
--%>

<%@page import="src.cnx1"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>specialite</title>
        <style>
            
        </style>
    </head>

    <body>
        <%@include file="home.jsp" %>
        
        <div class="w3-container">
            <h4 class="w3-center w3-margin">les specialite</h4>
           <table class="w3-table-all w3-card-2">
            <tr>
                <th>Nom de Specialite</th>
                <th>Niveau</th>
                <th>Numero des Matieres</th>
            </tr>
            <%ResultSet rs1 = cnx1.executeReq("select s.nomS, s.niveau, count(m.idMat) from Specialite as s, Matiere as m "
                    + "where s.idS=m.idS group by s.idS order by count(m.idMat) desc");
            while (rs1.next()) {
        %>
            <tr>
                <td><%=rs1.getString(1)%></td>
                <td><%=rs1.getString(2)%></td>
                <td><%=rs1.getString(3)%></td>
            </tr>
            <%}%>
        </table> 
        </div>
            <%@include file="add-del_Matiere.jsp" %>
    </body>
</html>
