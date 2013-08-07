<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registrar.aspx.cs" Inherits="Registrar" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

   <p class="Registrar">EL USUARIO INTRODUCIRA SUS DATOS PARA PODER INGRESAR ANUESTRO SERVICIO A DOMICILIO</p>
    
     <table >
      <tr class="Registrar">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="LblNombre" runat="server" Text="Nombre"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbNombre" runat="server" Width="143px"></asp:TextBox>
            </td>
        </tr>
        <tr class="Registrar">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="LblTelefono" runat="server" Text="Telefono"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbTelefono" runat="server" Width="143px"></asp:TextBox>
            </td>
        </tr>
        <tr class="Registrar">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="LblDomicilio" runat="server" Text="Domicilio"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbDomicilio" runat="server" Width="144px"></asp:TextBox>
            </td>
        </tr>
        <tr class="Registrar">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="LblContraseña" runat="server" Text="Contraseña"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbContraseña" TextMode="Password" runat="server" Width="145px"></asp:TextBox>
            </td>
        </tr>
            <tr class="Registrar">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="LblConfirmar" runat="server" Text="Confirmar"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbConfirmar" TextMode="Password" runat="server" Width="147px"></asp:TextBox>
            </td>
        </tr>
        <tr class="Registrar">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="LbltipoUsuario" runat="server" Text="Tipo de Usuario"></asp:Label>
            </td>
             <td>
                 <asp:DropDownList ID="Ddltipo" runat="server">
                  <asp:ListItem Text="Cliente" Value="1"></asp:ListItem>
                  <asp:ListItem Text="Restaurante" Value="2"></asp:ListItem>
                  </asp:DropDownList>
            </td>   
        </tr>
        <tr class="Registrar"> 
            <td colspan="10" style="text-align:center">  
            <asp:Button ID="BtnIngreso" runat="server" Text="Registrarte" OnClick="BtnIngreso_Click" style="height: 26px" />
            </td>
             <td colspan="10" style="text-align:center">
             <asp:Label ID="LblErrores" runat="server" Text="" ForeColor="Red"></asp:Label>
            </td>
             <td>
                <asp:LinkButton PostBackUrl="~/AltaRestaurantes.aspx" ID="lkbRegistrate" runat="server">Restaurantes</asp:LinkButton>
            </td>
    </table>
</asp:Content>

