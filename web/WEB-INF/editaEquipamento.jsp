<%-- 
    Document   : editaEquipamento
    Created on : 02/04/2017, 15:40:43
    Author     : Adriano
--%>

<%@include file="cabeçalho.jsp" %>

<div class="panel panel-primary" style="margin:20px;">
    <div class="panel-heading">
       	<h3 class="panel-title" style="text-align: center;">Edição de Equipamentos</h3>
    </div> 
    <div class="panel-body">
        <center>
            <form method="post" style="width: 70%; text-align: left">
                <label>ID</label>
                <input class="form-control" type="text" name="id" value="${equipamento.id}" readonly="readonly"/>
                <label>Número de Série</label>
                <input class="form-control" type="text" name="serie" value="${equipamento.serie}" readonly="readonly"/>
                <label>Local</label>
                <input class="form-control" type="text" name="local" value="${equipamento.local}"/>
                <label>Descrição</label>
                <textarea class="form-control" name="descricao" readonly="readonly" rows="4" cols="20">
                    ${equipamento.descricao}
                </textarea>
                <label>Estado</label>
                <select class="form-control" required name="estado">
                    <option value="0">Novo</option> 
                    <option value="1">Em Uso</option> 
                    <option value="2">Danificado</option> 
                    <option value="3">Perdido</option>  
                </select>
                <br>
                <div class="form-group col-md-3 col-sm-3 pull-right" >
                    <input type="submit" class="btn btn-primary" value="Cadastrar"/>
                </div>
            </form>
        </center>
    </div>
</div>
<%@include file="rodape.jsp" %>