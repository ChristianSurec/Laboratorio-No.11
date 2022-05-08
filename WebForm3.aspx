<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Laboratorio_No._11.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Eliminar</h1>
    <p>
        &nbsp;</p>
    <p>
        Carné<asp:TextBox ID="TextBoxCarné" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="ButtonBuscar" runat="server" OnClick="ButtonBuscar_Click" Text="Buscar" Width="117px" />
    </p>
    <p>
        Nombre<asp:TextBox ID="TextBoxNombre" runat="server"></asp:TextBox>
    </p>
    <p>
        Apellido<asp:TextBox ID="TextBoxApellido" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="ButtonEliminar" runat="server" Height="61px" OnClick="ButtonEliminar_Click" Text="Eliminar" Width="139px" />
    </p>
</asp:Content>
