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

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeur = request.getParameter("valeur"); %>
    
<%-- Vérification de l'existence de la valeur --%>
<% if (valeur != null && !valeur.isEmpty()) { %>

<%-- Boucle for pour afficher une ligne d'étoiles --%>
    <%int cpt = Integer.parseInt(valeur); %>
    <p>
    <% for (int i = 1; i <= cpt; i++) { %>
       <%= "*" %>
    <% } %>
    </p>

<h2>Exercice 1 : Le carré d'étoiles</h2>
<p>
    <% for (int j = 1; j <= cpt; j++) { %>
        <% for (int i = 1; i <= cpt; i++) { %>
            <%= "*" %>
        <% } %>
        <%= "\n" %>
    <% } %>
</p>

<h2>Exercice 2 : Triangle rectangle gauche</h2>
<p>
    <% for (int j = 1; j <= cpt; j++) { %>
        <% for (int i = cpt; i < cpt+j; i++) { %>
            <%= "*" %>
        <% } %>
        <%= "\n" %>
    <% } %>
</p>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
