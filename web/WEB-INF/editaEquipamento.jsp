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
            <div><label>Série: <input type="text" name="nome" value="${equipamento.serie}" readonly="readonly"/></label></div>
            <div><label>Local: <input type="text" name="idade" value="${equipamento.local}"/></label></div>
            <div><label>Descrição: <input type="text" name="entrada" value="${equipamento.descricao}" readonly="readonly"/></label></div>
            <div><label>Estado: <select name="estado">
                        <option value="0">Novo</option>
                        <option value="1">Em Uso</option>
                        <option value="2">Danificado</option>
                        <option value="3">Perdido</option>
                    </select></label></div>
            <div><input type="submit"></div>
        </form>
    </body>
</html>
