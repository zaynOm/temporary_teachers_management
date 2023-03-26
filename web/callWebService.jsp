<%-- 
    Document   : callWebService
    Created on : Jun 20, 2021, 8:31:58 PM
    Author     : omar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="w3.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cherche specialite</title>
    </head>
    <body>
        
        <form class="w3-container  w3-center w3-margin-top" action="callWebService.jsp">
            <input type="text" name="specialite" placeholder="Entrer l'id d'une specialite">
            <input type="submit" name="submit" value="cherche">
        </form>
            
           <%-- start web service invocation --%><hr/>
    <%
    try {
        String sp = request.getParameter("specialite");
	ws.NumberOfSpecialiteWS_Service service = new ws.NumberOfSpecialiteWS_Service();
	ws.NumberOfSpecialiteWS port = service.getNumberOfSpecialiteWSPort();
	 // TODO initialize WS operation arguments here
	java.lang.String specialite = sp;
	// TODO process result here
	java.lang.String result = port.numberOfSpecialite(specialite);
	out.println("Nomber d'enseignants dans la specialite " +sp+" = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
        
    </body>
</html>
