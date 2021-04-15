<?php
	require_once('config/database.php');
 ?>

<?php

if(isset($_POST["register"])){

	if(!empty($_POST['nombre']) && !empty($_POST['apellido']) && !empty($_POST['id']) && !empty($_POST['email']) && !empty($_POST['telefono'])) {

		$nombre=$_POST['nombre'];
		$apellido=$_POST['apellido'];
		$id=$_POST['id'];
		$email=$_POST['email'];
		$telefono=$_POST['telefono'];

		
		$link = new mysqli('localhost','root','','carrito');
		$query= "SELECT * FROM usuario WHERE email='$email'";
		$result = $link->query($query);	

		if($result == true) {

			$sql="INSERT INTO usuario(nombre, apellido, id, email, telefono) VALUES ('$nombre','$apellido', '$id', '$email', '$telefono')";
			$result=$link->query($sql);

			if($result){
				$message = "Cuenta Correctamente Creada";
			} else {
				$message = "Error al ingresar datos de la informacion!";
			}

			} else {
				$message = "El correo ya existe! Por favor, intenta con otro!";
			}

			} else {
				$message = "Todos los campos no deben de estar vacios!";
			}
		}
	?>

<?php if (!empty($message)) {echo "<p class=\"error\">" . "Mensaje: ". $message . "</p>";} ?>

<LINK REL=StyleSheet HREF="css/style.css" TYPE="text/css" MEDIA=screen>
<div class="container mregister">
<div id="login">

<h1>Registrar</h1>
<form name="registerform" id="registerform" action="register.php" method="post">
<p>
<label >Nombre <br />
<input type="text" name="nombre" id="nombre" class="input" size="30" value="" /></label>
</p>

<label>Apellido <br />
<input type="text" name="apellido" id="apellido" class="input" size="30" value="" /></label>
</p>

<label>Id <br />
<input type="text" name="id" id="id" class="input" size="11" value="" /></label>
</p>

<label >Telefono <br />
<input type="text" name="telefono" id="telefono" class="input" size="15" value="" /></label>
</p>

<p>
<label>E-mail<br />
<input type="email" name="email" id="email" class="input" value="" size="32" /></label>
</p>

<p class="submit">
<input type="submit" name="register" id="register" class="button" value="Registrar" />
</p>

<p class="regtext">Ya tienes una cuenta? <a href="login.php" >Entra Aquí!</a>!</p>
</form>

</div>
</div>
