<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Laboratorio_No._11._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Ingreso de Alumnos</h2>
            <p>Universidad
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Mesoamericana</asp:ListItem>
                    <asp:ListItem>San Carlos</asp:ListItem>
                    <asp:ListItem>Mariano Galvez</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>Alumno</p>
            <p>Nombre
                <asp:TextBox ID="TextBoxNombre" runat="server"></asp:TextBox>
            </p>
            <p>Apellido
                <asp:TextBox ID="TextBoxApellido" runat="server"></asp:TextBox>
            </p>
            <p>Carné<asp:TextBox ID="TextBoxCarne" runat="server"></asp:TextBox>
            </p>
            <p>Notas</p>
            <p>Curso<asp:TextBox ID="TextBoxCurso" runat="server"></asp:TextBox>
            </p>
            <p>Punteo<asp:TextBox ID="TextBoxPunteo" runat="server"></asp:TextBox>
                <asp:Button ID="ButtonIngresarNotas" runat="server" OnClick="ButtonIngresarNotas_Click" Text="Ingresar Nota" Width="100px" />
            </p>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <p>
                <asp:Button ID="ButtonIngresarAlumno" runat="server" Height="47px" OnClick="ButtonIngresarAlumno_Click" Text="Ingresar Alumno a la Universidad" Width="272px" />
            </p>
            <p>
                &nbsp;<asp:Button ID="ButtonGuardarUniversidad" runat="server" Height="33px" Text="Guardar Universidad" Width="200px" OnClick="ButtonGuardarUniversidad_Click" />
            </p>
            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
        </div>
    </div>

</asp:Content>
