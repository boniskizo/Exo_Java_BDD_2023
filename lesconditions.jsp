<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Exercices Condition</title>
</head>
<body>
    <h2>Comparaison entre deux valeurs</h2>
    <form method="post">
        Valeur 1 : <input type="text" name="valeur1"> 
        Valeur 2 : <input type="text" name="valeur2"> 
        <input type="submit" name="comparer" value="Comparer">
    </form>
    <% 
        if (request.getParameter("comparer") != null) {
            int val1 = Integer.parseInt(request.getParameter("valeur1"));
            int val2 = Integer.parseInt(request.getParameter("valeur2"));
            String resultat = (val1 > val2) ? "Valeur 1 est plus grande" : (val1 < val2) ? "Valeur 2 est plus grande" : "Les deux valeurs sont égales";
            out.println("<p>Résultat: " + resultat + "</p>");
        }
    %>
    
    <h2>Exercice 1 : Comparaison</h2>
    <form method="post">
        Valeur 1 : <input type="text" name="valeurA"> 
        Valeur 2 : <input type="text" name="valeurB"> 
        Valeur 3 : <input type="text" name="valeurC"> 
        <input type="submit" name="verifier1" value="Vérifier">
    </form>
    <% 
        if (request.getParameter("verifier1") != null) {
            int a = Integer.parseInt(request.getParameter("valeurA"));
            int b = Integer.parseInt(request.getParameter("valeurB"));
            int c = Integer.parseInt(request.getParameter("valeurC"));
            int max = Math.max(a, Math.max(b, c));
            out.println("<p>Le plus grand nombre est : " + max + "</p>");
        }
    %>
    
    <h2>Exercice 2 : Pair ou Impair ?</h2>
    <form method="post">
        Saisir un nombre : <input type="text" name="nombre"> 
        <input type="submit" name="verifier2" value="Vérifier">
    </form>
    <% 
        if (request.getParameter("verifier2") != null) {
            int nombre = Integer.parseInt(request.getParameter("nombre"));
            String resultat = (nombre % 2 == 0) ? "Pair" : "Impair";
            out.println("<p>Le nombre est : " + resultat + "</p>");
        }
    %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
