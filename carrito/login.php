

<?php
include 'config/database.php';

	if(isset($_POST["login"])){

		if(!empty($_POST['email']) && !empty($_POST['id'])) {
			$email=$_POST['email'];
			$id=$_POST['id'];

			$link = new mysqli('localhost','root','','carrito');
			$sql = "SELECT * FROM usuario where email = '$email' ";
			$result = $link->query($sql);	

			$fil = $result->fetch_assoc();
			if ($fil['email'] != $email || $fil['id']!=$id) {
				$message = "Nombre de usuario ó contraseña invalida!";
			} else {
				header("Location: productos.php");
			}	
		} 
	}	
?>
<LINK REL=StyleSheet HREF="css/style.css" TYPE="text/css" MEDIA=screen>

<div class="container mlogin">
<div id="login">
<h1>Login</h1>
<form name="loginform" id="loginform" action="" method="POST">
<p>
<label >Correo<br />
<input type="text" name="email" id="email" class="input" value="" size="32" /></label>
</p>
<p>
<label>Id<br />
<input type="password" name="id" id="id" class="input" value="" size="11" /></label>
</p>
<p class="submit">
<input type="submit" name="login" class="button" value="Entrar" />
</p>
<p class="regtext">No estas registrado? <a href="register.php" >Registrate Aquí</a>!</p>
</form>

</div>

</div>

<?php include("footer.php"); ?>

<?php if (!empty($message)) {echo "<p class=\"error\">" . "MESSAGE: ". $message . "</p>";} ?>