<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BorrarPlatillos.aspx.cs" Inherits="BorrarPlatillos" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table>
        <tr class="AltaRestaurantes">
            <td>
                <asp:Label ID="LblBorrar" runat="server" Text="Nombre del Platillo"></asp:Label>
            </td>
            <td>
               <asp:TextBox ID="TbBorrar" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="AltaRestaurantes">
            <td style="text-align:center">
             <asp:Label ID="LblContraseñaplatillos" runat="server" Text="Contraseña"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbContraseñaPlatillos" TextMode="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="AltaRestaurantes">
            <td style="text-align:center">
             <asp:Label ID="LblConfirmarPlatillo" runat="server" Text="Confirmar"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbConfirmarplatillo" TextMode="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="AltaRestaurantes">                        
             <td colspan="10" style="text-align:center">  
            <asp:Button ID="BtnBorrar" runat="server" Text="Borrar Platillo "  OnClick="BtnResgistro_Click" Width="112px"  />
            </td>
             <td colspan="10" style="text-align:center">
             <asp:Label ID="LblErrorBorrado" runat="server" Text="" ForeColor="Red"></asp:Label>
            </td>
        </tr>

    </table>
</asp:Content>

