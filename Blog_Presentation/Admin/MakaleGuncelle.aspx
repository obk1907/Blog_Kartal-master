<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSablon.Master" AutoEventWireup="true" CodeBehind="MakaleGuncelle.aspx.cs" Inherits="Blog_Presentation.Admin.MakaleGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        $(function () {
            $('.ckeditor').ckeditor(function () { }, { toolbar: 'Editprofile' });
        });
    </script>


    <asp:TextBox ID="txticerik" CssClass="ckeditor" TextMode="MultiLine" runat="server" />



</asp:Content>
