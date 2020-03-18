<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="Examen_MarceloGastonMuzas.Add" %>

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

    <title>Examen_EXIMO - Agregar empleado</title>
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
                    <li class="active">Agregar empleado</li>
                </ol>

                <form runat="server" method="post" id="cargaEmpleado">

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

                    <p>
                        <asp:Label runat="server"> Centro de Costo: </asp:Label>
                        <asp:DropDownList ID="listaCC" runat="server" CssClass="form-control"></asp:DropDownList>
                        <asp:CustomValidator runat="server" ErrorMessage="Debe seleccionar un CENTRO DE COSTO" display="None" ControlToValidate="listaCC" ClientValidationFunction="validarSeleccion"></asp:CustomValidator>
                        
                    </p>

                    <p>
                        <asp:Label runat="server"> Localidad: </asp:Label>
                        <asp:DropDownList ID="listaLocalidades" runat="server" CssClass="form-control" ></asp:DropDownList>
                        <asp:CustomValidator runat="server" ErrorMessage="Debe seleccionar una LOCALIDAD" display="None" ControlToValidate="listaLocalidades" ClientValidationFunction="validarSeleccion"></asp:CustomValidator>
                        
                    </p>

                    <hr />
                    <asp:Button ID="enviarForm" runat="server" Text="Enviar" CssClass="btn btn-default" OnClick="ProcesarCarga" />
                </form>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        function validarSeleccion(source, arguments) {
            var valor = arguments.Value;
            if (valor == "Seleccione una opcion...") {
                arguments.IsValid = false;
                return;
            } else {
                arguments.IsValid = true;
                return;
            }
        }
    </script>
</body>
</html>
