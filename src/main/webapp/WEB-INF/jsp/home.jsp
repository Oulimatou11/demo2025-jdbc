<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion de Voiture</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen flex flex-col items-center justify-center p-4">

<div class="w-full max-w-4xl bg-white rounded-lg shadow-xl p-8">
    <marquee class="bg-blue-500 text-white py-2 px-4 rounded-md mb-6 shadow-md">
        <h1 class="text-2xl font-bold text-center">Bienvenue !</h1>
    </marquee>

    <div class="mb-8">
        <h2 class="text-3xl font-semibold text-gray-800 mb-4 border-b-2 pb-2 border-blue-400">Voiture:</h2>
        <p class="text-lg text-gray-700 bg-gray-50 p-4 rounded-md border border-gray-200">
            <span class="font-medium">Marque:</span> ${voiture.getMarque()},
            <span class="font-medium">Modèle:</span> ${voiture.getModele()},
            <span class="font-medium">Année:</span> ${voiture.getAnnee()},
            <span class="font-medium">Matricule:</span> ${voiture.getMatricule()},
            <span class="font-medium">Carburant:</span> ${voiture.getCarburant()},
            <span class="font-medium">Couleur:</span> ${voiture.getCouleur()},
            <span class="font-medium">Type:</span> ${voiture.getType()}
        </p>
    </div>

    <form action="add" method="post" class="grid grid-cols-1 md:grid-cols-2 gap-6 bg-blue-50 p-6 rounded-lg shadow-inner">
        <input type="text" name="marque" placeholder="Marque" class="p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 transition duration-200" required>
        <input type="text" name="modele" placeholder="Modèle" class="p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 transition duration-200" required>
        <input type="text" name="annee" placeholder="Année" class="p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 transition duration-200" required>
        <input type="text" name="matricule" placeholder="Matricule" class="p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 transition duration-200" required>
        <input type="text" name="carburant" placeholder="Carburant" class="p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 transition duration-200" required>
        <input type="text" name="couleur" placeholder="Couleur" class="p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 transition duration-200" required>
        <input type="text" name="type" placeholder="Type" class="p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 transition duration-200" required>

        <button type="submit" class="col-span-full bg-blue-600 text-white font-bold py-3 px-6 rounded-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2 transition duration-300 transform hover:scale-105">
            Ajouter
        </button>
    </form>
</div>

</body>
</html>