<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cliente.aspx.cs" Inherits="Cliente" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p id="PMensaje">
        Desde Aqui el cliente Puede order su comida consultar platillos y consultar los restaurantes
    </p>
    <asp:Label ID="LblBienvenida" runat="server" Visible="false" Text="Bienvenido: " CssClass="ClienteTop"></asp:Label>
    <p>

    </p>
       <asp:Menu runat="server" CssClass="ClienteBottom" ID="MnRestaruantes"  Orientation="Horizontal" >
       <Items>    
         <asp:MenuItem text="Ordenar Comida" NavigateUrl="~/Ordendeplatillo.aspx"></asp:MenuItem> 
         <asp:MenuItem text="Consultar Platillos" NavigateUrl="~/BuscarPlatillos+.aspx"></asp:MenuItem>
         <asp:MenuItem Text="Consultar Restaurantes" NavigateUrl="~/BuscarRestaurantes.aspx"></asp:MenuItem>
       </Items>
    </asp:Menu>
</asp:Content>
