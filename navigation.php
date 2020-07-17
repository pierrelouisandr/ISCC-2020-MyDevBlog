<nav>
<ul>
<a <?php if ($_GET["page"] == "accueil") {echo ('class="active"');} ?> href="front.php?page=accueil"> Accueil </a>
<a <?php if ($_GET["page"] == "articles") {echo ('class="active"');} ?> href="front.php?page=articles"> Articles </a>
<a <?php if ($_GET["page"] == "contact") {echo ('class="active"');} ?> href="front.php?page=contact"> Contact </a>
<a <?php if ($_GET["page"] == "connexion") {echo ('class="active"');} ?> href="connexion.php?page=connexion"> Connexion </a>
</ul>
</nav>

        