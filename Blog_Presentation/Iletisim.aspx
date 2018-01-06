<%@ Page Title="" Language="C#" MasterPageFile="~/BlogSablon.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="Blog_Presentation.Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" id="contact">      

        <section>

            <div class="row text-center">

                <div class="col-md-12">
                    <div class="heading">
                        <h2>İletişim Formu</h2>
                    </div>
                </div>

                <div class="col-md-8 col-md-offset-2">
                    <form>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="firstname">İsim</label>
                                    <input type="text" class="form-control" id="firstname" placeholder="isim">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="lastname">Soyisim</label>
                                    <input type="text" class="form-control" id="lastname" placeholder="soyisim">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="text" class="form-control" id="email" placeholder="email">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="subject">Konu</label>
                                    <input type="text" class="form-control" id="subject" placeholder="konu">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="message">Mesaj</label>
                                    <textarea id="message" class="form-control"></textarea>
                                </div>
                            </div>

                            <div class="col-sm-12 text-center">
                                <button type="submit" class="btn btn-template-main"><i class="fa fa-envelope-o"></i>Gönder</button>

                            </div>
                        </div>
                        <!-- /.row -->
                    </form>



                </div>
            </div>
            <!-- /.row -->

        </section>

        <section>

            <div class="row">
                <div class="col-md-4">
                    <div class="box-simple">
                        <div class="icon">
                            <i class="fa fa-map-marker"></i>
                        </div>
                        <h3>Adres</h3>
                        <p>
                            Ferhatpaşa Mahallesi<br />
                            G47 Sokak No:14 Daire:4<br />
                            Ataşehir/İstanbul<br />
                            <strong>Türkiye</strong>
                        </p>


                    </div>

                </div>


                <div class="col-md-4">

                    <div class="box-simple">
                        <div class="icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <h3>Telefon </h3>

                        <p>
                            <strong>+90 537 552 44 24</strong>
                        </p>
                    </div>


                </div>

                <div class="col-md-4">

                    <div class="box-simple">
                        <div class="icon">
                            <i class="fa fa-envelope"></i>
                        </div>
                        <h3>Elektronik Destek</h3>
                        <p class="text-muted">Her türlü soru ve sorunlar için mail atabilirsiniz.</p>
                        <ul class="list-style-none">
                            <li><strong><a href="mailto:">burak_kartal18@hotmail.com</a></strong>
                            </li>
                        </ul>
                    </div>

                </div>
            </div>

        </section>
    </div>
</asp:Content>
