<%@ Page Language="C#" AutoEventWireup="true" Inherits="Eximo3.test.pruebaAppCode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset=utf-8"/>
    <title> Prueba clases C# </title>
</head>
<body>
    <h1>Prueba con Clases C#</h1>
        <%
            Calculos calculo = new Calculos();
            %>
        
        <%=calculo.getNro1()%>
</body>
</html>
