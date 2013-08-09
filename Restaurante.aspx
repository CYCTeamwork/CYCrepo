<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Restaurante.aspx.cs" Inherits="Restaruante" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="Lblbienvenido" runat="server" Visible="false" Text="Bienvenido: " CssClass="AltaRestaurantes"></asp:Label>
   <asp:Menu CssClass="MenuRestaurantes" ID="MnRestaruantes"  Orientation="Horizontal" >
       <Items>    
         <asp:MenuItem text="Alta Platillos" NavigateUrl="~/AltaPlatillos.aspx"></asp:MenuItem> 
         <asp:MenuItem text="Modificar Platillos" NavigateUrl="~/ModificarPlatillos.aspx"></asp:MenuItem>
         <asp:MenuItem Text="Borrar Platillos" NavigateUrl="~/BorrarPlatillos.aspx"></asp:MenuItem>
       </Items>
    </asp:Menu>

</asp:Content>

