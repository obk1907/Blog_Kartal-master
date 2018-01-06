<%@ Page Title="" Language="C#" MasterPageFile="~/BlogSablon.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Blog_Presentation.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-9" id="blog-listing-medium">
                <section class="post">
                    <asp:Repeater ID="rptmakaleler" runat="server">
                        <ItemTemplate>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="image">
                                        <a href="MakaleDetay.aspx?ID=<%# Eval("MakaleID") %>">
                                            <img src="<%# Eval("MakaleKapakResimUrl") %>"" class="img-responsive" alt="Example blog post alt">
                                        </a>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <h2><a href="post.htmls">Fashion now</a></h2>
                                    <div class="clearfix">
                                        <p class="author-category">
                                            By <a href="#"><%# Eval("UserID") %></a> in <a href="#"><%# Eval("KategoriID") %></a>
                                        </p>
                                        <p class="date-comments">
                                            <a href="blog-post.html"><i class="fa fa-calendar-o"></i><%# Eval("MakaleTarihi") %></a>
                                            <a href="blog-post.html"><i class="fa fa-comment-o"></i>8 Comments</a>
                                        </p>
                                    </div>
                                    <p class="intro">
                                        <%# Eval("MakaleIcerik") %>
                           
                                    </p>
                                    <p class="read-more">
                                        <a href="MakaleDetay.aspx?ID=<%# Eval("MakaleID") %>" class="btn btn-template-main">Continue reading</a>
                                    </p>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>


                </section>

                <ul class="pager">
                    <li class="previous"><a href="#">&larr; Older</a>
                    </li>
                    <li class="next disabled"><a href="#">Newer &rarr;</a>
                    </li>
                </ul>



            </div>
            <div class="col-md-3">

                <!-- *** MENUS AND WIDGETS ***
 _________________________________________________________ -->

                <div class="panel panel-default sidebar-menu">

                    <div class="panel-heading">
                        <h3 class="panel-title">Ara</h3>
                    </div>

                    <div class="panel-body">
                        <form role="search">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Ara" />
                                <span class="input-group-btn">

                                    <button type="submit" class="btn btn-template-main"><i class="fa fa-search"></i></button>

                                </span>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="panel panel-default sidebar-menu">

                    <div class="panel-heading">
                        <h3 class="panel-title">Kategoriler</h3>
                    </div>

                    <div class="panel-body">
                        <ul class="nav nav-pills nav-stacked">
                            <asp:Repeater ID="rptkategoriler" runat="server">
                                <ItemTemplate>
                                    <li><a href="#"><%# Eval("KategoriAd") %></a></li>
                                </ItemTemplate>
                            </asp:Repeater>


                        </ul>
                    </div>
                </div>

                <div class="panel sidebar-menu">
                    <div class="panel-heading">
                        <h3 class="panel-title">Etiketler</h3>
                    </div>

                    <div class="panel-body">
                        <ul class="tag-cloud">
                            <asp:Repeater ID="rptetiketler" runat="server">
                                <ItemTemplate>
                                    <li><a href="#"><i class="fa fa-tags"></i><%# Eval("EtiketAd") %></a></li>
                                </ItemTemplate>
                            </asp:Repeater>

                        </ul>
                    </div>
                </div>

                <!-- *** MENUS AND FILTERS END *** -->
            </div>
        </div>
    </div>
</asp:Content>
