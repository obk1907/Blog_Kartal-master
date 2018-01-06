<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSablon.Master" AutoEventWireup="true" CodeBehind="MakaleEkle.aspx.cs" Inherits="Blog_Presentation.Admin.MakaleEkle" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

    <div class="container">

        <div class="row">

            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="box">
                    <h2 class="text-uppercase">Makale Ekleme</h2>
                    <hr />
                    <div class="form-group">
                        <asp:Label ID="name" runat="server" Text="Label">Makale Başlık</asp:Label>
                        <asp:TextBox ID="txtbaslik" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="description" runat="server" Text="Label">Makale Önyazı</asp:Label>
                        <asp:TextBox ID="txtonyazi" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Label">Makale Tarihi</asp:Label>
                        <asp:TextBox ID="txttarih" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Label">Makale Aktifmi</asp:Label>
                        <asp:CheckBox ID="chcaktifmi" runat="server" />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Label">Makale Okunma Sayısı</asp:Label>
                        <asp:TextBox ID="txtokunmasayisi" CssClass="form-control" runat="server" Text="0"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Label">Makale Yazarı</asp:Label>
                        <asp:DropDownList ID="ddlkullanicilar" runat="server"></asp:DropDownList>
                    </div>
                    <%-- <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="Label">Makale Etiketler</asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                        <asp:TextBox ID="txtetiket" runat="server"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Etiketi Ekle" OnClick="Button1_Click" />
                    </div>--%>
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="Label">Makale Kategori</asp:Label>
                        <asp:DropDownList ID="ddlkategorilerlist" runat="server"></asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <%--<asp:TextBox ID="txticerik" CssClass="ckeditor" TextMode="MultiLine" runat="server" />--%>
                        <CKEditor:CKEditorControl ID="txticerik" runat="server"></CKEditor:CKEditorControl>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="">Makale Kapak Resmi</asp:Label>&nbsp;
                        <asp:FileUpload ID="fukapak" runat="server" />
                    </div>



                    <div class="text-center">
                        <asp:Button ID="btnkaydet" CssClass="btn btn-template-main" runat="server" Text="Kaydet" OnClick="btnkaydet_Click" />
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
