<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="OtoGaleri.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/anasayfaek.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }

        .satir {
            text-decoration: underline;
        }

        .anadiv {
            background-color: black;
            opacity: 90%;
            width: 30%;
            margin-left: auto;
            margin-right: auto;
        }

        .datalist {
            text-align: center;
            vertical-align: central;
            align-content: center;
            margin: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="anadiv">
            <asp:DataList ID="DataList1" runat="server" CssClass="datalist">
                <ItemTemplate>
                    <table class="nav-justified">
                        <tr class="satir">
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Marka : " ForeColor="White"></asp:Label>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("marka") %>' ForeColor="White"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr class="satir">
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Model : " ForeColor="White"></asp:Label>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("model") %>' ForeColor="White"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="satir">
                                <asp:Label ID="Label5" runat="server" Text="Yıl : " ForeColor="White"></asp:Label>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("yil") %>' ForeColor="White"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="satir">
                                <asp:Label ID="Label7" runat="server" Text="Km : " ForeColor="White"></asp:Label>
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("km") %>' ForeColor="White"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr class="satir">
                            <td>
                                <asp:Label ID="Label9" runat="server" Text="Renk : " ForeColor="White"></asp:Label>
                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("renk") %>' ForeColor="White"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr class="satir">
                            <td>
                                <asp:Label ID="Label11" runat="server" Text="Motor  : " ForeColor="White"></asp:Label>
                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("motor") %>' ForeColor="White"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image1" runat="server" Height="151px" ImageUrl='<%# Eval("resim") %>' Width="322px" CssClass="auto-style1 datalist" ImageAlign="Middle" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <caption>
                            <hr style="border-style: inset; border-width: 2px;">
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            </hr>
                        </caption>

                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</asp:Content>