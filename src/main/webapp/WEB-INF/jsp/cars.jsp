<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="sn.esmt.demo2025.domain.Vehicule" %>
<%@ page import="java.util.List" %>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Liste des voitures</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen p-8 flex justify-center">

<div class="w-full max-w-7xl bg-white rounded-xl shadow-lg p-6">
    <!-- Titre -->
    <h1 class="text-3xl font-bold text-center text-gray-800 mb-6">
        Liste des Voitures
    </h1>

    <!-- Bouton d'ajout -->
    <div class="mb-4">
        <a href="/"
           class="bg-yellow-500 hover:bg-yellow-600 text-white px-4 py-2 rounded">
            Ajouter une voiture
        </a>
    </div>
    <table class="min-w-full table-auto border-collapse">
        <thead class="bg-blue-600 text-white">
        <tr class="text-lg leading-relaxed">
            <th class="px-6 py-4 text-left">Matricule</th>
            <th class="px-6 py-4 text-left">Marque</th>
            <th class="px-6 py-4 text-left">Modèle</th>
            <th class="px-6 py-4 text-left">Année</th>
            <th class="px-6 py-4 text-left">Carburant</th>
            <th class="px-6 py-4 text-left">Couleur</th>
            <th class="px-6 py-4 text-left">Type</th>
            <th class="px-6 py-4 text-center">Actions</th>
        </tr>
        </thead>
        <tbody class="text-gray-800 text-base">
            <% for (
            Vehicule vehicule : (List<Vehicule>) request.getAttribute("cars")
             ) { %>
            <tr class="hover:bg-gray-100 border-b">
                <td class="px-6 py-4"><%= vehicule.getMatricule() %></td>
                <td class="px-6 py-4"><%= vehicule.getMarque() %></td>
                <td class="px-6 py-4"><%= vehicule.getModele() %></td>
                <td class="px-6 py-4"><%= vehicule.getAnnee() %></td>
                <td class="px-6 py-4"><%= vehicule.getCarburant() %></td>
                <td class="px-6 py-4"><%= vehicule.getCouleur() %></td>
                <td class="px-6 py-4"><%= vehicule.getType() %></td>
                <td class="px-6 py-4 text-center">
                    <a href="/car/edit/<%= vehicule.getId() %>"
                       class="inline-block bg-yellow-500 hover:bg-yellow-600 text-white px-4 py-2 rounded mr-2">
                        Modifier
                    </a>
                    <a href="/car/delete/<%= vehicule.getId() %>"
                       onclick="return confirm('Confirmer la suppression ?')"
                       class="inline-block bg-red-600 hover:bg-red-700 text-white px-4 py-2 rounded">
                        Supprimer
                    </a>
                </td>
            </tr>
    <% } %>
        </tbody>
    </table>
</div>
 </body>
 </html>