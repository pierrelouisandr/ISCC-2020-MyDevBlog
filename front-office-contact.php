

<p><form action ="index.php?page=contact" method ="post">

<div>
<label for ="name/firstname"> Nom/Prénom :</label> 
<input type ="text" id ="Nom" name ="user_name">
</div>

<br>

<div>
<label for="mail"> E-mail :</label> 
<input type ="text" id ="email" name ="user_mail">
</div>

<br>

<div> 
<label for="message"> Message :</label> 
<textarea id ="message" name ="user_message"></textarea>
</div>

<input type ="submit" value ="Envoyer"/>
</form>

<?php
echo "nom prénom : ".$_POST ["user_name"];

echo "mail : ".$_POST ["user_mail"];

echo "message : ".$_POST ["user_message"];

?>