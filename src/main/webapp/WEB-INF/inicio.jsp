<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<c:url value="/css/estilos.css"/>" rel="stylesheet"/>
    </head>
    <body>
        <h1>Bienvenido, ${pageContext.request.getRemoteUser()}</h1>
        <h3>Hora de ingreso: <fmt:formatDate value="${hora_ingreso}" pattern="dd/MM/yyyy hh:mm:ss"/></h3>
        <c:if test="${pageContext.request.isUserInRole('admin')}">
        <a href="<c:url value="/admin"/>">Administración</a>
        </c:if>
        <a href="<c:url value="/logout"/>">Cerrar sesión</a>
    </body>
</html>
