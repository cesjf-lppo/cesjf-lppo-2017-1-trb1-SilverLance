<%-- 
    Document   : novoEquipamento
    Created on : 02/04/2017, 10:11:00
    Author     : Adriano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Equipamentos</title>
    </head>
    <body>
        <h1>Cadastro de Equipamentos</h1>
        <form method="POST">
            <label>Número de Série: <input type="text" name="numSerie" value="" /></label>
            <label>Local: <input type="text" name="local" value="" /></label>
            <label>Descrição: <textarea name="descricao" rows="4" cols="20"></textarea></label>
            <select name="estado">
                <option value="0">Novo</option>
                <option value="1">Em uso</option>
                <option value="2">Danificado</option>
                <option value="3">Perdido</option>
            </select>
            <input type="submit" value="CADASTRAR" />
        </form>
    </body>
</html>
