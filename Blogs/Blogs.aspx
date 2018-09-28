<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Start/Immobiliare.Master"
    CodeBehind="Blogs.aspx.vb" Inherits="Immobiliare_Web.Blogs" %>

<%@ Import Namespace="Immobiliare_Servizi.Lingua" %>

<%@ Register src="../Immobili/Immobili_Right.ascx" tagname="Immobili_Right" tagprefix="imm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
            <h2 class="pageHeader">
                <%=Lingua.CaricaLingua("lgl_blogs_ultimi_post")%></h2>
            <div class="row">
                <asp:Repeater ID="rpt_blogs" runat="server">
                    <ItemTemplate>
                        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8" id="div_col" runat="server">
                            <div class="post-290 post type-post status-publish format-standard has-post-thumbnail hentry category-architecture tag-modern">
                                <div class="article bg-w">
                                    <asp:HyperLink ID="btn_image_news" runat="server" CssClass="image" CommandName="GO">
                                        <div class="img" style="background-image: url(/assets/uploads/2014/12/bg-1.jpg);" id="div_image" runat="server">
                                        </div>
                                    </asp:HyperLink>
                                    <div class="article-category">
                                        <asp:HyperLink ID="btn_tipologia" runat="server" CssClass="text-green" CommandName="CAT" 
                                            ToolTip="View all posts in Architecture">
                                            <asp:Literal ID="ltl_tipologia_desc" runat="server"></asp:Literal>
                                        </asp:HyperLink> 
                                    </div>
                                    <h3>
                                        <asp:HyperLink ID="btn_title_news" runat="server" CommandName="GO">
                                            <asp:Literal ID="ltl_titolo" runat="server"></asp:Literal>
                                        </asp:HyperLink>
                                    </h3>
                                    <p>
                                        <asp:Literal ID="ltl_descrizione" runat="server"></asp:Literal></p>
                                    <div class="footer">
                                        <asp:Literal ID="ltl_data_news" runat="server"></asp:Literal></div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="blog-pagination">
                <div class="pull-left">
                </div>
                <div class="pull-right">
                </div>
                <div class="clearfix">
                </div>
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
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
