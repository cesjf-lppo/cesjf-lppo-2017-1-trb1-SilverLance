<%-- 
    Document   : listaEquipamentos
    Created on : 02/04/2017, 12:25:07
    Author     : Adriano
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Equipamentos</title>
    </head>
    <body>
        <h1>Lista de Equipamentos</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Série</th>
                    <th>Local</th>
                    <th>Descrição</th>
                    <th>Estado</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="equipamento" items="${equipamento}">
                    <tr>
                        <td><a href ="edita.html?id=${equipamento.id}">${equipamento.id}</a></td>
                        <td>${equipamento.serie}</td>
                        <td>${equipamento.local}</td>
                        <td>${equipamento.descricao}</td>
                        <td>
                            <c:choose>
                                <c:when test="${equipamento.estado == 0}">
                                    Novo
                                </c:when>
                                <c:when test="${equipamento.estado == 1}">
                                    Em uso
                                </c:when>
                                <c:when test="${equipamento.estado == 2}">
                                    Danificado
                                </c:when>
                                <c:when test="${equipamento.estado == 3}">
                                    Perdido
                                </c:when>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
