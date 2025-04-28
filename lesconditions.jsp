<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur 1 : <input type="text" id="inputValeur" name="valeur1"></p>
    <p>Saisir la valeur 2 : <input type="text" id="inputValeur" name="valeur2"></p>
    <p>Saisir la valeur 3 : <input type="text" id="inputValeur" name="valeur3"></p>
    <p><input type="submit" value="Afficher"></p>
</form>

<%-- Récupération des valeurs --%>
<%
    String valeur1 = request.getParameter("valeur1");
    String valeur2 = request.getParameter("valeur2");
    String valeur3 = request.getParameter("valeur3");
%>

<%-- Vérification de la condition entre les deux premières valeurs --%>
<% if (valeur1 != null && valeur2 != null && !valeur1.isEmpty() && !valeur2.isEmpty()) { %>
    <%-- Conversion des deux premières valeurs en entiers pour la comparaison --%>
    <% int intValeur1 = Integer.parseInt(valeur1); %>
    <% int intValeur2 = Integer.parseInt(valeur2); %>
    
    <%-- Condition if pour comparer les deux premières valeurs --%>
    <% if (intValeur1 > intValeur2) { %>
        <p>Valeur 1 est supérieure à Valeur 2.</p>
    <% } else if (intValeur1 < intValeur2) { %>
        <p>Valeur 1 est inférieure à Valeur 2.</p>
    <% } else { %>
        <p>Valeur 1 est égale à Valeur 2.</p>
    <% } %>

<h2>Exercice 1 : Comparaison 1</h2>
<p>Ecrire un programme qui demande à l'utilisateur de saisir 3 valeurs (des chiffres),
A, B et C et dites nous si la valeur de C est comprise entre A et B.</p>
<p>Exemple :<br>
A = 10<br>
B = 20<br>
C = 15<br>
Oui C est compris entre A et B</p>

<pre>
public class Main {
    public static void main(String[] args) {
        int A = 10;
        int B = 20;
        int C = 15;
        if (C >= A && C <= B) {
            System.out.println("C est compris entre A et B");
        } else {
            System.out.println("C n'est pas compris entre A et B");
        }
    }
}
</pre>

    <% if (valeur3 != null && !valeur3.isEmpty()) { %>
        <% int intValeur3 = Integer.parseInt(valeur3); %>
        <% if (intValeur3 >= intValeur1 && intValeur3 <= intValeur2) { %>
            <p>C est compris entre A et B.</p>
        <% } else { %>
            <p>C n'est pas compris entre A et B.</p>
        <% } %>
    <% } %>

<hr>

<h2>Exercice 2 : Pair ou Impair ?</h2>
<p>Écrivez un programme pour vérifier si un nombre est pair ou impair en utilisant une structure if</p>

<pre>
public class Main {
    public static void main(String[] args) {
        int nombre = 5;
        if (nombre % 2 == 0) {
            System.out.println("Le nombre est pair");
        } else {
            System.out.println("Le nombre est impair");
        }
    }
}
</pre>

    <% if (valeur1 != null && !valeur1.isEmpty()) { %>
        <% int nombre = Integer.parseInt(valeur1); %>
        <% if (nombre % 2 == 0) { %>
            <p>Valeur 1 est un nombre pair.</p>
        <% } else { %>
            <p>Valeur 1 est un nombre impair.</p>
        <% } %>
    <% } %>

<% } %>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
