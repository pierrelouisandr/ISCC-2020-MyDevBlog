<form action="ajout-utilisateur.php" method="post" enctype="multipart/form-data">

<label for="nom"></label>
<input type="text" id="nom" name="nom" placeholder="nom utilisateur">

<label for="login"></label>
<input type="text" id="login" name= "login" placeholder="login">

<label for="password"></label>
<input type="text" id="password" name= "password" placeholder="password">

<input type="submit" value="Envoyer">
</form>

<?php

function connect_to_database(){
$servername = 'localhost';
$username = 'root';
$password= '';
$madatabase = 'backoffice';
try { 
$pdo = new PDO("mysql:host=$servername;dbname=$madatabase",$username,$password);
$pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);

return $pdo;
}
catch (PDOException $e){
echo "connection failed : ".$e->getMessage();
}
}

$pdo = connect_to_database();
$nom=$_POST["nom utilisateur"];
$login=$_POST["login"];
$password=$_POST["password"];

$result=$pdo->query("INSERT INTO `utilisateurs` VALUES ('$nom', '$login', '$password')");

if (isset($_POST['nom utilisateur']))
header ("Location: back-office.php");
?>
