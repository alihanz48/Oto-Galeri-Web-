<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="aracekle.aspx.cs" Inherits="OtoGaleri.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .gonderbutton {
            border-radius: 10px;
        }

        .auto-style2 {
            width: 431px;
            height: 30px;
        }

        .auto-style3 {
            height: 30px;
        }

        body {
            background-image: url("imgs/arkaplan.jpg");
        }

        .arkaplan{
            text-align:center;
            width:40%;
            margin-left:auto;
            margin-right:auto;
            background-color:black;
            opacity:90%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="arkaplan">
        <form id="form1" runat="server">
            <table class="nav-justified arkaplan">
                <tr>
                    <td class="auto-style2">
                    </td>
                    <td class="auto-style3">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        </td>
                    <td class="auto-style3">
                        </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Marka : " ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="150px">
                            <asp:ListItem>Mercedes</asp:ListItem>
                            <asp:ListItem>Audi</asp:ListItem>
                            <asp:ListItem>BMW</asp:ListItem>
                            <asp:ListItem>Toyota</asp:ListItem>
                            <asp:ListItem>Fiat</asp:ListItem>
                            <asp:ListItem>Renault</asp:ListItem>
                            <asp:ListItem>Wolkswagen</asp:ListItem>
                            <asp:ListItem>Honda</asp:ListItem>
                            <asp:ListItem>Hyundai</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Model : " ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="142px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Yıl : " ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="142px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Km : " ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="142px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Renk : " ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="142px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Motor : " ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="142px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Resim : " ForeColor="White"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox6" runat="server" Height="20px" Width="142px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" BorderStyle="None" Text="Kaydet" Width="149px" Height="25px" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
            </table>
        </form>
    </div>
</asp:Content>
