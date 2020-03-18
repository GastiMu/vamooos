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


    <title>Ciclos</title>

</head>


<body>
    <div class="container">
        <div class="row">
            <div class="panel panel-primary">
                <div class="panel-heading"> Ciclos </div>
                <div class="panel-body">  

                    <h1>FOR</h1>

                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <th>TD</th>
                            <th>Nombre</th>
                            <th>E-Mail</th>
                        </thead>
                        <tbody>
                            <%
    for (int i = 1; i < 10; i++)
    {
        //si se cumple hago el tr
                                    %>
                                    <tr>
                                        <td> <%=i %> </td>
                                        <td> <%="nombre_" + i %> </td>
                                        <td> <%="email_" + i %> </td>
                                    </tr>  
                            <%
    }
                                %>
                        </tbody>   
                    </table>


                    <h1>WHILE</h1>

                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <th>TD</th>
                            <th>Nombre</th>
                            <th>E-Mail</th>
                        </thead>
                        <tbody>
                            <%
                                int j = 1;
                                while (j<10)
                                {
                                    //si se cumple hago el tr
                                    %>
                                    <tr>
                                        <td> <%=j %> </td>
                                        <td> <%="nombre_"+j %> </td>
                                        <td> <%="email_"+j %> </td>
                                    </tr>  
                            <%
                                    j++;
                                }
                                %>
                        </tbody>   
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
