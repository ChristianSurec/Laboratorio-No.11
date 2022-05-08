<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Laboratorio_No._11.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Actualizar</h1>
    <p>
        &nbsp;</p>
    <p>
        Ingrese el Carné<asp:TextBox ID="TextBoxCarné" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="ButtonBuscar" runat="server" OnClick="Button1_Click" Text="Buscar" Width="123px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        Nombre<asp:TextBox ID="TextBoxNombre" runat="server"></asp:TextBox>
    </p>
    <p>
        Apellido<asp:TextBox ID="TextBoxApellido" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="ButtonActualizar" runat="server" Height="47px" OnClick="ButtonActualizar_Click" Text="Actualizar" Width="138px" />
    </p>
</asp:Content>
