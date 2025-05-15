<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>

<%
    // Récupération ou initialisation du tableau en session
    List<Integer> tableau = (List<Integer>) session.getAttribute("tableau");
    if (tableau == null) {
        tableau = new ArrayList<>();
        session.setAttribute("tableau", tableau);
    }

    String action = request.getParameter("action");
    String message = "";

    if ("ajouter".equals(action)) {
        if (tableau.size() >= 10) {
            message = "Erreur : le tableau est déjà plein (10 éléments maximum).";
        } else {
            try {
                int valeur = Integer.parseInt(request.getParameter("valeur"));
                tableau.add(valeur);
                message = "Valeur " + valeur + " ajoutée avec succès.";
            } catch (Exception e) {
                message = "Erreur : entrez un entier valide.";
            }
        }
    } else if ("supprimer".equals(action)) {
        if (!tableau.isEmpty()) {
            int supprimee = tableau.remove(tableau.size() - 1);
            message = "Valeur supprimée : " + supprimee;
        } else {
            message = "Erreur : le tableau est déjà vide.";
        }
    } else if ("vider".equals(action)) {
        tableau.clear();
        message = "Le tableau a été vidé avec succès.";
    } else if ("afficher".equals(action)) {
        if (tableau.isEmpty()) {
            message = "Le tableau est vide.";
        } else {
            message = "Contenu du tableau : " + tableau.toString();
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tableau Interactif</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 30px;
            background-color: #f2f2f2;
        }
        h2 {
            color: #333;
        }
        form {
            background-color: #fff;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 0 10px #aaa;
            max-width: 400px;
        }
        input[type="text"] {
            padding: 5px;
            width: 60px;
        }
        button {
            margin: 5px;
            padding: 7px 15px;
            font-size: 14px;
        }
        .message {
            margin-top: 20px;
            color: blue;
            font-weight: bold;
        }
        .etat {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h2>Tableau d'entiers - Menu interactif</h2>

    <form method="post">
        <label>Entrer une valeur :</label>
        <input type="text" name="valeur" />
        <button type="submit" name="action" value="ajouter">Ajouter</button><br><br>

        <button type="submit" name="action" value="supprimer">Supprimer la dernière valeur</button>
        <button type="submit" name="action" value="afficher">Afficher le tableau</button>
        <button type="submit" name="action" value="vider">Vider le tableau</button>
    </form>

    <div class="message"><%= message %></div>

    <div class="etat">
        <h3>État actuel du tableau :</h3>
        <% if (tableau.isEmpty()) { %>
            <p>Aucune valeur enregistrée.</p>
        <% } else { %>
            <ul>
                <% for (Integer val : tableau) { %>
                    <li><%= val %></li>
                <% } %>
            </ul>
        <% } %>
    </div>
</body>
</html>

