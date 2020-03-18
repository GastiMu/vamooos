<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trabajoObjetos.aspx.cs" Inherits="Eximo3.test.trabajoObjetos" %>

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


        <title>Trabajando con objetos</title>

    </head>


    <body>
        <div class="container">
            <div class="row">
                <div class="panel panel-primary">
                    <div class="panel-heading"> Trabajando con objetos </div>
                    <div class="panel-body"> 
                        <%

                            Persona p = new Persona(1,"gaston","gaston.muzas@gmail.com");
                            %>
                        <%=p.obtenerInfo()%> </div>

                </div>
            </div>
        </div>
    </body>
</html>