<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>

<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>

<%
    String valeur = request.getParameter("valeur");
%>

<% if (valeur != null && !valeur.isEmpty()) { 
    int cpt = Integer.parseInt(valeur);
%>

<h2>Exercice 1 : Le carré d'étoiles</h2>
<p>Exemple si l'utilisateur saisie la valeur 5</p>
<p>*****<br>*****<br>*****<br>*****<br>*****</p>

<p>
<% for (int i = 0; i < cpt; i++) { %>
    <% for (int j = 0; j < cpt; j++) { %>
        <%= "*" %>
    <% } %>
    <br>
<% } %>
</p>

<hr>

<h2>Exercice 2 : Triangle rectangle gauche</h2>
<p>*<br>**<br>***<br>****<br>*****</p>

<p>
<% for (int i = 0; i < cpt; i++) { %>
    <% for (int j = 0; j <= i; j++) { %>
        <%= "*" %>
    <% } %>
    <br>
<% } %>
</p>

<hr>

<h2>Exercice 3 : Triangle rectangle inversé</h2>
<p>*****<br>****<br>***<br>**<br>*</p>

<p>
<% for (int i = cpt; i > 0; i--) { %>
    <% for (int j = 0; j < i; j++) { %>
        <%= "*" %>
    <% } %>
    <br>
<% } %>
</p>

<hr>

<h2>Exercice 4 : Triangle rectangle aligné à droite</h2>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;*<br>
&nbsp;&nbsp;&nbsp;**<br>
&nbsp;&nbsp;***<br>
&nbsp;****<br>
*****<br>
</p>

<p>
<% for (int i = 0; i < cpt; i++) { %>
    <% for (int j = 0; j < cpt - i - 1; j++) { %>
        &nbsp;
    <% } %>
    <% for (int j = 0; j <= i; j++) { %>
        <%= "*" %>
    <% } %>
    <br>
<% } %>
</p>

<hr>

<h2>Exercice 5 : Triangle isocèle</h2>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;*<br>
&nbsp;&nbsp;&nbsp;**<br>
&nbsp;&nbsp;***<br>
&nbsp;****<br>
*****<br>
</p>

<p>
<% for (int i = 1; i <= cpt; i++) { %>
    <% for (int j = 0; j < cpt - i; j++) { %>
        &nbsp;
    <% } %>
    <% for (int j = 0; j < i; j++) { %>
        <%= "*" %>
    <% } %>
    <br>
<% } %>
</p>

<hr>

<h2>Exercice 6 : Le demi-losange</h2>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;*<br>
&nbsp;&nbsp;&nbsp;**<br>
&nbsp;&nbsp;***<br>
&nbsp;****<br>
*****<br>
*****<br>
&nbsp;****<br>
&nbsp;&nbsp;***<br>
&nbsp;&nbsp;&nbsp;**<br>
&nbsp;&nbsp;&nbsp;&nbsp;*<br>
</p>

<p>
<% for (int i = 1; i <= cpt; i++) { %>
    <% for (int j = 0; j < cpt - i; j++) { %>
        &nbsp;
    <% } %>
    <% for (int j = 0; j < i; j++) { %>
        <%= "*" %>
    <% } %>
    <br>
<% } %>

<% for (int i = cpt; i > 0; i--) { %>
    <% for (int j = 0; j < cpt - i; j++) { %>
        &nbsp;
    <% } %>
    <% for (int j = 0; j < i; j++) { %>
        <%= "*" %>
    <% } %>
    <br>
<% } %>
</p>

<hr>

<h2>Exercice 7 : Table de multiplication</h2>
<p>
5 x 1 = 5<br>
5 x 2 = 10<br>
5 x 3 = 15<br>
5 x 4 = 20<br>
5 x 5 = 25<br>
</p>

<p>
<% for (int i = 1; i <= cpt; i++) { %>
    <%= cpt %> x <%= i %> = <%= cpt * i %><br>
<% } %>
</p>

<% } %>

<p><a href="index.html">Retour au sommaire</a></p>

</body>
</html>
