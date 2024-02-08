<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="OtoGaleri.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 25px;
            width: 541px;
        }

        .auto-style3 {
            height: 20px;
        }

        .lblyazi {
            color: white;
            text-align: center;
        }

        .auto-style7 {
            height: 25px;
            width: 87px;
        }

        .auto-style8 {
            height: 20px;
            width: 87px;
        }

        .auto-style10 {
            height: 23px;
            width: 87px;
        }

        .auto-style11 {
            height: 23px;
            width: 541px;
        }

        .auto-style12 {
            height: 21px;
            width: 87px;
        }

        .auto-style13 {
            height: 21px;
            width: 541px;
        }

        .auto-style14 {
            width: 79%;
            margin-left: auto;
            margin-right: auto;
            height: 294px;
        }

        .auto-style15 {
            height: 20px;
            width: 541px;
        }

        .arkaplan {
            width: 80%;
            margin-left: auto;
            margin-right: auto;
            background-color: black;
            opacity: 90%;
        }

        .tablo {
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <script type="text/javascript">
        function getServerTime() {
            var timebox = document.getElementById('time1');
            var xmlhttp;
            if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
                xmlhttp = new XMLHttpRequest();
            }
            else {
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    timebox.innerHTML = xmlhttp.responseText;
                }
                else {
                }
            }
            xmlhttp.open("GET", "Default2.aspx", true);
            xmlhttp.send();
        }
        function showTime() {
            var d = new Date();
            var curr_hour = d.getHours();
            var curr_min = d.getMinutes();
            var curr_seconds = d.getSeconds();
            if (document.getElementById('time2') != null) {
                document.getElementById('time2').innerHTML = curr_hour + " : " + curr_min + " : " + curr_seconds;
            }
        }
        setInterval(showTime, 1000); //runs every 1 sec in a separate thread
        setInterval(getServerTime, 1000);//runs every 1 sec in a separate thread
        function test() {
            showTime();
            getServerTime();
        }
    </script>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <br />
        <br />
        <br />
        <div class="arkaplan">
            <br />
            <br />
            <table class="tablo">
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label1" runat="server" Text="Ad Soyad :" CssClass="lblyazi"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox1" runat="server" Width="162px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label2" runat="server" Text="Mail : " CssClass="lblyazi"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="TextBox2" runat="server" Width="161px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label3" runat="server" Text="Mesaj : " CssClass="lblyazi"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox3" runat="server" Width="531px" Height="77px" TextMode="MultiLine" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style15">
                        <asp:Button ID="Button1" runat="server" Text="Gönder" Width="228px" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:Timer ID="Timer1" runat="server" Interval="3000" Enabled="False" OnTick="zmn_tick"></asp:Timer>
                        <asp:Panel ID="Panel2" runat="server" Height="40px" Visible="False">
                            <div style="color: white; background-color: green; text-align: center;">
                                <p style="font-family: 'Century Gothic'">Mesaj başarı ile gönderildi!</p>
                            </div>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </div>
        <br />
        <br />
    </form>

</asp:Content>

