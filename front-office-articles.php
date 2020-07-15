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
?>

<?php 
$users = $pdo->query("SELECT * FROM articles")->fetchAll();
       echo "<ul>";
foreach ($users as $user){
    echo "<li>" . $user ['titre'] ."<br></li>";

    echo $user ['date de publication'] ."<br>";

    echo $user ['auteur'] ."<br>";
    
    echo "<image src='$user[image]'/>";
    
    echo $user ['texte'] ."<br>";

    echo "</ul>";
}
?>