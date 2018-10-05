<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Start/Immobiliare.Master"
    CodeBehind="Immobili_Lista.aspx.vb" Inherits="Immobiliare_Web.Immobili_Lista" %>

<%@ Register Src="../Controls/rTextBox.ascx" TagName="rTextBox" TagPrefix="cc" %>
<%@ Register Src="../Controls/rDropDown.ascx" TagName="rDropDown" TagPrefix="cc" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row row_padding_top">
        <div class="col-md-12">
            <div class="col-md-3">
                <cc:rTextBox ID="txt_titolo" runat="server" Label="Titolo" Form_Vertical="true"
                    Icon="" AutoPostBack="false" />
            </div>     
            <div class="col-md-3">
                <cc:rTextBox ID="txt_codice_riferimento" runat="server" Label="Codice riferimento" Form_Vertical="true"
                    Icon="" AutoPostBack="false" />
            </div>     
            <div class="col-md-3">
                <cc:rDropDown ID="ddl_tab_comune_cod" runat="server" AutoPostBack="false" Form_Vertical="true"
                    Label="Citta" Placeholder="Seleziona..." />
            </div>     
            <div class="col-md-3">
                <cc:rDropDown ID="ddl_tab_categoria_cod" runat="server" AutoPostBack="false" Form_Vertical="true"
                    Label="Categoria annuncio" Placeholder="Seleziona..." />
            </div>     
        </div> 
        <div class="col-md-12">
            <div class="col-md-3">
                <cc:rDropDown ID="ddl_flag" runat="server" AutoPostBack="false" Form_Vertical="true"
                    Label="Flag home page" Placeholder="Seleziona..." />
            </div>     
            <div class="col-md-8">
            </div> 
            <div class="col-md-1">
                <asp:LinkButton ID="btn_cerca" runat="server" CssClass="btn btn-sm btn-flat btn-default"
                    data-toggle="tooltip" data-original-title="Cerca tra gli immobili" style="margin-top:25px;">
                    Filtra&nbsp;&nbsp;<i class="icon icon-magnifier" aria-hidden="true"></i>
                </asp:LinkButton>
            </div> 

        </div> 
        <div class="col-md-12 table-responsive">
            <telerik:RadGrid ID="RGImmobili" AutoGenerateColumns="False" CssClass="" runat="server"
                ShowFooter="false" AllowPaging="True" AllowSorting="True" GridLines="None" PageSize="25"
                Width="100%" AllowMultiRowSelection="true" Skin="MyCustomSkin" EnableEmbeddedSkins="false"
                AllowFilteringByColumn="true" Culture="it-IT">
                <GroupingSettings CaseSensitive="false" />
                <PagerStyle Mode="NextPrevAndNumeric" CssClass=""></PagerStyle>
                <HeaderStyle CssClass=""></HeaderStyle>
                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                <AlternatingItemStyle CssClass="" HorizontalAlign="Left"></AlternatingItemStyle>
                <FilterItemStyle HorizontalAlign="Left" />
                <MasterTableView ShowFooter="false" Width="100%" DataKeyNames="immobile_key" AllowMultiColumnSorting="True">
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
                                    data-toggle="tooltip" data-original-title="Nuova immobile" CommandName="NUOVO">
                                    <i class="icon icon-plus" aria-hidden="true"></i>
                                </asp:LinkButton>
                            </HeaderTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridBoundColumn SortExpression="codice_riferimento" UniqueName="codice_riferimento"
                            HeaderText="Codice" DataField="codice_riferimento" HeaderStyle-Width="10%" AllowFiltering="true"
                            ShowFilterIcon="false" FilterControlWidth="150px" AutoPostBackOnFilter="true"
                            CurrentFilterFunction="Contains" />
                        <telerik:GridTemplateColumn SortExpression="immagine" UniqueName="immagine" HeaderText="Immagine"
                            DataField="immagine" HeaderStyle-Width="15%" AllowFiltering="false">
                            <ItemTemplate>
                                <asp:Image ID="img_immagine" runat="server" Width="100" />
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn SortExpression="data_annuncio" UniqueName="data_annuncio" HeaderText="Data"
                            DataField="data_annuncio" HeaderStyle-Width="15%" AllowFiltering="false">
                            <ItemTemplate>
                                <asp:Label ID="lbl_data_annuncio" runat="server"></asp:Label>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn SortExpression="pubblicata" UniqueName="pubblicata" HeaderText="Stato"
                            DataField="pubblicata" HeaderStyle-Width="15%" AllowFiltering="false">
                            <ItemTemplate>
                                <asp:Label ID="lbl_pubblicata" runat="server"></asp:Label>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
                        <telerik:GridTemplateColumn SortExpression="immobile_titolo" UniqueName="immobile_titolo" HeaderText="Titolo"
                            DataField="immobile_titolo" HeaderStyle-Width="30%" AllowFiltering="false">
                            <ItemTemplate>
                                <asp:Label ID="lbl_immobile_titolo" runat="server"></asp:Label>
                            </ItemTemplate>
                        </telerik:GridTemplateColumn>
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
