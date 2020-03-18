<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="controlServidor.aspx.cs" Inherits="Eximo3.test.controlServidor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Control de servidor</title>
</head>
<body>
    <h1>Probando controles de servidor</h1>
    <%  //IMPRIME DOS VECES, UNA POR EL CONTROL LABEL Y OTRA POR LA INSTRUCCION EN P %>
    <asp:Label ID="texto"  runat="server" Text="controlandoDesdeWebForm"/>
    <p> <%=texto.Text %> </p>
    <hr />
        <img src="../public/images/_109476426_jheison3.jpg" width="100" height="100"/>
    <hr />
        <asp:Image runat="server" imageURL="../public/images/_109476426_jheison3.jpg" width="100" height="100"/>
    <hr />
    <ul>
        <li><asp:HyperLink runat="server" Navigateurl="~/Default.aspx"> Al default </asp:HyperLink></li>
        <li><asp:HyperLink runat="server" Navigateurl="~/test/ciclos.aspx"> A ciclos </asp:HyperLink></li>
    </ul>
    
    
    <hr />

    <ul>
        <%
            foreach(string dato in getLista())
            {
                %>
                <li><% =dato %></li>
                <%
            }
            %>
        
    </ul>

</body>
</html>
