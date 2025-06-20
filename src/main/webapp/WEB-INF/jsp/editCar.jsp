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
        <h1 class="text-2xl font-bold text-center">Modification !</h1>
    </marquee>

    <form  action="/car/update" method="post" class="grid grid-cols-1 md:grid-cols-2 gap-6 bg-blue-50 p-6 rounded-lg shadow-inner">
        <input type="hidden" name="id" value="${voiture.id}" class="p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 transition duration-200" />
        <input type="text" name="marque" placeholder="Marque" value="${voiture.marque}" class="p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 transition duration-200" required>
        <input type="text" name="modele" placeholder="Modèle" value="${voiture.modele}" class="p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 transition duration-200" required>
        <input type="text" name="annee" placeholder="Année" value="${voiture.annee}"  class="p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 transition duration-200" required>
        <input type="text" name="matricule" placeholder="Matricule"  value="${voiture.matricule}" class="p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 transition duration-200" required>
        <input type="text" name="carburant" placeholder="Carburant" value="${voiture.carburant}" class="p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 transition duration-200" required>
        <input type="text" name="couleur" placeholder="Couleur" value="${voiture.couleur}" class="p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 transition duration-200" required>
        <input type="text" name="type" placeholder="Type" value="${voiture.type}" class="p-3 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 transition duration-200" required>

        <button type="submit" class="col-span-full bg-blue-600 text-white font-bold py-3 px-6 rounded-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2 transition duration-300 transform hover:scale-105">
            Modifier
        </button>
    </form>
</div>

</body>
</html>