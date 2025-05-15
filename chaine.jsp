<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%! 
    // Met la première lettre en majuscule
    public String capitaliser(String texte) {
        if (texte == null || texte.isEmpty()) return texte;
        return texte.substring(0, 1).toUpperCase() + texte.substring(1);
    }
%>

<%
    String bonjour = "salut la compagnie";
    String bonjourMaj = bonjour.toUpperCase();
    String bonjourCapitalise = capitaliser(bonjour);
%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Chaine</title>
</head>
<body>
    <p>Texte original : <%= bonjour %></p>
    <p>En majuscule : <%= bonjourMaj %></p>
    <p>Première lettre en majuscule : <%= bonjourCapitalise %></p>
</body>
</html>
