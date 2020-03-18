<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="controlesValidacion.aspx.cs" Inherits="Eximo3.test.controlesValidacion" %>

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
    
    <title>Controles de Validacion</title>
    <link href="../public/css/bootstrap.min.css" rel="stylesheet" />

</head>
<body>
    <div class="container">
        <div class="panel-primary">
            <div class="panel-heading"> Trabajo con controles de validacion </div>
            <div class="panel-body">

                <form runat="server" method="post" id="form">
                    <p>
                        <asp:ValidationSummary runat="server" HeaderText="" DisplayMode="BulletList" cssClass="alert-danger"/>
                    </p>
                    <p>
                        <asp:Label runat="server"> Nombre: </asp:Label>
                        <asp:TextBox ID="nombre" runat="server" CssClass="form-control"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="nombre" ErrorMessage="Nombre requerido" Display="None"></asp:RequiredFieldValidator>
                    </p>

                    <p>
                        <asp:Label runat="server"> Mail: </asp:Label>
                        <asp:TextBox ID="email" runat="server" CssClass="form-control"/>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="email" ErrorMessage="Email requerido" Display="None"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator controlToValidate="email" runat="server" display="None" ErrorMessage="El mail ingresado no es valido" ValidationExpression="^[\w-]+@[\w-]+\.(com|net|org|edu|mil)$"/>
                    </p>

                    <p>
                        <asp:Label runat="server"> Pais: </asp:Label>
                        <asp:DropDownList ID="pais" runat="server" cssclas="form-control">
                            <asp:ListItem Value="0"> Seleccione... </asp:ListItem>
                            <asp:ListItem Value="1"> Argentina </asp:ListItem>
                            <asp:ListItem Value="2"> Chile </asp:ListItem>
                            <asp:ListItem Value="3"> Canadá </asp:ListItem>
                            <asp:ListItem Value="4"> España </asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="pais" Display="None" ErrorMessage="Debe seleccionar un pais" InitialValue="0"></asp:RequiredFieldValidator>
                    </p>

                    <p>
                        <asp:Label runat="server"> Opcion2: </asp:Label>
                        <asp:DropDownList ID="form2" runat="server" CssClass="form-control"></asp:DropDownList>
                        <asp:CustomValidator runat="server" ErrorMessage="Debe seleccionar una opcion" display="None" ControlToValidate="form2" ClientValidationFunction="validarOpcion2"></asp:CustomValidator>
                        
                    </p>
                    <hr />
                    <asp:Button ID="enviarForm" runat="server" Text="Enviar" CssClass="border btn btn-default" onclick="procesarForm"/>
                </form>
                
                <hr />

                <ul>
                    <li><asp:Label ID="rtdo_nombre" runat="server"></asp:Label></li>
                </ul>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        function validarOpcion2(source, arguments) {
            var valor = arguments.Value;
            if (valor == "seleccione...") {
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
