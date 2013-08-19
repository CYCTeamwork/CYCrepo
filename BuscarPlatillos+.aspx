<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BuscarPlatillos+.aspx.cs" Inherits="BuscarPlatillos_" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p> 

    </p>
    <div id="divbuscarPlatillo">
 <table>
        <tr class="ordenes">
            <td colspan="10" style="text-align:center">
             <asp:Label ID="LblbuscarPlatillo" runat="server" Text="Nombre del Platillo"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TBbuscarPlatillo" runat="server"></asp:TextBox>
           </td>
            <td colspan="10" style="text-align:center">  
            <asp:Button ID="BTNbuscarPlatillo" runat="server" Text="Buscar"   Width="112px" OnClick="BTNbuscarPlatillo_Click"  />
            </td>
        </tr>
    </table>
    </div>
   

        <asp:GridView runat="server" AutoGenerateColumns="false" ID="GvbuscarPlatillo" Width="302px" >
           <FooterStyle CssClass="GridViewFooterStyle" />
    <RowStyle CssClass="GridViewRowStyle" />
    <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
    <PagerStyle CssClass="GridViewPagerStyle" />
    <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
    <HeaderStyle CssClass="GridViewHeaderStyle" />
            <Columns>
                <asp:BoundField DataField="NombrePlatillo"  HeaderText="Nombre del Platillo" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
                <asp:BoundField DataField="precio" HeaderText="Precio" />
                <asp:BoundField DataField="ClavePlatillos" HeaderText="Clave del Platillos" />
            </Columns>
  </asp:GridView>
</asp:Content>

