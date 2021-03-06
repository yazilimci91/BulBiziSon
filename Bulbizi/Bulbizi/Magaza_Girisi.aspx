﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AnaMaster.Master" AutoEventWireup="true" CodeBehind="Magaza_Girisi.aspx.cs" Inherits="Bulbizi.Magaza_Girisi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <!-- login-page -->
            <div class="login-page">
                <div class="container">
                    <h3 class="w3ls-title w3ls-title1">Giriş Yap  | Mağaza </h3>
                    <div class="login-body">
                        <form action="#" method="post">
                            <asp:TextBox ID="email" CssClass="user" runat="server" placeholder="Email Adresi"></asp:TextBox>
                            <asp:TextBox ID="password" CssClass="lock" TextMode="Password" runat="server" placeholder="Şifre"></asp:TextBox>
                            <asp:Button ID="btnGiris" runat="server" Text="Giriş Yap" />
                            <div class="forgot-grid">
                                <asp:CheckBox ID="chcBeniHatirla" runat="server" Text="Beni Hatırla" />

                                <div class="forgot">
                                    <a href="#">Şifremi Unuttum?</a>
                                </div>
                            <div class="clearfix"></div>
                            </div>
                        </form>
                    </div>
                    <h6>Hatırlayamadınız mı? <a href="Kaydol.aspx">Kaydol >></a> </h6>
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
            <asp:AsyncPostBackTrigger ControlID="btnGiris" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>


</asp:Content>
