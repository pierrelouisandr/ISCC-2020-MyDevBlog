

<form action="ajout-article.php" method="post" enctype="multipart/form-data">

<label for="id"></label>
<input type="text" id="id" name="id" placeholder="id"><br>

 <label for="titre"></label>
<input type="text" id="titre" name="titre" placeholder="titre"><br>

 <label for="image"></label>
<input type="file" id="image" name="image" placeholder="image" accept="image/png, image/jpeg, image/jpg" required><br>
 
<label for="auteur"></label>
<input type="text" id="auteur" name="auteur" placeholder="auteur"><br>

 <label for="texte"></label>
<input type="text" id="texte" name="texte" placeholder="texte"><br>

<label for="date de publication"></label>
<input type="texte" id="date de publication" name= "date de publication" placeholder="date de publication"><br>

<label for="extrait"></label>
<input type="text" id="extrait" name= "extrait" placeholder="extrait"><br>

<input type="submit" value="Envoyer">
</form>


 
<?php

function connect_to_database(){
$servername = 'localhost';
$username = 'root';
$password= '';
$madatabase = 'mydevblog';
try { 
$pdo = new PDO("mysql:host=$servername;dbname=$madatabase",$username,$password);
$pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
echo "Connected Successfully"; 
return $pdo;
}
catch (PDOException $e){
echo "connection failed : ".$e->getMessage();
}
}

$pdo = connect_to_database();
$titre=$_POST["titre"];
$image=$_POST["image"];
$auteur=$_POST["auteur"];
$texte=$_POST["texte"];
$datedepublication=$_POST["date de publication"];
$extrait=$_POST["extrait"];

$result=$pdo->query("INSERT INTO `articles` VALUES ('', '$titre', '$image', '$auteur', '$texte', '$datedepublication', '$extrait')");

if (isset($_POST['titre']))
header ("Location: back-office.php?page=liste article");
?>
