<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les chaines</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les chaines de charactères</h1>
<form action="#" method="post">
    <p>Saisir une chaine (Du texte avec 6 caractères minimum) : <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>

<h2>Exercice 1 : Combien de 'e' dans notre chaine de charactère ?</h2>
<%
    int countE = 0;
    for (char c : chaine.toCharArray()) {
        if (c == 'e') countE++;
    }
%>
<p>Nombre de 'e' dans la chaîne : <%= countE %></p>


<h2>Exercice 2 : Affichage verticale</h2>
<%
    for (char c : chaine.toCharArray()) {
        out.println(c + "<br>");
    }
%>

<h2>Exercice 3 : Retour à la ligne</h2>
<p>
<%
    String[] mots = chaine.split(" ");
    for (String mot : mots) {
        out.println(mot + "<br>");
    }
%>
</p>

<h2>Exercice 4 : Afficher une lettre sur deux</h2>
    <p>
    <%
        for (int i = 0; i < chaine.length(); i += 2) {
            out.print(chaine.charAt(i));
        }
    %>
</p>

<h2>Exercice 5 : La phrase en verlant</h2>
<p>
    <%
	    String chaine = "L'hiver est pluvieux";
		
		for(int i=chaine.length();i>=1;i--) {
		    System.out.print(chaine.charAt(i-1));
	    }
	%>
</p>

<h2>Exercice 6 : Consonnes et voyelles</h2>
<p>Ecrire le programme afin de compter les consonnes et les voyelles dans votre texte</p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
