<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSablon.Master" AutoEventWireup="true" CodeBehind="KategoriGuncelle.aspx.cs" Inherits="Blog_Presentation.Admin.KategoriGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="container">

        <div class="row">

            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="box">
                    <h2 class="text-uppercase">Kategori Güncelleme</h2>
                    <hr />
                    <div class="form-group">
                        <asp:Label ID="name" runat="server" Text="Label">Kategori Adı</asp:Label>
                        <asp:TextBox ID="txtad" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="description" runat="server" Text="Label">Kategori Açıklama</asp:Label>
                        <asp:TextBox ID="txtaciklama" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="text-center">
                        <%-- <button type="submit" class="btn btn-template-main"><i class="fa fa-save"></i>Kaydet</button>--%>
                        <asp:Button ID="btnguncelle" CssClass="btn btn-template-main" runat="server" Text="Güncelle" OnClick="btnguncelle_Click"  />

                    </div>
                    <br />
                    <div class="form-group">
                        <asp:Label ID="lblsuccess" CssClass="label label-success" runat="server" Text=""></asp:Label>
                        <asp:Label ID="lblalert" CssClass="label label-warning" runat="server" Text=""></asp:Label>
                    </div>

                </div>
            </div>
            <div class="col-md-3"></div>


        </div>
        <!-- /.row -->

    </div>


</asp:Content>
