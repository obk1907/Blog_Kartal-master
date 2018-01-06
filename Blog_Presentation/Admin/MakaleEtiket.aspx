<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSablon.Master" AutoEventWireup="true" CodeBehind="MakaleEtiket.aspx.cs" Inherits="Blog_Presentation.Admin.MakaleEtiket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <div class="row">

            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="box">
                    <h2 class="text-uppercase">Makale Etiket Ekleme</h2>
                    <hr />
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="Label">Makale Etiketler</asp:Label>
                        <asp:DropDownList ID="ddletiketler" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddletiketler_SelectedIndexChanged"></asp:DropDownList>

                        <asp:TextBox ID="txtetiket" runat="server"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Etiketi Ekle" />
                    </div>
                </div>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%=Button1.ClientID %>').click(function () {
                var txtetiket = document.getElementById('<%=txtetiket.ClientID%>');
                $.ajax({
                    type: "POST",
                    url: "MakaleEtiket.aspx/EtiketKayit",
                    data: "{'etiket':'" + txtetiket.value + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        alert(msg.d);
                    }

                })
                return false;
            });
        });
    </script>
</asp:Content>
