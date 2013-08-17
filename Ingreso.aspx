<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ingreso.aspx.cs" Inherits="Ingreso" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <P class="Registrar">Por favor Ingrese para hacer uso de nuestro Servicio

    </P> 
    <table>
        <tr class="Registrar">
            <td>
             <asp:Label ID="LblUsuario" runat="server" Text="Usuiario"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbUsuario" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="Registrar">
            <td>
             <asp:Label ID="LblContraseña" runat="server" Text="Contraseña"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbContraseña" TextMode="Password" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>  
            <td colspan="2" style="text-align:center">  
            <asp:Button ID="BtnIngreso" runat="server" Text="Ingresar" OnClick="BtnIngreso_Click" style="width: 68px; height: 26px;" />
            </td>
             <td>
             <asp:Label ID="LblErroresIngreso" runat="server" Text=""></asp:Label>
            </td>
        </tr> 
    </table>
   


</asp:Content>

