<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Eximo3._Default" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset="utf-8" />
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 


    <title>Condiciones</title>

</head>


<body>
    <div class="container">
        <div class="row">
            <div class="panel panel-primary">
                <div class="panel-heading"> Condiciones </div>
                <div class="panel-body">  

                    <h1>IF / ELSE</h1>

                    <%
                        int n1 = 1;
                        int n2 = 54;

                        if (n1 == 12)
                        {
                            // a continuacion codigo si se cumple
                            %>
                        <p> LA SENTENCIA ES VERDADERA </p>

                    <%
                        }
                        else { 
                        
                            %>
                        <p> LA SENTENCIA ES FALSA </p>
                    <%
                        }
                        //string cadena = "hola mundo";
                        //Response.Write(cadena);
                    %>

                    <h1>SWITCH</h1>

                    <%
                        switch (n2)
                        {
                            case 1:%> <p> es uno</p>  <% break;
                            case 2:%>  <p> es dos</p> <% break;
                            case 3:%> <p> es tres</p>  <% break;
                            default:%> <p> no esta</p>  <% break;
                        }

                        %>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
