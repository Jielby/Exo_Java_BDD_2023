<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>

<%
    // Déclaration de la chaîne
    String bonjour = "salut la compagnie";

%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Exercice Chaine</title>
</head>
<body>
    <h1>Message original : <%= bonjour %></h1>
    <h1>En majuscule : <%= bonjourMaj %></h1>
    <h1>Première lettre en majuscule : <%= bonjourCapitalise %></h1>
</body>
</html>


