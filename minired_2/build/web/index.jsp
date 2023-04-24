<%-- 
    Document   : index
    Created on : 21 abr 2023, 08:32:05
    Author     : gamae
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Css/login.css"/>
        <title>Login</title>
    </head>
    <body>
        
	<form action="Login" method="post">
                <h1>Iniciar sesión</h1>
		<label for="nombre_usuario">Nombre de usuario:</label>
		<input type="text" id="nombre_usuario" name="nombre_usuario" required pattern="[a-zA-Z0-9_]{4,16}" title="El nombre de usuario debe tener entre 4 y 16 caracteres y sólo puede contener letras, números y guiones bajos."><br><br>
		<label for="contraseña">Contraseña:</label>
		<input type="password" id="contraseña" name="contraseña" required pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,20}$" title="La contraseña debe contener al menos 8 caracteres y maximo 20, una letra mayúscula, una letra minúscula, un número y un caracter especial."><br><br>
		<input type="submit" value="Iniciar sesión">
                <p>¿No tienes cuenta? Crea una <a href="signin.jsp">aquí</a>.</p>
	</form>
        
        <% String errorMessage = (String) request.getAttribute("errorMessage");
           if (errorMessage != null) { %>
           <script>alert('<%= errorMessage %>');</script>
        <% } %>
    </body>
</html>
