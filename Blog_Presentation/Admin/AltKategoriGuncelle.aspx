<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSablon.Master" AutoEventWireup="true" CodeBehind="AltKategoriGuncelle.aspx.cs" Inherits="Blog_Presentation.Admin.AltKategoriGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <div class="row">

            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="box">
                    <h2 class="text-uppercase">AltKategori Güncelleme</h2>
                    <hr />
                    <div class="form-group">
                        <asp:Label ID="name" runat="server" Text="Label">AltKategori Adı</asp:Label>
                        <asp:TextBox ID="txtad" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="description" runat="server" Text="Label">AltKategori Açıklama</asp:Label>
                        <asp:TextBox ID="txtaciklama" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Label">Kategori Adı</asp:Label>
                        <%--<asp:TextBox ID="txtkategoriad" CssClass="form-control" runat="server"></asp:TextBox>--%>
                        <asp:DropDownList ID="ddlaltkategoriler" runat="server"></asp:DropDownList>
                    </div>
                    <div class="text-center">
                        <asp:Button ID="Button1" CssClass="btn btn-template-main" runat="server" Text="Güncelle" OnClick="Button1_Click" />
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
