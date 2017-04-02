<%-- 
    Document   : editaEquipamento
    Created on : 02/04/2017, 15:40:43
    Author     : Adriano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edita Equipamento</title>
    </head>
    <body>
        <h1>Edita Equipamento</h1>
        <form method="post">
            <div><label>ID: <input type="text" name="id" value="${equipamento.id}" readonly="readonly"/></label></div>
            <div><label>Série: <input type="text" name="nome" value="${equipamento.serie}"/></label></div>
            <div><label>Local: <input type="text" name="idade" value="${equipamento.local}"/></label></div>
            <div><label>Descrição: <input type="datetime" name="entrada" value="${equipamento.descricao}"/></label></div>
            <div><label>Estado: <input type="datetime" name="saida" value="${equipamento.estado}"/></label></div>
            <div><input type="submit"></div>
        </form>
    </body>
</html>
