<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les tableaux</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les tableaux</h1>
<form action="#" method="post">
    <p>Saisir au minimu 3 chiffres à la suite, exemple : 6 78 15 <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>
    
    <% if (chaine != null) { %>

    <%-- Division de la chaîne de chiffres séparés par des espaces --%>
    <% String[] tableauDeChiffres = chaine.split("\\s+"); %>
    <p>La tableau contient <%= tableauDeChiffres.length %> valeurs</br>
    Chiffre 1 : <%= Integer.parseInt(tableauDeChiffres[0]) %></br>
    Chiffre 2 : <%= Integer.parseInt(tableauDeChiffres[1]) %></br>
    Chiffre 3 : <%= Integer.parseInt(tableauDeChiffres[2]) %></p>
    
<h2>Exercice 1 : La carré de la première valeur</h2>
<p>
    <%
        int chiffre1 = Integer.parseInt(tableauDeChiffres[0]);
        out.print("Carré du premier chiffre : "+chiffre1*chiffre1);
    %>
</p>
<h2>Exercice 2 : La somme des 2 premières valeurs</h2>
<p>
    <%
    out.print(Integer.parseInt(tableauDeChiffres[0])+Integer.parseInt(tableauDeChiffres[1]));
    %>
</p>

<h2>Exercice 3 : La somme de toutes les valeurs</h2>
<p>
    <%
    int sumChiffre=0;
		for(int i=0; i<tableauDeChiffres.length;i++) {
		    sumChiffre +=Integer.parseInt(tableauDeChiffres[i]);
		}
		out.print(sumChiffre);
    %>
</p>

<h2>Exercice 4 : La valeur maximum</h2>
<p>
    <%
    int valMax=0;
		
    for(int i=0; i<tableauDeChiffres.length;i++) {
        if(i>0 && Integer.parseInt(tableauDeChiffres[i])>valMax) {
            valMax=Integer.parseInt(tableauDeChiffres[i]);
        }
    }
    out.print(valMax);
    %>
</p>

<h2>Exercice 5 : La valeur minimale</h2>
<p>
    <%
    int valMin=Integer.parseInt(tableauDeChiffres[0]);
		
    for(int i=0; i<tableauDeChiffres.length;i++) {
        if(i>0 && Integer.parseInt(tableauDeChiffres[i])<valMin) {
            valMax=Integer.parseInt(tableauDeChiffres[i]);
        }
    }
    out.print(valMin);
    %>
</p>

<h2>Exercice 6 : La valeur le plus proche de 0</h2>
<p>
    <%
    int valZero=Integer.parseInt(tableauDeChiffres[0]);
		
    for(int i=0; i<tableauDeChiffres.length;i++) {
        if(i>0 && Integer.parseInt(tableauDeChiffres[i])*Integer.parseInt(tableauDeChiffres[i])<valZero*valZero) {
            valZero=Integer.parseInt(tableauDeChiffres[i]);
        }
    }
    out.print(valZero);
    %>
</p>

<h2>Exercice 7 : La valeur le plus proche de 0 (2° version)</h2>
<p>
    <%
    int valZeroPos=Integer.parseInt(tableauDeChiffres[0]);
		
    for(int i=0; i<tableauDeChiffres.length;i++) {
        if(i>0 && Integer.parseInt(tableauDeChiffres[i])*Integer.parseInt(tableauDeChiffres[i])<valZeroPos*valZeroPos) {
            valZeroPos=Integer.parseInt(tableauDeChiffres[i]);
        }
        if(Integer.parseInt(tableauDeChiffres[i])*Integer.parseInt(tableauDeChiffres[i])==valZeroPos*valZeroPos) {
            valZeroPos=Math.abs(valZeroPos);
        }
    }
    System.out.print(valZeroPos);
    %>
</p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
