<DOCTYPE !>
<html>
<head>
<title>mini-site-routing</title>
<meta charset="utf-8">
<meta name="viexport" content = "width-device-width, initial-scale-1.0">
</head>
<body>
<header>
<nav>
<ul>
<li><a href="front-office-accueil.php?page=1">Accueil</a></li>
<li><a href="front-office-accueil.php?page=2">Articles</a></li>
<li><a href="front-office-accueil.php?page=3">Contact</a></li>
</ul>
</nav>
<?php
if ($_GET ['page'] == 1)
echo "<p> Accueil </p>" ; 
if ($_GET ['page'] == 2)
echo "<p> Articles </p>" ;
if ($_GET ['page'] == 3)
echo "<p> Contact </p>"; 
?>
</body>
</html>