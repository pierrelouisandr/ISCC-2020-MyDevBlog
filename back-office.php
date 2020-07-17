<DOCTYPE html>
    <html lang="fr">
    
    <head>
        <title> Les Z'animaux </title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="mydevblog.css">
    </head> 
 
    <body>

<?php
include ("header2.php");
?>

<?php
include ("navigation2.php");
?>

<?php


if (isset($_GET["page"]) && $_GET["page"] == "ajout article") {
include "ajout-article.php";
}

if (isset($_GET["page"]) && $_GET["page"] == "ajout utilisateur") {
    include "ajout-utilisateur.php";
    }

if (isset($_GET["page"]) && $_GET["page"] == "utilisateurs") {
include "utilisateurs.php";
} 

if (isset($_GET["page"]) && $_GET["page"] == "liste article") {
    include "liste-article.php";
    } 

if (isset($_GET["page"]) && $_GET["page"] == "deconnexion") {
include "deconnexion.php";
} 

?>

   
</body>
</html>