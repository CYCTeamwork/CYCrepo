<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdministradorUsuarios.aspx.cs" Inherits="AdministradorUsuarios" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server" >
    <p> 

    </p>
    <asp:GridView runat="server" AutoGenerateColumns="false" ID="GvUsuarios" Width="302px" >
     <FooterStyle CssClass="GridViewFooterStyle" />
    <RowStyle CssClass="GridViewRowStyle" />
    <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
    <PagerStyle CssClass="GridViewPagerStyle" />
    <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
    <HeaderStyle CssClass="GridViewHeaderStyle" />
            
        <Columns >              
                <asp:BoundField DataField="Clave_Cliente" HeaderText="Clave Cliente" />
                <asp:BoundField DataField="NombreCliente" HeaderText="Nombre Usuario" />
                <asp:BoundField DataField="Telefono"  HeaderText="Telefono" />
                <asp:BoundField DataField="Domicilio" HeaderText="Domicilio" />
                <asp:BoundField DataField="Contraseña" HeaderText="Password" />
            </Columns>
  </asp:GridView>
    <p> 

    </p>

        <asp:GridView runat="server" AutoGenerateColumns="false" ID="GvResturantes" Width="302px" HorizontalAlign="Center" style="z-index: 100; left: 400px; position: absolute; top: 102.5px"  >
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
                <asp:BoundField DataField="Contraseña" HeaderText="Password" />
            </Columns>
  </asp:GridView>
</asp:Content>

