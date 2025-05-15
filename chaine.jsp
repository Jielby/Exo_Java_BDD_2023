<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>

<%
    // Déclaration de la chaîne
    String bonjour = "salut la compagnie";

    // Mise en majuscules
    String bonjourMaj = bonjour.toUpperCase();

    // Méthode pour mettre la première lettre en majuscule
    String capitaliserPremiereLettre(String texte) {
        if (texte == null || texte.isEmpty()) return texte;
        return texte.substring(0, 1).toUpperCase() + texte.substring(1);
    }

    // Appel de la méthode
    String bonjourCapitalise = capitaliserPremiereLettre(bonjour);
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
