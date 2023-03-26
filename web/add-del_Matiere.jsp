<%-- 
    Document   : add-del_Matiere
    Created on : May 12, 2021, 5:23:48 PM
    Author     : omar
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="src.cnx1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="w3.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
             label, input, select{
                display: inline-block;
                margin: 20px;
            
            }
            label{
                margin-left: 0px;
                width: 100px;
            }
            input:not([type="submit"]), select{
                width: 200px;
                height: 30px;
            }
/*            [type="button"]{
                display: inline-block;
                text-align: center;
                width: 100px;
            }*/
        </style>
    </head>
    <body>
        
        <form class="w3-center w3-margin"a name="matiereForm" method="POST">
            <h4>Ajouter/Supprimer une Matiere</h4>
            <label for="idMat">Id matiere</label>
            <input type="number" name="idMat" required><br>
            <label for="nomMat">Nom matiere</label>
            <input type="text" name="nomMat"><br>
            <label for="objectifMat">Objectif</label>
            <input type="text" name="objectifMat"><br>
            <label for="MH">Masse horaire</label>
            <input type="number" name="MH"><br>
            <label for="idS">Id specialite</label>
            <select name="idS">
                <option>--selectioner--</option>
                <%ResultSet rs = cnx1.executeReq("select idS from Specialite;");
                    while (rs.next()) {
                %>
                <option><%=rs.getString(1)%></option>
                <%        }
                %>
            </select><br>
            <input class="w3-button w3-amber w3-text-white" type="submit" name="ajouter" value="Ajouter">
            <input class="w3-button w3-amber w3-text-white" type="submit" name="supprimer" value="Supprimer">
        </form>
        <%String btnAj = request.getParameter("ajouter");
            String btnSupr = request.getParameter("supprimer");
            if (btnAj != null && btnAj.equals("Ajouter")) {
                String idMat = request.getParameter("idMat");
                String nomMat = request.getParameter("idMat");
                String objectifMat = request.getParameter("idMat");
                String MH = request.getParameter("idMat");
                String idS = request.getParameter("idS");
                int ajCount = cnx1.execLMD("insert into Matiere value(" + idMat + ",'" + nomMat + "','" + objectifMat + "'," + MH + "," + idS + ")");
                
            } else if (btnSupr != null && btnSupr.equals("Supprimer")) {
                String idMat = request.getParameter("idMat");
                int suprCount = cnx1.execLMD("delete from Matiere where idMat="+idMat);
            }

        %>
    </body>
</html>
