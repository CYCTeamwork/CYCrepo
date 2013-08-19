<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ordendeplatillo.aspx.cs" Inherits="Ordendeplatillo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div>
       <p>Por Favor ingrese el ID del platillo que quiere y su id</p>      
    </div>
 <div id="divordenes">
      <table id="Tordenes"> 
       <tr class="ordenes">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="LblClaveplatillo" runat="server" Text="Clave Platillo"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TBClavePlatillo" runat="server"></asp:TextBox>
           </td>
        </tr>
        <tr class="ordenes">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="LBLClavecliente" runat="server" Text="Clave cliente"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TBclavecliente" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="ordenes">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="LblNombrePlatillo" runat="server" Text="Nombre Platillo"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbNombrePlatillo" runat="server"></asp:TextBox>
            </td>
        </tr>            
        <tr class="ordenes">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="Lblcantidad" runat="server" Text="Cantidad"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="Tbcantidad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="ordenes">                        
             <td colspan="10" style="text-align:center">  
            <asp:Button ID="BTNpedirorden" runat="server" Text="Pedir orden "   Width="112px" OnClick="BTNpedirorden_Click"  />
            </td>
             <td colspan="10" style="text-align:center">
             <asp:Label ID="LblErrorPlatillo" runat="server" Text="" ForeColor="Red"></asp:Label>
            </td>
        </tr>
  </table>
    </div>
</asp:Content>

