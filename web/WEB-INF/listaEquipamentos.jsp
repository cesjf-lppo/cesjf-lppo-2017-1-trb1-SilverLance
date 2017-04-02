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
                    <td>${equipamento.estado}</td>
                </tr>
                </c:forEach>
            </tbody>
        </table>

    </body>
</html>
