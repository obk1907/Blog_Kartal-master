<%@ Page Title="" Language="C#" MasterPageFile="~/BlogSablon.Master" AutoEventWireup="true" CodeBehind="UyeKayit.aspx.cs" Inherits="Blog_Presentation.UyeKayit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <div class="row">

            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="box">
                    <h2 class="text-uppercase">Yeni Kayıt</h2>

                    <p class="lead">Henüz kayıt olmadınız mı?</p>
                    <%--<p>With registration with us new world of fashion, fantastic discounts and much more opens to you! The whole process will not take you more than a minute!</p>
                    <p class="text-muted">If you have any questions, please feel free to <a href="contact.html">contact us</a>, our customer service center is working for you 24/7.</p>--%>

                    <hr />

                    <form action="customer-orders.html" method="post">
                        <div class="form-group">
                            <label for="name-login">İsim</label>
                            <input type="text" class="form-control" id="name-login" />
                        </div>
                        <div class="form-group">
                            <label for="surname-login">Soyisim</label>
                            <input type="text" class="form-control" id="surname-login" />
                        </div>
                        <div class="form-group">
                            <label for="email-login">Email</label>
                            <input type="text" class="form-control" id="email-login" />
                        </div>
                        <div class="form-group">
                            <label for="telefon-login">Telefon</label>
                            <input type="text" class="form-control" id="telefon-login" />
                        </div>
                        <div class="form-group">
                            <label for="password-login">Sifre</label>
                            <input type="password" class="form-control" id="password-login" />
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-template-main"><i class="fa fa-user-md"></i>Kaydol</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-3"></div>


        </div>
        <!-- /.row -->

    </div>



</asp:Content>
