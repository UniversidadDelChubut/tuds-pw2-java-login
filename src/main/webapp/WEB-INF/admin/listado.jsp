<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejemplo página segura</title>
    </head>
    <body>
        <h1>Administración</h1>
        <h3>Hora de ingreso: <fmt:formatDate value="${hora_ingreso}" pattern="dd/MM/yyyy hh:mm:ss"/></h3>
        <p>A esta área sólo ingresan los administradores (rol 'admin')</p>
        <a href="<c:url value="/"/>">Volver al inicio</a>
    </body>
</html>
