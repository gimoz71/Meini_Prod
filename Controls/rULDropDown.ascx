<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="rULDropDown.ascx.vb" Inherits="Immobiliare_Web.rULDropDown" %>


<div class="form-group fg-inline" id="div_form" runat="server" style="width:100%;">
    <label style="white-space:nowrap;" id="label_control" runat="server">
        <asp:Literal ID="ltl_label" runat="server"></asp:Literal></label>
    <a href="javascript:void(0);" data-toggle="dropdown" class="btn btn-o btn-light-gray dropdown-toggle" style="width:100%;background-color:White;">
        <span class="dropdown-label">
            <asp:Literal ID="ltl_selected_text" runat="server"></asp:Literal>
            <asp:Literal ID="ltl_selected_value" runat="server" Visible="false"></asp:Literal>
        </span>&nbsp;&nbsp;&nbsp;<span class="caret" style="position: absolute;right: 10px;top: 40px;"></span>
    </a>
    <ul class="dropdown-menu dropdown-select" style="width:100%;" id="ul_lista" runat="server">
        <asp:Repeater ID="rpt_option" runat="server">
            <ItemTemplate>
                <li>
                    <asp:LinkButton ID="lnk_option" runat="server" CommandName="GO"></asp:LinkButton>
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>
    <span class="help-block hidden">
        <asp:Literal ID="ltl_help" runat="server"></asp:Literal></span>
</div>

