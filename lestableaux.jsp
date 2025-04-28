<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les tableaux</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les tableaux</h1>

<form action="#" method="post">
    <p>Saisir au minimum 3 chiffres à la suite, exemple : 6 78 15 
    <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>

<%-- Récupération des valeurs --%>
<% String chaine = request.getParameter("chaine"); %>

<% if (chaine != null && !chaine.trim().isEmpty()) { %>

    <%-- Division de la chaîne de chiffres séparés par des espaces --%>
    <% String[] tableauDeChiffres = chaine.trim().split("\\s+"); %>
    
    <%-- Transformation en tableau d'entiers --%>
    <% int[] nombres = new int[tableauDeChiffres.length];
       for (int i = 0; i < tableauDeChiffres.length; i++) {
           nombres[i] = Integer.parseInt(tableauDeChiffres[i]);
       }
    %>

    <p>Le tableau contient <%= nombres.length %> valeurs</p>
    <% for (int i = 0; i < nombres.length; i++) { %>
        <p>Chiffre <%= (i+1) %> : <%= nombres[i] %></p>
    <% } %>

<h2>Exercice 1 : Le carré de la première valeur</h2>
<%
    int carre = nombres[0] * nombres[0];
%>
<p>Le carré de la première valeur (<%= nombres[0] %>) est : <%= carre %></p>

<h2>Exercice 2 : La somme des 2 premières valeurs</h2>
<%
    int somme2 = nombres[0] + nombres[1];
%>
<p>La somme des deux premières valeurs est : <%= somme2 %></p>

<h2>Exercice 3 : La somme de toutes les valeurs</h2>
<%
    int sommeTotale = 0;
    for (int val : nombres) {
        sommeTotale += val;
    }
%>
<p>La somme de toutes les valeurs est : <%= sommeTotale %></p>

<h2>Exercice 4 : La valeur maximale</h2>
<%
    int max = nombres[0];
    for (int val : nombres) {
        if (val > max) {
            max = val;
        }
    }
%>
<p>La valeur maximale est : <%= max %></p>

<h2>Exercice 5 : La valeur minimale</h2>
<%
    int min = nombres[0];
    for (int val : nombres) {
        if (val < min) {
            min = val;
        }
    }
%>
<p>La valeur minimale est : <%= min %></p>

<h2>Exercice 6 : La valeur la plus proche de 0</h2>
<%
    int procheDeZero = nombres[0];
    for (int val : nombres) {
        if (Math.abs(val) < Math.abs(procheDeZero)) {
            procheDeZero = val;
        }
    }
%>
<p>La valeur la plus proche de 0 est : <%= procheDeZero %></p>

<h2>Exercice 7 : La valeur la plus proche de 0 (2ème version)</h2>
<%
    int procheDeZeroV2 = nombres[0];
    for (int val : nombres) {
        if (Math.abs(val) < Math.abs(procheDeZeroV2) || 
            (Math.abs(val) == Math.abs(procheDeZeroV2) && val > procheDeZeroV2)) {
            procheDeZeroV2 = val;
        }
    }
%>
<p>La valeur la plus proche de 0 (avec préférence pour le positif) est : <%= procheDeZeroV2 %></p>

<% } %>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
