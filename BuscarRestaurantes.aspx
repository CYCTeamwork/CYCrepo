<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BuscarRestaurantes.aspx.cs" Inherits="BuscarRestaurantes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p> 

    </p>
    <div id="divbuscarPlatillo">
    <table>
        <tr class="ordenes">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="LblbuscarRestaurante" runat="server" Text="Nombre del Restaurante"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TBbuscarRestaurante" runat="server"></asp:TextBox>
           </td>
            <td colspan="10" style="text-align:center">  
            <asp:Button ID="BTNbuscarRestaurante" runat="server" Text="Buscar"   Width="112px" OnClick="BTNbuscarRestaurante_Click"  />
            </td>
        </tr>
    </table>
    </div>
    

        <asp:GridView runat="server" AutoGenerateColumns="false" ID="GvbuscarRestaurante" Width="302px" >
           <FooterStyle CssClass="GridViewFooterStyle" />
    <RowStyle CssClass="GridViewRowStyle" />
    <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
    <PagerStyle CssClass="GridViewPagerStyle" />
    <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
    <HeaderStyle CssClass="GridViewHeaderStyle" />
            <Columns>
                <asp:BoundField DataField="ClaveRestaurante" HeaderText="Clave Restaurante" />
                <asp:BoundField DataField="NombreRestaurante"  HeaderText="Nombre Restaurante" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono" />
                <asp:BoundField DataField="Domicilio" HeaderText="Domicilio" />
            </Columns>
  </asp:GridView>
</asp:Content>

