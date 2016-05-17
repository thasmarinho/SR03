<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Menu Initial</title>
</head>
<body>
 
<c:choose>
    <c:when test="${ user eq null }">
        <jsp:forward page="erroLogin.jsp" />
    </c:when>
    <c:otherwise>
        <p>Bem-vindo ${ user.nom }</p>
    </c:otherwise>
 
</c:choose>
</body>
</html>