<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="kayitol.aspx.cs" Inherits="OtoGaleri.kayitol" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 164px;
            height: 35px;
        }

        .auto-style4 {
            height: 35px;
        }

        .arkaplan {
            width: 40%;
            margin-left: auto;
            margin-right: auto;
            background-color: black;
            opacity: 90%;
        }

        .tablo {
            margin-left: auto;
            margin-right: auto;
        }
        .auto-style5 {
            width: 36%;
            margin-left: auto;
            margin-right: auto;
            background-color: black;
            opacity: 90%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <form id="form1" runat="server">
        <div class="auto-style5">
            <br />
            <br />
            <table class="tablo">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" ForeColor="White" Text="E - Posta : "></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" Width="163px" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Şifre : "></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server" Width="163px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Şifre onay : "></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox3" runat="server" Width="163px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" Text="Kayıt Ol" Width="131px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </div>
    </form>
    <br />
    <br />
    <br />
</asp:Content>
