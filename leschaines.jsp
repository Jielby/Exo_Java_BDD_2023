<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les chaines</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les chaines de caractères</h1>
<form action="#" method="post">
    <p>Saisir une chaine (Du texte avec 6 caractères minimum) : <input type="text" id="inputValeur" name="chaine"></p>
    <p><input type="submit" value="Afficher"></p>
</form>

<%-- Récupération de la valeur --%>
<%
    String chaine = request.getParameter("chaine");
%>

<% if (chaine != null && !chaine.isEmpty()) { %>

    <%-- Obtention de la longueur de la chaîne --%>
    <% int longueurChaine = chaine.length(); %>
    <p>La longueur de votre chaîne est de <%= longueurChaine %> caractères.</p>

    <%-- Extraction du 3ᵉ caractère --%>
    <% if (longueurChaine >= 3) { %>
        <% char caractereExtrait = chaine.charAt(2); %>
        <p>Le 3ᵉ caractère de votre chaîne est : <%= caractereExtrait %></p>
    <% } else { %>
        <p>La chaîne est trop courte pour extraire un 3ᵉ caractère.</p>
    <% } %>

    <%-- Sous-chaîne de la position 2 à 6 --%>
    <% if (longueurChaine >= 6) { %>
        <% String sousChaine = chaine.substring(2, 6); %>
        <p>Une sous-chaîne de votre texte : <%= sousChaine %></p>
    <% } else { %>
        <p>La chaîne est trop courte pour extraire une sous-chaîne de 2 à 6.</p>
    <% } %>

    <%-- Recherche de la lettre "e" --%>
    <% int position = chaine.indexOf('e'); %>
    <% if (position != -1) { %>
        <p>Votre premier "e" est en position : <%= position %></p>
    <% } else { %>
        <p>La lettre "e" n'est pas présente dans votre chaîne.</p>
    <% } %>

<hr>

<h2>Exercice 1 : Combien de 'e' dans notre chaine de caractères ?</h2>
<%
    int compteurE = 0;
    for (int i = 0; i < longueurChaine; i++) {
        if (chaine.charAt(i) == 'e' || chaine.charAt(i) == 'E') {
            compteurE++;
        }
    }
%>
<p>Votre texte contient <%= compteurE %> lettre(s) "e".</p>

<hr>

<h2>Exercice 2 : Affichage vertical</h2>
<%
    for (int i = 0; i < longueurChaine; i++) {
%>
    <p><%= chaine.charAt(i) %></p>
<%
    }
%>

<hr>

<h2>Exercice 3 : Retour à la ligne après chaque espace</h2>
<%
    String[] mots = chaine.split(" ");
    for (String mot : mots) {
%>
    <p><%= mot %></p>
<%
    }
%>

<hr>

<h2>Exercice 4 : Afficher une lettre sur deux</h2>
<%
    StringBuilder uneLettreSurDeux = new StringBuilder();
    for (int i = 0; i < longueurChaine; i += 2) {
        uneLettreSurDeux.append(chaine.charAt(i));
    }
%>
<p><%= uneLettreSurDeux.toString() %></p>

<hr>

<h2>Exercice 5 : La phrase en verlant</h2>
<%
    StringBuilder verlant = new StringBuilder(chaine);
    verlant.reverse();
%>
<p><%= verlant.toString() %></p>

<hr>

<h2>Exercice 6 : Consonnes et voyelles</h2>
<%
    int voyelles = 0;
    int consonnes = 0;
    for (int i = 0; i < longueurChaine; i++) {
        char c = Character.toLowerCase(chaine.charAt(i));
        if (Character.isLetter(c)) {
            if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' || c == 'y') {
                voyelles++;
            } else {
                consonnes++;
            }
        }
    }
%>
<p>Nombre de voyelles : <%= voyelles %></p>
<p>Nombre de consonnes : <%= consonnes %></p>

<% } %>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
