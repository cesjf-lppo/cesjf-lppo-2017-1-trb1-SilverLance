<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Trabalho LPPO</title>

        <link href="css/bootstrap.css" rel="stylesheet">
    </head>
    <body>
        <nav class="navbar navbar-default">
            <div class="container-fluid"> 
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#defaultNavbar1">
                        <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span>
                        <span class="icon-bar"></span></button>
                    <a class="collapse navbar-collapse" href="index.jsp"> <img width="150px" height="82px" class="img-responsive" src="Icone/logo.png" alt="Pagina Inicial"/></a></div>
                <div class="collapse navbar-collapse" id="defaultNavbar1">
                    <ul class="nav navbar-nav">
                        <li><a href="novo.html">Novo Cadastro</a></li>
                        <li><a href="lista.html">Lista de Equipamentos</a></li>
                        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Equipamentos<span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="lista.html?filtro=">Todos os Equipamentos</a></li>
                                <li class="divider"></li>
                                <li><a href="lista.html?filtro=WHERE estado=0">Novo</a></li>
                                <li class="divider"></li>
                                <li><a href="lista.html?filtro=WHERE estado=1">Em Uso</a></li>
                                <li class="divider"></li>
                                <li><a href="lista.html?filtro=WHERE estado=2">Danificado</a></li>
                                <li class="divider"></li>
                                <li><a href="lista.html?filtro=WHERE estado=3">Perdido</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>