<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Start/Immobiliare.Master"
    CodeBehind="Blog.aspx.vb" Inherits="Immobiliare_Web.Blog" %>

<%@ Import Namespace="Immobiliare_Servizi.Lingua" %>
<%@ Register Src="../Immobili/Immobili_Right.ascx" TagName="Immobili_Right" TagPrefix="imm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
            <div class="post-top">
                <div class="post-author">
                    <asp:Image ID="img_immagine" runat="server" />
                    <div class="pa-user">
                        <div class="pa-name">
                            <asp:Literal ID="ltl_inserito_da" runat="server"></asp:Literal></div>
                        <div class="pa-title">
                            <asp:Literal ID="ltl_data_news" runat="server"></asp:Literal></div>
                    </div>
                    <div class="clearfix">
                    </div>
                </div>
                <div class="post-share">
                    <div class="ps-social">
                        <a href="https://www.facebook.com/sharer/sharer.php?u=http://mariusn.com/themes/reales-wp/provocative-home-design-re-shaping-the-landscape/"
                            onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;"
                            target="_blank" title="Share on Facebook" class="btn btn-sm btn-icon btn-round btn-o btn-facebook">
                            <span class="fa fa-facebook"></span></a>
                        <a href="https://twitter.com/share?url=http://mariusn.com/themes/reales-wp/provocative-home-design-re-shaping-the-landscape/&amp;text=Provocative+Home+Design+Re-Shaping+The+Landscape"
                            onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;"
                            target="_blank" title="Share on Twitter" class="btn btn-sm btn-icon btn-round btn-o btn-twitter">
                            <span class="fa fa-twitter"></span></a>
                        <a href="https://plus.google.com/share?url=http://mariusn.com/themes/reales-wp/provocative-home-design-re-shaping-the-landscape/"
                            onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=350,width=480');return false;"
                            target="_blank" title="Share on Google+" class="btn btn-sm btn-icon btn-round btn-o btn-google">
                            <span class="fa fa-google-plus"></span></a>
                        <a href="http://www.linkedin.com/shareArticle?mini=true&amp;url=http://mariusn.com/themes/reales-wp/provocative-home-design-re-shaping-the-landscape/&amp;title=Provocative+Home+Design+Re-Shaping+The+Landscape"
                            target="_blank" title="Share on LinkedIn" class="btn btn-sm btn-icon btn-round btn-o btn-linkedin">
                            <span class="fa fa-linkedin"></span></a>
                    </div>
                </div>
                <div class="clearfix">
                </div>
            </div>
            <div id="post-270" class="post-270 post type-post status-publish format-standard has-post-thumbnail hentry category-architecture tag-cool tag-modern">
                <div class="entry-content">
                    <h2 class="osLight">
                        <asp:Literal ID="ltl_titolo" runat="server"></asp:Literal></h2>
                    <p>
                        <asp:Literal ID="ltl_descrizione" runat="server"></asp:Literal></p>
                    <div class="clearfix">
                    </div>
                </div>
            </div>
            <div class="f-pn-articles">
                <asp:HyperLink ID="lnk_blog_prec" runat="server" CssClass="f-p-article">
                    <div class="fpna-title">
                        <%=Lingua.CaricaLingua("lgl_blog_articolo_precedente")%></div>
                    <span class="fpna-header"><asp:Literal ID="ltl_blog_prec" runat="server"></asp:Literal></span>
                    <span class="fa fa-angle-left pull-left pn-icon"></span>
                </asp:HyperLink>
                <asp:HyperLink ID="lnk_blog_succ" runat="server" CssClass="f-n-article">
                    <div class="fpna-title">
                        <%=Lingua.CaricaLingua("lgl_blog_articolo_successivo")%></div>
                    <span class="fpna-header"><asp:Literal ID="ltl_blog_succ" runat="server"></asp:Literal></span>
                    <span class="fa fa-angle-right pull-right pn-icon"></span>
                </asp:HyperLink>
                <div class="clearfix">
                </div>
            </div>
            <h2><%=Lingua.CaricaLingua("lgl_blog_articoli_relativi")%></h2>
            <div class="row">
                <asp:Repeater ID="rpt_blogs" runat="server">
                    <ItemTemplate>
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                            <div class="article bg-w">
                                <asp:LinkButton ID="btn_image_news" runat="server" CssClass="image" CommandName="GO">
                                    <div class="img" style="background-image: url(/assets/uploads/2014/12/bg-1.jpg);"
                                        id="div_image" runat="server">
                                    </div>
                                </asp:LinkButton>
                                <div class="article-category">
                                    <asp:Literal ID="ltl_tipologia_desc" runat="server"></asp:Literal>
                                </div>
                                <h3>
                                    <asp:LinkButton ID="btn_title_news" runat="server" CommandName="GO">
                                        <asp:Literal ID="ltl_titolo" runat="server"></asp:Literal>
                                    </asp:LinkButton>
                                </h3>
                                <div class="footer">
                                    <asp:Literal ID="ltl_data_news" runat="server"></asp:Literal></div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
            <div class="content-sidebar">
                <ul class="sidebar-list">
                    <li id="search-2" class="widget-container widget_search">
                        <h3 class="osLight sidebar-header">
                            <%=Lingua.CaricaLingua("lgl_blogs_cerca")%></h3>
                        <div role="search" id="searchform" class="searchform">
                            <div>
                                <label class="screen-reader-text" for="s">
                                    Search for:</label>
                                <input type="text" value="" name="s" id="s" />
                                <input type="submit" id="searchsubmit" value="Search" />
                            </div>
                        </div>
                    </li>
                    <li id="featured_properties_widget-4" class="widget-container featured_properties_sidebar">
                        <h3 class="osLight sidebar-header">
                            <%=Lingua.CaricaLingua("lgl_immobili_proprieta_evidenza")%></h3>
                        <imm:Immobili_Right ID="Immobili_Evidenza" runat="server" />
                    </li>
                    <li id="recent_properties_widget-3" class="widget-container recent_properties_sidebar">
                        <h3 class="osLight sidebar-header">
                            <%=Lingua.CaricaLingua("lgl_immobili_proprieta_ultime")%></h3>
                        <imm:Immobili_Right ID="Immobili_Ultimi" runat="server" />
                    </li>
                    <li id="featured_agents_widget-4" class="widget-container featured_agents_sidebar">
                        <h3 class="osLight sidebar-header">
                            Our Agents</h3>
                        <div class="agentsWidget">
                            <ul class="agentsList">
                                <li><a href="../agents/antony-iglesias/index.html">
                                    <div class="image">
                                        <img src="/assets/uploads/2014/12/avatar-4.png" alt="Our Agents" /></div>
                                    <div class="info text-nowrap">
                                        <div class="name">
                                            Antony Iglesias</div>
                                        <div class="title">
                                            Houses and lands</div>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </a></li>
                                <li><a href="../agents/rust-cohle/index.html">
                                    <div class="image">
                                        <img src="/assets/uploads/2014/12/avatar-3.png" alt="Our Agents" /></div>
                                    <div class="info text-nowrap">
                                        <div class="name">
                                            Rust Cohle</div>
                                        <div class="title">
                                            Apartment rentals</div>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </a></li>
                                <li><a href="../agents/jane-smith/index.html">
                                    <div class="image">
                                        <img src="/assets/uploads/2014/12/avatar-2.png" alt="Our Agents" /></div>
                                    <div class="info text-nowrap">
                                        <div class="name">
                                            Jane Smith</div>
                                        <div class="title">
                                            Lands and apartments</div>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
