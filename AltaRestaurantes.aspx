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
            <td style="text-align:center">
             <asp:Label ID="LblNombreRestaruante" runat="server" Text="Nombre De Restaurantes"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbNombreRestaurante" runat="server"></asp:TextBox>
            </td>
        </tr>
            <tr class="AltaRestaurantes">
            <td style="text-align:center">
             <asp:Label ID="lblTelefono" runat="server" Text="Telefono"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbTelefono" runat="server"></asp:TextBox>
            </td>
        </tr>
              <tr class="AltaRestaurantes">
            <td style="text-align:center">
             <asp:Label ID="LblDomicilio" runat="server" Text="Domicilio"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbDomicilio" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="AltaRestaurantes">
            <td style="text-align:center">
             <asp:Label ID="LblContraseña" runat="server" Text="Contraseña"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="Tbcontraseña" TextMode="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="AltaRestaurantes">
            <td style="text-align:center">
             <asp:Label ID="LblConfirmar" runat="server" Text="Confirmar"></asp:Label>
            </td>
            <td>
             <asp:TextBox ID="TbConfirmar" TextMode="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
       <tr class="AltaRestaurantes">                        
            <td style="text-align:center">  
            <asp:Button ID="BtnResgistrar" runat="server" Text="Registro "  OnClick="BtnResgistro_Click"  />
            </td>
             <td style="text-align:center">
             <asp:Label ID="LblerrorRestaurante" runat="server" Text="" ForeColor="Red"></asp:Label>
            </td>
        </tr>
              </table>
     </asp:Panel> 
        
   <script>
        document.getElementById("ddlSeleccionTipoUsuario").onchange = aparecerPaneles;
        document.getElementById("pnlRestaurant").className = "invisible";
    </script> 
    <div id="divfibra">
        Lorem ipsum ad his scripta blandit partiendo, eum fastidii accumsan euripidis in, eum liber hendrerit an. Qui ut wisi vocibus suscipiantur, quo dicit ridens inciderint id. Quo mundi lobortis reformidans eu, legimus senserit definiebas an eos. Eu sit tincidunt incorrupte definitionem, vis mutat affert percipit cu, eirmod consectetuer signiferumque eu per. In usu latine equidem dolores. Quo no falli viris intellegam, ut fugit veritus placerat per. Ius id vidit volumus mandamus, vide veritus democritum te nec, ei eos debet libris consulatu. No mei ferri graeco dicunt, ad cum veri accommodare.
         Sed at malis omnesque delicata, usu et iusto zzril meliore. Dicunt maiorum eloquentiam cum cu, sit summo dolor essent te. Ne quodsi nusquam legendos has, ea dicit voluptua eloquentiam pro, ad sit quas qualisque. Eos vocibus deserunt quaestio ei. Blandit incorrupte quaerendum in quo, nibh impedit id vis, vel no nullam semper audiam. Ei populo graeci consulatu mei, has ea stet modus phaedrum. Inani oblique ne has, duo et veritus detraxit. Tota ludus oratio ea mel, offendit persequeris ei vim. Eos dicat oratio partem ut, id cum ignota senserit intellegat. Sit inani ubique graecis ad, quando graecis liberavisse et cum, dicit option eruditi at duo. Homero salutatus suscipiantur eum id, tamquam voluptaria expetendis ad sed, nobis feugiat similique usu ex. Eum hinc argumentum te, no sit percipit adversarium, ne qui feugiat persecuti. Odio omnes scripserit ad est, ut vidit lorem maiestatis his, putent mandamus gloriatur ne pro. Oratio iriure rationibus ne his, ad est corrumpit splendide. Ad duo appareat moderatius, ei falli tollit denique eos. Dicant evertitur mei in, ne his deserunt perpetua sententiae, ea sea omnes similique vituperatoribus. Ex mel errem intellegebat comprehensam, vel ad tantas antiopam delicatissimi, tota ferri affert eu nec. Legere expetenda pertinacia ne pro, et pro impetus persius assueverit. Ea mei nullam facete, omnis oratio offendit ius cu. 
        Doming takimata repudiandae usu an, mei dicant takimata id, pri eleifend inimicus euripidis at. His vero singulis ea, quem euripidis abhorreant mei ut, et populo iriure vix. Usu ludus affert voluptaria ei, vix ea error definitiones, movet fastidii signiferumque in qui. Vis prodesset adolescens adipiscing te, usu mazim perfecto recteque at, assum putant erroribus mea in. Vel facete imperdiet id, cum an libris luptatum perfecto, vel fabellas inciderint ut. Veri facete debitis ea vis, ut eos oratio erroribus. Sint facete perfecto no vel, vim id omnium insolens. Vel dolores perfecto pertinacia ut, te mel meis ullum dicam, eos assum facilis corpora in. Mea te unum viderer dolores, nostrum detracto nec in, vis no partem definiebas constituam. Dicant utinam philosophia has cu, hendrerit prodesset at nam, eos an bonorum dissentiet. Has ad placerat intellegam consectetuer, no adipisci mandamus senserit pro, torquatos similique percipitur est ex. Pro ex putant deleniti repudiare, vel an aperiam sensibus suavitate. Ad vel epicurei convenire, ea soluta aliquid deserunt ius, pri in errem putant feugiat. Sed iusto nihil populo an, ex pro novum homero cotidieque. Te utamur civibus eleifend qui, nam ei brute doming concludaturque, modo aliquam facilisi nec no. Vidisse maiestatis constituam eu his, esse pertinacia intellegam ius cu. Eos ei odio veniam, eu sumo altera adipisci eam, mea audiam prodesset persequeris ea. Ad vitae dictas vituperata sed, eum posse labore postulant id. Te eligendi principes dignissim sit, te vel dicant officiis repudiandae. Id vel sensibus honestatis omittantur, vel cu nobis commune patrioque.
         In accusata definiebas qui, id tale malorum dolorem sed, solum clita phaedrum ne his. Eos mutat ullum forensibus ex, wisi perfecto urbanitas cu eam, no vis dicunt impetus. Assum novum in pri, vix an suavitate moderatius, id has reformidans referrentur. Elit inciderint omittantur duo ut, dicit democritum signiferumque eu est, ad suscipit delectus mandamus duo. An harum equidem maiestatis nec. At has veri feugait placerat, in semper offendit praesent his. Omnium impetus facilis sed at, ex viris tincidunt ius. Unum eirmod dignissim id quo. Sit te atomorum quaerendum neglegentur, his primis tamquam et. Eu quo quot veri alienum, ea eos nullam luptatum accusamus. Ea mel causae phaedrum reprimique, at vidisse dolores ocurreret nam.
    </div>
</asp:Content>

