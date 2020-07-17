<?php
session_start();
unset($_SESSION["id"]);
echo"blog";
header('Location: front.php?page=accueil');
?>