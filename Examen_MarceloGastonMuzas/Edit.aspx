<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Examen_MarceloGastonMuzas.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <title>Examen_EXIMO - Modificar empleado</title>
</head>

<body>
    <div class="container">
        <div class="panel panel-primary">
            <div class="panel-heading">
                LISTADO DE INFORMACION
            </div>
            <div class="panel-body">
                <ol class="breadcrumb">
                    <li><a href="Default.aspx">Inicio</a></li>
                    <li class="active">Modificar empleado</li>
                </ol>

                <form runat="server" method="post" id="editaEmpleado">

                    <p>
                        <asp:ValidationSummary runat="server" HeaderText="" DisplayMode="BulletList" CssClass="alert alert-danger" />
                    </p>

                    <p>
                        <asp:Label runat="server">Nombre:</asp:Label>
                        <asp:TextBox ID="nombre" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="nombre" ErrorMessage="El campo NOMBRE es obligatorio" Display="None"></asp:RequiredFieldValidator>
                    </p>

                    <p>
                        <asp:Label runat="server">Apellido:</asp:Label>
                        <asp:TextBox ID="apellido" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="apellido" ErrorMessage="El campo APELLIDO es obligatorio" Display="None"></asp:RequiredFieldValidator>
                    </p>

                    <p>
                        <asp:Label runat="server">DNI: (sin puntos)</asp:Label>
                        <asp:TextBox type="number" ID="documento" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="documento" ErrorMessage="El campo DNI es obligatorio" Display="None"></asp:RequiredFieldValidator>
                    </p>
                    <hr />
                    <asp:HiddenField runat="server" id="idUser" />
                    <asp:Button ID="enviarForm" runat="server" Text="Enviar" CssClass="btn btn-default" OnClick="ProcesarEdit" />
                </form>
            </div>
        </div>
    </div>
    
    <script type="text/javascript" src="public/js/funciones.js"></script>
    <script type="text/javascript">
        window.onload = function(){
            editar('<%=Ape%>', '<%=Nom %>', '<%=Doc %>');
        };
    </script>
</body>
</html>
