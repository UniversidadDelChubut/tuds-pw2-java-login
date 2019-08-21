<%@page contentType="text/html"%>
<html>
    <head>
        <title>Login local</title>
    </head>
    <body>
        <h1>Iniciar sesión</h1>
        
        <form name="j_security_form" method="post" action="j_security_check">
            <p>Usuario: <input type="text" name="j_username"></p>
            <p>Clave: <input type="password" name="j_password"></p>
                                    
            <p><button type="submit">Ingresar</button></p>
        </form>
    </body>
</html>