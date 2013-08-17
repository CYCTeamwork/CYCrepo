<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AltaPlatillos.aspx.cs" Inherits="AltaPlatillos" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<table> 
       <tr class="AltaRestaurantes">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="LblClave" runat="server" Text="Clave Restaurante"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbClaveRestaurente" runat="server"></asp:TextBox>
           </td>
        </tr>
        <tr class="AltaRestaurantes">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="LblNombrePlatillo" runat="server" Text="Nombre Del Platillo"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbNombrePlatillo" runat="server"></asp:TextBox>
            </td>
        </tr>
            <tr class="AltaRestaurantes">
            <td colspan="10" style="text-align:Center">
             <asp:Label ID="LblDescipciones" runat="server" Text="Descripciones "></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbDescripcion" TextMode="MultiLine" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="AltaRestaurantes">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="LblPrecio" runat="server" Text="Precio"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbPrecio" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="AltaRestaurantes">                        
             <td colspan="10" style="text-align:center">  
            <asp:Button ID="BtnAgregarPlatillo" runat="server" Text="Ingresar "  OnClick="BtnResgistro_Click" Width="112px"  />
            </td>
             <td colspan="10" style="text-align:center">
             <asp:Label ID="LblErrorPlatillo" runat="server" Text="" ForeColor="Red"></asp:Label>
            </td>
        </tr>
  </table>
</asp:Content>


