<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:content ContentPlaceHolderID="ContentPlaceHolder2" ID="ContentPlaceHolder2" runat="server">
     
    <asp:Label ID="LblBienvenida" runat="server" Visible="false" Text="Bienvenido: " CssClass="AltaRestaurantes"></asp:Label>
    <div class="contenido"  style="color: green; font-family:'Buxton Sketch', Times, serif; font-size:40px; font-weight: normal; font-style: inherit; font-variant: normal; text-transform: capitalize;text-align:center " >
          
      
    </div>
   
<div ID="divslider" >
    
    <!-- Insert to your webpage where you want to display the slider -->
     <div id="amazingslider-1" style="display:block;position:relative;margin:16px auto 32px;">
        <ul class="amazingslider-slides" style="display:none;">
            <li><img src="images/comida-rap-getty1.jpg" alt="comida" /></li>
            <li><img src="images/restaurantes.jpg" alt="restaurantes" /></li>
            <li><img src="images/restaurantes_asia.jpg" alt="restaurantes_asia" /></li>
            <li><img src="images/u2312rl.jpeg" alt="Bares" /></li>
            <li><img src="images/u123123rl.jpeg" alt="comida" /></li>
            <li><img src="images/url.jpeg" alt="antojitos" /></li>
        </ul>
        <ul class="amazingslider-thumbnails" style="display:none;">
            <li><img src="images/comida-rap-getty1-tn.jpg" /></li>
            <li><img src="images/restaurantes-tn.jpg" /></li>
            <li><img src="images/restaurantes_asia-tn.jpg" /></li>
            <li><img src="images/u2312rl-tn.jpeg" /></li>
            <li><img src="images/u123123rl-tn.jpeg" /></li>
            <li><img src="images/url-tn.jpeg" /></li>
        </ul>
        <div class="amazingslider-engine" style="display:none;"><a href="http://amazingslider.com">jQuery Image Slider</a></div>
    </div>
    
    </div>
    <div id="MensajeB">
        Lorem ipsum ad his scripta blandit partiendo, eum fastidii accumsan euripidis in, eum liber hendrerit an. Qui ut wisi vocibus suscipiantur, quo dicit ridens inciderint id. Quo mundi lobortis reformidans eu, legimus senserit definiebas an eos. Eu sit tincidunt incorrupte definitionem, vis mutat affert percipit cu, eirmod consectetuer signiferumque eu per. In usu latine equidem dolores. Quo no falli viris intellegam, ut fugit veritus placerat per. Ius id vidit volumus mandamus, vide veritus democritum te nec, ei eos debet libris consulatu. No mei ferri graeco dicunt, ad cum veri accommodare. Sed at malis omnesque delicata, usu et iusto zzril meliore. Dicunt maiorum eloquentiam cum cu, sit summo dolor essent te. Ne quodsi nusquam legendos has, ea dicit voluptua eloquentiam pro, ad sit quas qualisque. Eos vocibus deserunt quaestio ei. Blandit incorrupte quaerendum in quo, nibh impedit id vis, vel no nullam semper audiam. Ei populo graeci consulatu mei, has ea stet modus phaedrum. Inani oblique ne has, duo et veritus detraxit. Tota ludus oratio ea mel, offendit persequeris ei vim. Eos dicat oratio partem ut, id cum ignota senserit intellegat. 
     </div>
    <div id="fotoRegistrate">
        <a href="AltaRestaurantes.aspx"><img src="Imagenes/registrate.gif"/></a>

    </div>
</asp:content>