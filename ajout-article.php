<form action="ajout-article.php" method="post" enctype="multipart/form-data">
 
 <label for="titre"></label>
<input type="text" id="titre" name="titre" placeholder="titre"><br>

 <label for="image"></label>
<input type="file" id="image" name="image" placeholder="image" accept="image/png, image/jpeg, image/jpg" required><br>
 
<label for="auteur"></label>
<input type="text" id="auteur" name="auteur" placeholder="auteur"><br>

 <label for="texte"></label>
<input type="text" id="texte" name="texte" placeholder="texte"><br>

<label for="date de publication"></label>
<input type="text" id="date de publication" name= "date de publication" placeholder="date de publication"><br>

<label for="extrait"></label>
<input type="text" id="extrait" name= "extrait" placeholder="extrait"><br>

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
 
$sql = "INSERT $title, $img INTO articles(titre, img, auteur, texte, extrait, date) values($titre, $img, $auteur, $texte, $extraie);";
 
if ($conn->query($sql) === TRUE) {
} else {
 echo "Error: " . $sql . "<br>" . $conn->error;
}
;
 
?>