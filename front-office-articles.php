<DOCTYPE html>
    <html lang="fr">
    
    <head>
        <title> Articles </title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="mydevblog.css">
    </head> 
 


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
$pdo= connect_to_database();

$users = $pdo->query("SELECT * FROM articles ")->fetchAll();
       
foreach ($users as $user){
    echo ("<ul class='articles'>");

    echo ("<B>" . $user['titre'] ."</B>");

    echo ("<br><br><image src='" . $user['image'] . "'height=400px >");
    
    echo ("<br>" .$user ['auteur']);

    echo ("<br><br>" .$user ['texte']);

    echo ("<br><br>" .$user ['date de publication']. "<br><br><br>");

    echo ("</ul>");
}
?>