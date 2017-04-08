<%-- 
    Document   : listaEquipamentos
    Created on : 02/04/2017, 12:25:07
    Author     : Adriano
--%>

<%@include file="cabeçalho.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="panel panel-primary" style="margin:20px;">
    <div class="panel-heading">
       	<h3 class="panel-title" style="text-align: center;">Dados dos Equipamentos</h3>
    </div> 
    <div class="panel-body">
        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Série</th>
                        <th>Local</th>
                        <th>Descrição</th>
                        <th>Estado</th>
                        <th>
                <form method="get">
                    <select name="filtro">
                        <option value="" ${(filtro=="")?"selected":""}>Todos</option>
                        <option value="0" ${(filtro=="0")?"selected":""}>Novo</option>
                        <option value="1" ${(filtro=="1")?"selected":""}>Em Uso</option>
                        <option value="2" ${(filtro=="2")?"selected":""}>Danificado</option>
                        <option value="3" ${(filtro=="3")?"selected":""}>Perdido</option>
                    </select>
                    <input class="btn-primary" type="submit" value="FILTRAR" />
                </form>
                </th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach var="equipamento" items="${equipamento}">
                        <tr>
                            <td>${equipamento.id}</td>
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
                            <td><a href="exclui.html?id=${equipamento.id}"><img src="Icone/excluir.png" title="EXCLUIR EQUIPAMENTO" width="75" height="25"></a>
                                <a href="edita.html?id=${equipamento.id}"><img src="Icone/editar.png" title="EDITAR EQUIPAMENTO" width="75" height="25"></a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <br>
        <div class="form-group col-md-3 col-sm-3 pull-right" >
            <a href="index.jsp"><input class="btn btn-primary" type="button" value="Página Principal" /></a>
        </div>
    </div>
</div>
<%@include file="rodape.jsp" %>
