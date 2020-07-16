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
if (isset($_POST['login']) && isset ($_POST ['password']) && $_POST ['password']== "tess") {
echo "login : " .$_POST['login'];
echo "<br>password : ".$_POST['password'];
session_start();
$_SESSION ["id"]= $_POST ['login'];
setcookie("id",$_SESSION["id"]);
header ('Location: front.php?page=accueil');

}
else {
    echo "Mauvais couple identifiant/mot de passe.";
    echo "<a href= 'connexion.php'> lien de connexion  </a>";
}
?>