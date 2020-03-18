<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="herenciaColaboracion.aspx.cs" Inherits="Eximo3.test.herenciaColaboracion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset=utf-8"/>
    <title> Trabajo con Herencias y Colaboraciones </title>
</head>
<body>
    <h1>Comunicando clases - HERENCIA</h1>
    <%
        Hija h = new Hija();
        h.setNombre("claseHija");
        %>
    <p><%=h.getNombre() %></p>


    <h1>Comunicando clases - COLABORACION</h1>
    <%
        //colabora con clase Hija de manera interna
        Colaboracion c = new Colaboracion();
        c.nombrar("pasajeDeNombre");
        %>

    <p><%=c.retorno() %></p>
</body>
</html>
