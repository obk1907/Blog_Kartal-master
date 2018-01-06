<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSablon.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Blog_Presentation.Admin.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">


        <div class="row">

            <!-- *** LEFT COLUMN ***
			 _________________________________________________________ -->

            <div class="col-md-9" id="customer-orders">

                <p class="text-muted lead">Kategori Listesi</p>
                <div class="box">

                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Kategori Adı</th>
                                    <th>Kategori Açıklama</th>
                                    <th>Düzenle</th>
                                </tr>
                            </thead>
                            <tbody>

                                <asp:Repeater ID="rptkategoriler" runat="server" OnItemCommand="rptkategoriler_ItemCommand">
                                    <ItemTemplate>
                                        <tr>
                                            <th><%# Eval("KategoriAd") %></th>
                                            <td><%# Eval("KategoriAciklama") %></td>


                                            <td>
                                                <asp:Button ID="btnsil" CssClass="btn btn-template-main btn-sm" runat="server" Text="Sil" CommandName="Delete" CommandArgument='<%# Eval("KategoriID") %>' />
                                                <%--<a href="#" class="btn btn-template-main btn-sm" CommandName="Delete" CommandArgument="">Sil</a>--%>
                                                &nbsp;                                                
                                                <a href="KategoriGuncelle.aspx?ID=<%# Eval("KategoriID") %>" class="btn btn-template-main btn-sm">Güncelle</a>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>



                            </tbody>
                        </table>
                    </div>
                    <!-- /.table-responsive -->

                </div>
                <!-- /.box -->

            </div>
            <!-- /.col-md-9 -->

            <!-- *** LEFT COLUMN END *** -->


            <div class="col-md-3">
            </div>



        </div>
        <div class="row">

            <!-- *** LEFT COLUMN ***
			 _________________________________________________________ -->

            <div class="col-md-9" id="customer-orders2">

                <p class="text-muted lead">AltKategori Listesi</p>
                <div class="box">

                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>AltKategori Adı</th>
                                    <th>AltKategori Açıklama</th>
                                    <th>Kategori Adı</th>
                                    <th>Düzenle</th>

                                </tr>
                            </thead>
                            <tbody>

                                <asp:Repeater ID="rptaltkategoriler" runat="server" OnItemCommand="rptaltkategoriler_ItemCommand">
                                    <ItemTemplate>

                                        <tr>
                                            <th><%# Eval("AltKategoriAd") %></th>
                                            <td><%# Eval("AltKategoriAciklama") %></td>
                                            <td><%#GetKategoriNameByID(Convert.ToInt32(Eval("KategoriID").ToString())) %></td>
                                            <td>
                                                <asp:Button ID="btnsil" CssClass="btn btn-template-main btn-sm" runat="server" Text="Sil" CommandName="Delete" CommandArgument='<%# Eval("AltKategoriID") %>' />&nbsp;
                                                <a href="AltKategoriGuncelle.aspx?ID=<%# Eval("AltKategoriID") %>" class="btn btn-template-main btn-sm">Güncelle</a>
                                            </td>
                                        </tr>

                                    </ItemTemplate>
                                </asp:Repeater>



                            </tbody>
                        </table>
                    </div>
                    <!-- /.table-responsive -->

                </div>
                <!-- /.box -->

            </div>
            <!-- /.col-md-9 -->

            <!-- *** LEFT COLUMN END *** -->


            <div class="col-md-3">
            </div>



        </div>
        <div class="row">

            <!-- *** LEFT COLUMN ***
			 _________________________________________________________ -->

            <div class="col-md-9" id="customer-orders3">

                <p class="text-muted lead">Makale Listesi</p>
                <div class="box">

                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Başlık</th>
                                    <th>Yayın Tarih</th>
                                    <th>Okunma Sayısı</th>
                                    <th>Aktif mi?</th>
                                    <th>Makale Yazarı</th>
                                    <th>Makale Kategori</th>
                                    <th>Düzenle</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rptmakaleler" runat="server" OnItemCommand="rptmakaleler_ItemCommand">
                                    <ItemTemplate>
                                        <tr>
                                            <th><%# Eval("MakaleBaslik") %></th>
                                            <td><%#GetTarih(Convert.ToDateTime(Eval("MakaleTarihi").ToString()))%></td>
                                            <td><%# Eval("MakaleOkunmaSayisi") %></td>
                                            <td><span class="label label-info"><%# Eval("MakaleAktifmi") %></span></td>
                                            <td><%#GetKullaniciNameByID(Convert.ToInt32(Eval("UserID").ToString())) %></td>
                                            <td><%#GetKategoriNameByID(Convert.ToInt32(Eval("KategoriID").ToString())) %></td>
                                            <td>
                                                <asp:Button ID="btnsil" CommandName="Delete" CommandArgument='<%# Eval("MakaleID") %>' CssClass="btn btn-template-main btn-sm" runat="server" Text="Sil" />
                                                &nbsp;
                                        <a href="MakaleGuncelle.aspx?ID=<%# Eval("MakaleID") %>" class="btn btn-template-main btn-sm">Güncelle</a>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>

                            </tbody>
                        </table>
                    </div>
                    <!-- /.table-responsive -->

                </div>
                <!-- /.box -->

            </div>
            <!-- /.col-md-9 -->

            <!-- *** LEFT COLUMN END *** -->


            <div class="col-md-3">
            </div>



        </div>
    </div>


</asp:Content>
