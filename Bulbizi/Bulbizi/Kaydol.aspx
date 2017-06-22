<%@ Page Title="" Language="C#" MasterPageFile="~/AnaMaster.Master" AutoEventWireup="true" CodeBehind="Kaydol.aspx.cs" Inherits="Bulbizi.Kullanici_Girisi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <!-- login-page -->
            <div class="login-page">
                <div class="container">
                    <h3 class="w3ls-title w3ls-title1">Kaydol  |</h3>
                    <div class="login-body">
                        <form action="#" method="post">
                            <asp:TextBox ID="adsoyad" CssClass="user" runat="server" placeholder="Ad-Soyad"></asp:TextBox>
                            <asp:DropDownList ID="ddil" CssClass="form-control" runat="server"></asp:DropDownList><br />
                            <asp:DropDownList ID="ddilce" CssClass="form-control" runat="server"></asp:DropDownList><br />
                             <asp:TextBox ID="email" CssClass="user" runat="server" placeholder="Email Adresi"></asp:TextBox>
                            <asp:TextBox ID="password" CssClass="lock" TextMode="Password" runat="server" placeholder="Şifre"></asp:TextBox>
                            <asp:TextBox ID="passwordTekrar" CssClass="lock" TextMode="Password" runat="server" placeholder="Şifre Tekrar"></asp:TextBox>
                            <asp:Button ID="btnKaydol" runat="server" Text="Kaydol" />
                            <div class="forgot-grid"> 
                                <div class="clearfix"></div>
                            </div>
                        </form>
                    </div>
                    <h6>Zaten üyemisiniz? <a href="Kullanici_Giris.aspx">Giriş Yap >></a> </h6>
                    <div class="login-page-bottom social-icons">
                        <h5>Sosyal Medyada Paylaş</h5>
                        <ul>
                            <li><a href="#" class="fa fa-facebook icon facebook"></a></li>
                            <li><a href="#" class="fa fa-twitter icon twitter"></a></li>
                            <li><a href="#" class="fa fa-google-plus icon googleplus"></a></li>
                            <li><a href="#" class="fa fa-dribbble icon dribbble"></a></li>
                            <li><a href="#" class="fa fa-rss icon rss"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- //login-page -->

        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnKaydol" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
