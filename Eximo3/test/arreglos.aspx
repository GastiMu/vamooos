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


        <title>Arrays</title>

    </head>


    <body>
        <h1>Arreglos unidimensionales</h1>

         <%

             string[] paises = new string[10];
             paises[0] = "Argentina";
             paises[1] = "Uruguay";
             paises[2] = "Brasil";
             paises[3] = "Chile";
             paises[4] = "Colombia";
             paises[5] = "Venezuela";
             paises[6] = "Ecuador";
             paises[7] = "Bolivia";
             paises[8] = "Peru";
             paises[9] = "Paraguay";

            %>
        <p>
            <h3>Ciclo for</h3>
            <ul>
                <%
                    for (int i = 0; i<paises.Length; i++)
                    {
                        %>
                        <li> <% =paises[i] %>  </li>
                <%
                    }
                    %>
                
            </ul>
        </p>


        <p>
            <h3>Ciclo foreach</h3>
            <ul>
                <%
                    foreach (string pais in paises)
                    {
                        %>
                        <li> <% =pais %>  </li>
                <%
                    }
                    %>
                
            </ul>
        </p>


        <h1>Arreglos bidimensionales</h1>

         <%

             string[,] paisCapital = new string[5, 2]
             {
                 { "Argentina", "Buenos Aires"},
                 {"Chile","Santiago" },
                 {"Peru","Lima" },
                 {"Colombia","Bogota" },
                 {"Venezuela","Caracas" }
            };

            %>
        <p>
            <h3>Ciclo for</h3>
            <ul>
                <%
                    for (int k = 0; k<paisCapital.GetLength(0); k++)
                    {
                        %>
                        <li> PAIS: <%=paisCapital[k,0] %> / CAPITAL: <%=paisCapital[k,1] %> </li>
                <%
                    }
                    %>
                
            </ul>
        </p>


        <p>
            <h3>Ciclo foreach</h3>
            <ul>
                <%
                    foreach (string pais in paises)
                    {
                        %>
                        <li> <% =pais %>  </li>
                <%
                    }
                    %>
                
            </ul>
        </p>

    </body>
</html>