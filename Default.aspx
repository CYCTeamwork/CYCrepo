<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:content ContentPlaceHolderID="ContentPlaceHolder2" ID="ContentPlaceHolder2" runat="server">
     
    <asp:Label ID="LblBienvenida" runat="server" Visible="false" Text="Bienvenido: " CssClass="AltaRestaurantes"></asp:Label>
    <div class="contenido"  style="color: green; font-family:'Buxton Sketch', Times, serif; font-size:40px; font-weight: normal; font-style: inherit; font-variant: normal; text-transform: capitalize;text-align:center " >
          
      
    </div>
   
<div style="margin:30px auto;max-width:600px;">
    
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
</asp:content>