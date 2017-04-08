<%-- 
    Document   : novoEquipamento
    Created on : 02/04/2017, 10:11:00
    Author     : Adriano
--%>

<%@include file="cabeçalho.jsp" %>

<div class="panel panel-primary" style="margin:20px;">
    <div class="panel-heading">
       	<h3 class="panel-title" style="text-align: center;">Cadastro de Equipamentos</h3>
    </div> 
    <div class="panel-body">
        <center>
            <form method="post" style="width: 70%; text-align: left">
                <label>Número de Série</label>
                <input class="form-control" type="text" required name="numSerie"/>
                <label>Local</label>
                <input class="form-control" type="text" required name="local"/>
                <label>Descrição</label>
                <textarea class="form-control" name="descricao" rows="4" cols="20" required >
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