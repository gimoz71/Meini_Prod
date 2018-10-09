<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Start/Immobiliare.Master"
    CodeBehind="Poi_Lista.aspx.vb" Inherits="Immobiliare_Web.Poi_Lista" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row row_padding_top">
        <div class="col-md-12">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active" id="li_tab_1" runat="server"><a href="#<%=tab_1.ClientId%>" data-toggle="tab">POI</a></li>
                    <li id="li_tab_2" runat="server"><a href="#<%=tab_2.ClientId%>" data-toggle="tab">Tipologia</a></li>
                </ul>
                <div class="tab-content">
                    <!-- Tabs 1-->
                    <div class="tab-pane active" id="tab_1" runat="server">
                        <div class="row row_padding_top" style="padding-top:20px;">
                            <div class="col-md-12 table-responsive">
                                <telerik:RadGrid ID="RGPoi" AutoGenerateColumns="False" CssClass="" runat="server"
                                    ShowFooter="false" AllowPaging="True" AllowSorting="True" GridLines="None" PageSize="25"
                                    Width="100%" AllowMultiRowSelection="true" Skin="MyCustomSkin" EnableEmbeddedSkins="false"
                                    AllowFilteringByColumn="true" Culture="it-IT">
                                    <GroupingSettings CaseSensitive="false" />
                                    <PagerStyle Mode="NextPrevAndNumeric" CssClass=""></PagerStyle>
                                    <HeaderStyle CssClass=""></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                    <AlternatingItemStyle CssClass="" HorizontalAlign="Left"></AlternatingItemStyle>
                                    <FilterItemStyle HorizontalAlign="Left" />
                                    <MasterTableView ShowFooter="false" Width="100%" DataKeyNames="poi_key" AllowMultiColumnSorting="True">
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
                                                        data-toggle="tooltip" data-original-title="Nuovo banner" CommandName="NUOVO">
                                                        <i class="icon icon-plus" aria-hidden="true"></i>
                                                    </asp:LinkButton>
                                                </HeaderTemplate>
                                            </telerik:GridTemplateColumn>
                                            <telerik:GridBoundColumn SortExpression="poitype_titolo" UniqueName="poitype_titolo"
                                                HeaderText="Titolo" DataField="poitype_titolo" HeaderStyle-Width="40%" AllowFiltering="true"
                                                ShowFilterIcon="false" FilterControlWidth="150px" AutoPostBackOnFilter="true"
                                                CurrentFilterFunction="Contains" />
                                            <telerik:GridBoundColumn SortExpression="indirizzo" UniqueName="indirizzo"
                                                HeaderText="Indirizzo" DataField="indirizzo" HeaderStyle-Width="70%" AllowFiltering="true"
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

                    </div> 
                    <!-- Tabs 2-->
                    <div class="tab-pane" id="tab_2" runat="server">
                        <div class="row row_padding_top" style="padding-top:20px;">
                            <div class="col-md-12 table-responsive">
                                <telerik:RadGrid ID="RGPoitype" AutoGenerateColumns="False" CssClass="" runat="server"
                                    ShowFooter="false" AllowPaging="True" AllowSorting="True" GridLines="None" PageSize="25"
                                    Width="100%" AllowMultiRowSelection="true" Skin="MyCustomSkin" EnableEmbeddedSkins="false"
                                    AllowFilteringByColumn="true" Culture="it-IT">
                                    <GroupingSettings CaseSensitive="false" />
                                    <PagerStyle Mode="NextPrevAndNumeric" CssClass=""></PagerStyle>
                                    <HeaderStyle CssClass=""></HeaderStyle>
                                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                    <AlternatingItemStyle CssClass="" HorizontalAlign="Left"></AlternatingItemStyle>
                                    <FilterItemStyle HorizontalAlign="Left" />
                                    <MasterTableView ShowFooter="false" Width="100%" DataKeyNames="poi_type_key" AllowMultiColumnSorting="True">
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
                                                        data-toggle="tooltip" data-original-title="Nuovo banner" CommandName="NUOVO">
                                                        <i class="icon icon-plus" aria-hidden="true"></i>
                                                    </asp:LinkButton>
                                                </HeaderTemplate>
                                            </telerik:GridTemplateColumn>
                                            <telerik:GridTemplateColumn SortExpression="immagine" UniqueName="immagine" HeaderText="Icona"
                                                DataField="immagine" HeaderStyle-Width="15%" AllowFiltering="false">
                                                <ItemTemplate>
                                                    <asp:Image ID="img_immagine" runat="server" Height="25" />
                                                </ItemTemplate>
                                            </telerik:GridTemplateColumn>
                                            <telerik:GridTemplateColumn SortExpression="attivo" UniqueName="attivo" HeaderText="Stato"
                                                DataField="attivo" HeaderStyle-Width="15%" AllowFiltering="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_attivo" runat="server"></asp:Label>
                                                </ItemTemplate>
                                            </telerik:GridTemplateColumn>
                                            <telerik:GridBoundColumn SortExpression="poitype_titolo" UniqueName="poitype_titolo"
                                                HeaderText="Titolo" DataField="poitype_titolo" HeaderStyle-Width="30%" AllowFiltering="true"
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
                    </div>
                </div>
            </div> 
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
