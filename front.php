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
include ('header.php');
?>

<?php
include ('navigation.php');
?>


<?php

if (isset($_GET["page"]) && $_GET["page"] == "accueil") {
include "front-office-accueil.php";
}

if (isset($_GET["page"]) && $_GET["page"] == "articles") {
include "front-office-articles.php";
}

if (isset($_GET["page"]) && $_GET["page"] == "contact") {
include "front-office-contact.php";
} 

if (isset($_GET["page"]) && $_GET["page"] == "connexion") {
    include "connexion.php";
} 



?>

<?php
include ('footer.php');

?>
   
</body>
</html>