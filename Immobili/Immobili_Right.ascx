<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="Immobili_Right.ascx.vb"
    Inherits="Immobiliare_Web.Immobili_Right" %>
<div class="propsWidget">
    <ul class="propList">
        <asp:Repeater ID="rpt_immobili" runat="server">
            <ItemTemplate>
                <li>
                    <asp:Hyperlink ID="lnk_immobile" runat="server" CommandName="GO">
                        <div class="image">
                            <div class="featured-label" id="div_in_evidenza" runat="server">
                                <div class="featured-label-left">
                                </div>
                                <div class="featured-label-content">
                                    <span class="fa fa-star"></span>
                                </div>
                                <div class="featured-label-right">
                                </div>
                                <div class="clearfix">
                                </div>
                            </div>
                            <asp:Image ID="img_immagine" runat="server" />
                        </div>
                        <div class="info text-nowrap">
                            <div class="name">
                                <asp:Literal ID="ltl_annuncio" runat="server"></asp:Literal></div>
                            <div class="address">
                                <asp:Literal ID="ltl_indirizzo" runat="server"></asp:Literal></div>
                            <div class="price">
                                <asp:Literal ID="ltl_prezzo" runat="server"></asp:Literal> 
                                <span class="badge"><asp:Literal ID="ltl_tipo_annuncio" runat="server"></asp:Literal></span></div>
                        </div>
                        <div class="clearfix">
                        </div>
                    </asp:Hyperlink> 
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>
</div>
