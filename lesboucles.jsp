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

<h2>Exercice 3 : Triangle rectangle inversé</h2>
<p>
    <% for (int j = 0; j < cpt; j++) { %>
        <% for (int i = 0; i < cpt-j; i++) { %>
            <%= "*" %>
        <% } %>
        <%= "\n" %>
    <% } %>
</p>

<h2>Exercice 4 : Triangle rectangle 2</h2>
<p><% for (int j = 0; j < cpt; j++) {%>
    <% for (int i = 0; i < cpt; i++) {%>
        <% if (i+1<cpt-j) { %>
            <% out.print(" "); %>
        <% } %>
        
        <% else { %>
            <% out.print("*"); %>
        <% } %>
    <% out.print("\n"); %>
    <% } %>
<% } %> <% } %>
</p>

<h2>Exercice 5 : Triangle isocele</h2>
<p><% for (int j = 0; j < cpt; j++) {%>
    <% for (int i = 0; i < cpt; i++) {%>
        <% if (i+1<cpt-j) { %>
            &nbsp;
        <% } %>
        
        <% else { %>
            <% out.print("* "); %>
        <% } %>
    <% out.print("\n"); %>
    <% } %>
<% } %>
</p>

<h2>Exercice 6 : Le demi losange</h2>
<p><% for (int j = 0; j < cpt; j++) {%>
    <% for (int i = 0; i < cpt; i++) {%>
        <% if (i+1<cpt-j) {%>
            &nbsp;
        <% } %>
        
        <%else {%>
            <%out.print("*"); %>
        <% } %>
    <% out.print("\n"); %>
    <% } %>
<% } %>

<% for (int i = 0; i < cpt; i++) { %>
    <% for (int j = 0; j < i; j++) { %>
         <% out.print(" "); %>
     <% } %>
     
     <% for (int k = 0; k < (cpt - i); k++) { %>
         <% out.print("*"); %>
     <% } %>
     
     <% out.println(); %>
 <% } %>
</p>


<h2>Exercice 7 : La table de multiplication</h2>
<% for(int i=1;i<=cpt;i++) { %>
    <% out.println(cpt+" x "+i+" = "+cpt*i); %>
<% } %>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
