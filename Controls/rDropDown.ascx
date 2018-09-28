<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="rDropDown.ascx.vb" Inherits="Immobiliare_Web.rDropDown" %>

<div class="form-group" id="div_form" runat="server" style="margin-bottom:0px!Important">
    <label class="control-label col-md-2" style="white-space:nowrap;" id="label_control" runat="server">
        <asp:Literal ID="ltl_label" runat="server"></asp:Literal></label>
    <div class="col-md-10" id="div_col" runat="server">
        <div class="" id="div_icon" runat="server">
            <span class="input-group-addon" id="span_icon" runat="server" visible="false"><i class="" id="i_icon"
                runat="server"></i></span>
            <asp:DropDownList ID="ddl_value" runat="server" CssClass="form-control" placeholder=""></asp:DropDownList>
        </div>
        <span class="help-block">
            <asp:Literal ID="ltl_help" runat="server"></asp:Literal></span> 
    </div> 
</div>

