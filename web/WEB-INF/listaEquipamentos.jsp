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
                <form action="lista02" method="get">
                    <select name="filtro">
                        <option value="" ${(filtro=="")?"selected":""}>Todos</option>
                        <option value="WHERE estado=0" ${(filtro=="WHERE estado=0")?"selected":""}>Novo</option>
                        <option value="WHERE estado=1" ${(filtro=="WHERE estado=1")?"selected":""}>Em Uso</option>
                        <option value="WHERE estado=2" ${(filtro=="WHERE estado=2")?"selected":""}>Danificado</option>
                        <option value="WHERE estado=3" ${(filtro=="WHERE estado=3")?"selected":""}>Perdido</option>
                    </select>
                    <input type="submit" value="FILTRAR" />
                </form>
                </th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach var="equipamento" items="${equipamento}">
                        <tr>
                            <td><a href ="edita.html?id=${equipamento.id}" title="EDITA EQUIPAMENTO">${equipamento.id}</a></td>
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
                            <td><a href="exclui.html?id=${equipamento.id}"><img src="Icone/excluir.jpg" title="EXCLUIR EQUIPAMENTO" width="20" height="20"></a></td>
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
