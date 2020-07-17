<DOCTYPE html>
<html lang="fr">
    
    <head>
        <title>Accueil</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="mydevblog.css">
    </head> 

    
    <main class="accueil">
        <p><i> Le projet MyDevBlog </i></p>
        <p>Depuis le 22 juin, EPITECH nous apprend les rudiments du code et les bases de la programmation des sites internet.
        <br>Ce code camp nous a  initiés en un mois aux principaux langages de programmation Web comme <b> html </b>, <b> css </b> ou encore<b> php </b>.</p>
           Ce projet sert à démontrer toutes nos capacités apprises durant ce mois.
        <br><p> Dans ce blog, je partage des informations concernant nos amis <b><i> les animaux </i></b> afin de mieux comprendre leur mode de vie.</p>
        <p> De plus, ce blog sert aussi à sensibiliser les personnes sur <b><i> les animaux </i></b> en voie de disparision.</p>
    </main>  

<main class="image">
        <div>
                     <img src="Orang_Utan.jpg"  alt="photo codage" width="400" height="500">  <img src="guepard.jpg"  alt="photo stage codage" width="400" height="500">
        </div>    
                
</main>

<main class="articles">
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
 
$users = $pdo->query("SELECT * FROM articles ORDER BY id DESC LIMIT 5")->fetchAll();
       echo "<ul>";
foreach ($users as $user){
    echo "<p><a href = \"articles.php?articles=".$user['id']."\">". $user ['titre']."</a><br>";
    echo $user ['extrait']."<br></p>";
}
echo "</ul>";

?>
</main>  
</html> 