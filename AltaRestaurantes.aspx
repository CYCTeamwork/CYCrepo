<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AltaRestaurantes.aspx.cs" Inherits="AltaRestaurantes" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <script src="JavaScript.js" type="text/javascript"></script>
    <script type="text/javascript" src="jquery-1.10.2.js"></script>

    <asp:DropDownList runat="server" ID="ddlSeleccionTipoUsuario" ClientIDMode="Static" >
        <asp:ListItem Text="Cliente" Value="1" />
        <asp:ListItem Text="Restaurant" Value="2" />
    </asp:DropDownList> 

      <asp:Panel runat="server" ID="pnlCliente" ClientIDMode="Static">
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
             <asp:Label ID="LblTel" runat="server" Text="Telefono"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbTelefonoCliente" runat="server" Width="143px"></asp:TextBox>
            </td>
        </tr>
        <tr class="Registrar">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="LblDomici" runat="server" Text="Domicilio"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbDomicilioCliente" runat="server" Width="144px"></asp:TextBox>
            </td>
        </tr>
        <tr class="Registrar">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="LblContra" runat="server" Text="Contraseña"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbContraseñaCliente" TextMode="Password" runat="server" Width="145px"></asp:TextBox>
            </td>
        </tr>
            <tr class="Registrar">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="LblPasword" runat="server" Text="Confirmar"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbPassword" TextMode="Password" runat="server" Width="147px"></asp:TextBox>
            </td>
        </tr>
        <tr class="Registrar">      
            <td colspan="10" style="text-align:center">  
            <asp:Button ID="BtnIngreso" runat="server" Text="Registrarte" OnClick="BtnIngreso_Click" style="height: 26px" />
            </td>
             <td colspan="10" style="text-align:center">
             <asp:Label ID="LblErrores" runat="server" Text="" ForeColor="Red"></asp:Label>
            </td>
        </table>
        </asp:Panel>
      <asp:Panel runat="server" ID="pnlRestaurant" ClientIDMode="Static">
          <table>
            <tr class="AltaRestaurantes">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="LblNombreRestaruante" runat="server" Text="Nombre De Restaurantes"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbNombreRestaurante" runat="server"></asp:TextBox>
            </td>
        </tr>
            <tr class="AltaRestaurantes">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="lblTelefono" runat="server" Text="Telefono"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbTelefono" runat="server"></asp:TextBox>
            </td>
        </tr>
              <tr class="AltaRestaurantes">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="LblDomicilio" runat="server" Text="Domicilio"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbDomicilio" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="AltaRestaurantes">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="LblServicio" runat="server" Text="Servicio a Domicilio"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbServicio" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="AltaRestaurantes">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="LblContraseña" runat="server" Text="Contraseña"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="Tbcontraseña" TextMode="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="AltaRestaurantes">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="LblConfirmar" runat="server" Text="Confirmar"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbConfirmar" TextMode="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
       <tr class="AltaRestaurantes">                        
            <td colspan="10" style="text-align:center">  
            <asp:Button ID="BtnResgistrar" runat="server" Text="Registro "  OnClick="BtnResgistro_Click"  />
            </td>
             <td colspan="10" style="text-align:center">
             <asp:Label ID="LblerrorRestaurante" runat="server" Text="" ForeColor="Red"></asp:Label>
            </td>
        </tr>
              </table>
     </asp:Panel> 
        
   <script>
        document.getElementById("ddlSeleccionTipoUsuario").onchange = aparecerPaneles;
        document.getElementById("pnlRestaurant").className = "invisible";


    </script> 
</asp:Content>

