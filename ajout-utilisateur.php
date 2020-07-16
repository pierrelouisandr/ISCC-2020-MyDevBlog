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
echo "Connected Successfully"; 
return $pdo;
}
catch (PDOException $e){
echo "connection failed : ".$e->getMessage();
}
}

$pdo = connect_to_database();

$users = $pdo->query("SELECT * FROM `utilisateurs` WHERE `login` LIKE '%$login%'")->fetchAll();

if (empty($users[0]["id"])) {
    $pdo->query("INSERT INTO `utilisateurs` (`id`, `nom utilisateur`, `login`, `password`VALUE (NULL, '$utilisateur', '$login', '$password')");
    $pdo->query("UPDATE `utilisateurs` SET `password`='$password', `nom utilisateur`='$utilisateur' WHERE `nom utilisateur`.`id` = '${users['id']}';");

}
?>