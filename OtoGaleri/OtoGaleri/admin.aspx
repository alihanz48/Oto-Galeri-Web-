<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="OtoGaleri.admin1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .resim {
            width: 100px;
            height: 60px;
        }

        .yukseklik {
            height: 45px;
            width: 50%;
            font-size: large;
            font-family: 'Century Gothic';
            text-align: center;
        }

        .anadiv {
            width: 100%;
            height: auto;
        }

        .auto-style1 {
            width: 232px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <form id="form1" runat="server">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <Columns>
                <asp:BoundField HeaderText="İd" DataField="id" />
                <asp:BoundField HeaderText="Marka" DataField="marka" />
                <asp:BoundField HeaderText="Model" DataField="model" />
                <asp:BoundField HeaderText="Yıl" DataField="yil" />
                <asp:BoundField HeaderText="Km" DataField="km" />
                <asp:BoundField HeaderText="Renk" DataField="renk" />
                <asp:BoundField HeaderText="Motor" DataField="motor" />
                <asp:BoundField HeaderText="Resim Url" DataField="resim" />
                <asp:ImageField HeaderText="Resim" DataImageUrlField="resim" ControlStyle-CssClass="resim"></asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>


        <div class="ekle">

            <table class="yukseklik" border="1">
                <tr style="">
                    <td colspan="2" class="auto-style1">Araç Ekle</td>
                </tr>
                <tr>
                    <td class="yukseklik">
                        <asp:Label ID="Label1" runat="server" Text="Marka :"></asp:Label>
                    </td>
                    <td class="yukseklik">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="yukseklik">
                        <asp:Label ID="Label2" runat="server" Text="Model : "></asp:Label>
                    </td>
                    <td class="yukseklik">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="yukseklik">
                        <asp:Label ID="Label3" runat="server" Text="Yıl : "></asp:Label>
                    </td>
                    <td class="yukseklik">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="yukseklik">
                        <asp:Label ID="Label4" runat="server" Text="Km : "></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="yukseklik">
                        <asp:Label ID="Label5" runat="server" Text="Renk : "></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="yukseklik">
                        <asp:Label ID="Label6" runat="server" Text="Motor : "></asp:Label>
                    </td>
                    <td class="yukseklik">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="yukseklik">
                        <asp:Label ID="Label7" runat="server" Text="Resim : "></asp:Label>
                    </td>
                    <td class="yukseklik">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="yukseklik"></td>
                    <td class="yukseklik">
                        <asp:Button ID="Button1" runat="server" Text="Ekle" Width="134px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <div class="guncelle">

            <table class="yukseklik" border="1">
                <tr>
                    <td class="yukseklik" colspan="2">Güncelle</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label11" runat="server" Text="Araç id :"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="170px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label8" runat="server" Text="Nitelik :"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="170px">
                            <asp:ListItem Value="marka">Marka</asp:ListItem>
                            <asp:ListItem Value="model">Model</asp:ListItem>
                            <asp:ListItem Value="yil">Yıl</asp:ListItem>
                            <asp:ListItem Value="km">Km</asp:ListItem>
                            <asp:ListItem Value="renk">Renk</asp:ListItem>
                            <asp:ListItem Value="motor">Motor</asp:ListItem>
                            <asp:ListItem Value="resim">Resim</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label9" runat="server" Text="Yeni değer : "></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox8" runat="server" Width="163px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Güncelle" Width="171px" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>

        </div>
        <br />
        <div class="sil">

            <table class="yukseklik" border="1">
                <tr>
                    <td colspan="2">Araç sil</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label10" runat="server" Text="Araç id :"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="18px" Width="164px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1">
                        <asp:Button ID="Button3" runat="server" Text="Araç sil" />
                    </td>
                </tr>
            </table>

        </div>

    </form>
</asp:Content>
