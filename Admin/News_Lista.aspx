﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Start/Immobiliare.Master"
    CodeBehind="News_Lista.aspx.vb" Inherits="Immobiliare_Web.News_Lista" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row row_padding_top">
        <div class="col-md-12 table-responsive">
            <telerik:RadGrid ID="RGNews" AutoGenerateColumns="False" CssClass="" runat="server"
                ShowFooter="false" AllowPaging="True" AllowSorting="True" GridLines="None" PageSize="25"
                Width="100%" AllowMultiRowSelection="true" Skin="MyCustomSkin" EnableEmbeddedSkins="false"
                AllowFilteringByColumn="true" Culture="it-IT">
                <GroupingSettings CaseSensitive="false" />
                <PagerStyle Mode="NextPrevAndNumeric" CssClass=""></PagerStyle>
                <HeaderStyle CssClass=""></HeaderStyle>
                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                <AlternatingItemStyle CssClass="" HorizontalAlign="Left"></AlternatingItemStyle>
                <FilterItemStyle HorizontalAlign="Left" />
                <MasterTableView ShowFooter="false" Width="100%" DataKeyNames="news_key" AllowMultiColumnSorting="True">
                    <Columns>
                        <telerik:GridTemplateColumn UniqueName="TemplateColumnGo" SortExpression="" InitializeTemplatesFirst="false"
                            HeaderStyle-Width="1%" AllowFiltering="false" ItemStyle-Wrap="false">
                            <ItemTemplate>
                                <asp:LinkButton ID="btn_scheda" runat="server" CssClass="btn btn-sm btn-icon btn-flat btn-default"
                                    data-toggle="tooltip" data-original-title="Visualizza scheda" CommandName="SCHEDA">
                                    <i class="icon icon-eye" aria-hidden="true"></i>
                                </asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                            <HeaderTemplate>
                                <asp:LinkButton ID="btn_add" runat="server" CssClass="btn btn-sm btn-icon btn-flat btn-default"
                                    data-toggle="tooltip" data-original-title="Nuova news" CommandName="NUOVO">
                                    <i class="icon icon-plus" aria-hidden="true"></i>
                                </asp:LinkButton>
                            </HeaderTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn SortExpression="immagine" UniqueName="immagine" HeaderText="Immagine"
                            DataField="immagine" HeaderStyle-Width="15%" AllowFiltering="false">
                            <ItemTemplate>
                                <asp:Image ID="img_immagine" runat="server" Width="100" />
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn SortExpression="news_data" UniqueName="news_data" HeaderText="Data"
                            DataField="news_data" HeaderStyle-Width="15%" AllowFiltering="false">
                            <ItemTemplate>
                                <asp:Label ID="lbl_news_data" runat="server"></asp:Label>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn SortExpression="attiva" UniqueName="attiva" HeaderText="Stato"
                            DataField="attiva" HeaderStyle-Width="15%" AllowFiltering="false">
                            <ItemTemplate>
                                <asp:Label ID="lbl_attiva" runat="server"></asp:Label>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn SortExpression="news_titolo" UniqueName="news_titolo"
                            HeaderText="Titolo" DataField="news_titolo" HeaderStyle-Width="30%" AllowFiltering="true"
                            ShowFilterIcon="false" FilterControlWidth="150px" AutoPostBackOnFilter="true"
                            CurrentFilterFunction="Contains" />
                    </Columns>
                </MasterTableView>
                <ClientSettings EnableRowHoverStyle="true">
                    <Selecting AllowRowSelect="false" />
                </ClientSettings>
            </telerik:RadGrid>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
