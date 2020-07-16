<nav>
<ul>
<a <?php if ($_GET["page"] == "connexion") {echo ('class="active"');} ?> href="connexion.php?page=connexion"> Connexion </a>   
<a <?php if ($_GET["page"] == "ajout article") {echo ('class="active"');} ?> href="back-office.php?page=ajout article"> Ajout article </a>
<a <?php if ($_GET["page"] == "ajout utilisateur") {echo ('class="active"');} ?> href="back-office.php?page=ajout utilisateur"> Ajout utilisateur </a>
<a <?php if ($_GET["page"] == "utilisateurs") {echo ('class="active"');} ?> href="back-office.php?page=utilisateurs"> Utilisateurs </a>
<a <?php if ($_GET["page"] == "deconnexion") {echo ('class="active"');} ?> href="back-office.php?page=deconnexion"> Deconnexion </a>
</ul>
</nav>

        