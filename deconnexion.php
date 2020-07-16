<?php
session_start();
unset($_SESSION["id"]);
echo"blog";
header('Location: back-office.php?page=accueil');
?>