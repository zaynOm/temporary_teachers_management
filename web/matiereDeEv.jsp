<%-- 
    Document   : matiereDeEv
    Created on : May 13, 2021, 2:52:28 AM
    Author     : omar
--%>

<%@page import="src.cnx1"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>matiere</title>
        <style>
            #detail{
                cursor: pointer;
            }
        </style>
    </head>
    <body>
        <%@include file="home.jsp" %>
        <div class="w3-container">
            <h4 class="w3-center w3-margin">les Materiales</h4>
        <table class="w3-table-all w3-card-2">
            <tr>
                <th>id Matiere</th>
                <th>Action</th>
            </tr>
            <%ResultSet rs = cnx1.executeReq("select idMat from Affectation where idEv=" + session.getAttribute("idEv"));
                while (rs.next()) {
            %>
            <tr>
                <td><%=rs.getString(1)%></td>
                <td id="detail" onclick="getTaskId(<%=rs.getString(1)%>);"><a style="text-decoration: underline;color: blue;">Détail</a></td>
            </tr>
            <%}%>
        </table>
        </div>
        
        <script>
            function getTaskId(s) {
                window.location.replace("matiereDeEv.jsp?id=" + s);
            <%session.setAttribute("idMatForDetails", request.getParameter("id"));
                if (request.getParameter("id") != null) {
                    response.sendRedirect("detailMatiere.jsp");
                }
            %>
            }

        </script>

    </body>
</html>
