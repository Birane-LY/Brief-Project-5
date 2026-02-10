# Brief-Project-5
Ce projet s'inscrit dans le cadre de ma formation à Simplon Sénégal où j'ai eu à travailler individuellement dans ce nouveau brief projet.

Système de Gestion de Stock Solidaire
Présentation du Projet
Cette application a été conçue pour une structure solidaire gérant un volume important de matériel informatique. L'objectif principal est d'assurer une traçabilité totale des flux (entrées et sorties) pour prévenir les pertes et optimiser la disponibilité du matériel (informatique, papeterie, mobilier).

 Fonctionnalités Clés
Gestion Multicritère : Organisation des produits par catégories logiques.

Traçabilité Complète : Historisation automatique de chaque mouvement de stock (Achat, Vente, etc.).

Suivi en Temps Réel : Affichage du statut des produits (Disponible / En rupture).

Système d'Alerte : Identification immédiate des produits dont le stock est critique (inférieur à 5 unités).

Interface CRUD : Gestion complète (Ajout, Modification, Suppression, Lecture) des produits et catégories.

Architecture de la Base de Données
La solution repose sur une base de données relationnelle MySQL structurée comme suit :

Categories : Définit les types de matériel (id_categorie, nom_categorie).

Produits : Stocke les informations techniques et les niveaux de stock (id_produit, code_produit, designation, prix, quantite, statut_produit).

Mouvements : Table d'historique enregistrant chaque transaction (id_mouvement, nature_mouvement, quantite_mouv, date_mouvement).

Technologies Utilisées
Langage : Python 3

Base de données : MySQL

Connecteur : mysql-connector-python

Bibliothèques standards : datetime, re, sys

Installation et Configuration
Prérequis
Un serveur MySQL local.

Python installé sur votre machine.

Étapes
Clonage du dépôt :

git clone [url-du-repo]
Installation des dépendances :

pip install mysql-connector-python
Configuration de la base de données :

Créez une base nommée boutique_gestion_systeme.

Mettez à jour les identifiants de connexion dans le script (hôte, utilisateur, mot de passe).

Utilisation
Lancez l'application via la console :

python boutique_systeme.py
Le menu principal vous permet de naviguer intuitivement entre les différentes options de gestion.

Logique Métier Implémentée
Auto-génération : Les codes produits sont générés automatiquement (ex: P001, P002).

Validation : Contrôle des saisies utilisateurs (prix minimum, noms valides, quantités positives).

Automatisation : Chaque vente ou ajout de stock met à jour la table Produits et crée simultanément une entrée dans Mouvements.
