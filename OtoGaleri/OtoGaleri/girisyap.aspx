<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="girisyap.aspx.cs" Inherits="OtoGaleri.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 44%;
            height: 123px;
            margin-left: 134px;
        }

        .auto-style2 {
            height: 40px;
        }

        .arkaplan {
            width: 50%;
            margin-left: auto;
            margin-right: auto;
            background-color: black;
            opacity: 90%;
        }

        .tablo {
            width: 60%;
            margin-left: auto;
            margin-right: auto;
        }
        .auto-style6 {
            height: 46px;
        }
        .auto-style7 {
            height: 27px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <form id="form1" runat="server">
        <div class="arkaplan">
            <br />
            <table class="auto-style1 tablo">
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Mail : "></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox1" runat="server" Width="202px" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Şifre : "></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox2" runat="server" Width="202px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" Text="Giriş Yap" Width="125px" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2">
                        <asp:Panel ID="Panel1" runat="server" BackColor="#CC0000" Height="21px" Visible="False">
                            <div style="width:100%; height:100%; text-align:center; margin-top:auto; margin-bottom:auto;">
                                <asp:Label ID="Label3" runat="server" Text="Label" style="" ForeColor="White">Kullanıcı adınız veya parolanız yanlıştır.!</asp:Label>
                            </div>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
            <br />
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>

</asp:Content>