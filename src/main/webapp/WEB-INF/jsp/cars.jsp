<%@ page import="sn.esmt.demo2025.domain.Vehicule" %>
<%@ page import="java.util.List" %>
<html>
 <body>
 <h1>Cars</h1>
 <% for (
         Vehicule vehicule : (List<Vehicule>) request.getAttribute("cars")
        ) { %>
    <p>
     <strong> Matricule:</strong> <%= vehicule.getMatricule() %><br>
        <strong>Model:</strong> <%= vehicule.getModele() %><br>
        <strong>Marque:</strong> <%= vehicule.getMarque() %><br>
        <strong>Annee:</strong> <%= vehicule.getAnnee() %><br>
        <strong>Carburant:</strong> <%= vehicule.getCarburant() %><br>
        <strong>Couleur:</strong> <%= vehicule.getCouleur() %><br>
        <strong>Type:</strong> <%= vehicule.getType() %><br>
    </p>
 <a href="/car/edit/<%= vehicule.getId() %>">Modifier</a>
 <a href="/car/delete/<%= vehicule.getId() %>" onclick="return confirm('Confirmer la suppression ?')">Supprimer</a>
 <% } %>

 </body>
 </html>