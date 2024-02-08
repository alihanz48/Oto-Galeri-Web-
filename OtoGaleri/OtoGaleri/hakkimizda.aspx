<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="hakkimizda.aspx.cs" Inherits="OtoGaleri.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/hakkimizda.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">

        <div class="sayfa arkaplan">
            <div class="yazi">
                <br />
                <header>
                    <img class="foto" src="imgs/hakkimizda.jpg" alt="Dalaman Oto Galeri Logosu">
                    <h1>Dalaman Oto Galeri</h1>
                    <h2>Dalaman'da Otomotivin En İyisi</h2>
                </header>
                <main>
                    <section class="hakkimizda">
                        <h3>Hakkımızda</h3>
                        <p>Dalaman Oto Galeri, 2023 yılında Dalaman'da kurulan ve kısa sürede bölgenin en çok tercih edilen oto galerilerinden biri haline gelen bir aile şirketidir. Şirketimiz, binek ve ticari araçlar olmak üzere geniş bir araç yelpazesi sunmaktadır.</p>
                        <p>Dalaman Oto Galeri, müşterilerine en iyi hizmeti sunmayı taahhüt eder. Bu doğrultuda, araçlarımızı özenle seçiyor ve bakımlarını düzenli olarak yaptırıyoruz. Ayrıca, satış sonrası hizmetlerimizle de müşterilerimizin memnuniyetini en üst düzeyde tutmayı hedefliyoruz.</p>
                        <p>Dalaman Oto Galeri'de, her bütçeye ve ihtiyaca uygun bir araç bulabilirsiniz. Araçlarımızı satın almak için kredi ve leasing seçenekleri de sunuyoruz.</p>
                    </section>
                    <section class="misyon-vizyon">
                        <h3>Misyon ve Vizyonumuz</h3>
                        <div class="misyon">
                            <h4>Misyonumuz</h4>
                            <p>Dalaman Oto Galeri olarak, müşterilerimizin ihtiyaçlarına en iyi şekilde cevap vererek, onlara en iyi hizmeti sunmayı amaçlıyoruz. Bu doğrultuda, araçlarımızı özenle seçiyor, bakımlarını düzenli olarak yaptırıyor ve satış sonrası hizmetlerimizle de müşterilerimizin memnuniyetini en üst düzeyde tutuyoruz.</p>
                        </div>
                        <div class="vizyon">
                            <h4>Vizyonumuz</h4>
                            <p>Dalaman Oto Galeri olarak, Dalaman'da otomotiv sektörünün öncü şirketlerinden biri olmak istiyoruz. Bu doğrultuda, araç yelpazemizi genişletmeye, satış sonrası hizmetlerimizi geliştirmeye ve müşteri memnuniyetini en üst düzeyde tutmaya devam edeceğiz.</p>
                        </div>
                    </section>
                    <section class="hizmetler">
                        <h3>Hizmetlerimiz</h3>
                        <div class="hizmet">
                            <h4>Satış Öncesi Hizmetlerimiz</h4>
                            <ul>
                                <li>Aracınızın ihtiyaçlarınıza uygunluğunu belirlemek için ücretsiz ekspertiz hizmeti</li>
                                <li>Kredi ve leasing seçenekleri</li>
                                <li>Araç finansmanı</li>
                                <li>Araç sigortası</li>
                            </ul>
                        </div>
                        <div class="hizmet">
                            <h4>Satış Sonrası Hizmetlerimiz</h4>
                            <ul>
                                <li>24 saat yol yardım</li>
                                <li>Bakım ve onarım hizmetleri</li>
                                <li>Yedek parça temini</li>
                            </ul>
                        </div>
                    </section>
                    <section class="neden-bizi-secin">
                        <h3>Dalaman Oto Galeri'yi Tercih Etmeniz İçin 5 Neden</h3>
                        <ul>
                            <li>Geniş araç yelpazesi</li>
                            <li>Kaliteli hizmet</li>
                            <li>Uygun fiyat</li>
                            <li>Satış sonrası hizmetler</li>
                            <li>Müşteri memnuniyeti garantisi</li>
                        </ul>
                    </section>
                    <br />
                </main>
            </div>
        </div>
    </form>

</asp:Content>
