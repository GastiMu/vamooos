<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Default"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset=utf-8"/>

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 

    <title>Examen_EXIMO - Home</title>
</head>
<body>
    <div class="container">
        <div class="panel panel-primary">
            <div class="panel-heading">
                LISTADO DE INFORMACION
            </div>
            <div class="panel-body">
                <p>
                    <a href="Add.aspx" class="btn btn-success">Agregar empleado</a>
                </p>
                <table class="table table-bordered">
                    <thead>
                        <th>Apellido</th>
                        <th>Nombre</th>
                        <th>DNI</th>
                        <th>Centro de Costo</th>
                        <th>Localidad</th>
                        <th>Acciones</th>
                    </thead>
                    <tbody>
                        <%
                            
                            while (getRegistros().Read())
                            {
                                %>
                                <tr>
                                    <td><%=getRegistros()["Apellido"] %></td>
                                    <td><%=getRegistros()["Nombre"] %></td>
                                    <td><%=getRegistros()["Dni"] %></td>
                                    <td><%=getRegistros()["CentroDeCosto"] %></td>
                                    <td><%=getRegistros()["Localidad"] %></td>
                                    <td>
                                        <a href="Edit.aspx?id=<%=getRegistros()["idPersonal"]%>"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
                                        <a href="javascript:void(0);" onclick="eliminar('Delete.aspx?id=<%=getRegistros()["idPersonal"]%>');"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
                                    </td>
                                </tr>  
                             <%
                            }

                            %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="public/js/funciones.js"></script>
</body>
</html>
