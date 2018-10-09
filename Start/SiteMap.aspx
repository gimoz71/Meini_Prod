<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SiteMap.aspx.vb" Inherits="Immobiliare_Web.SiteMap" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="50%">
            <tr>
                <td>
                    <asp:Button ID="btnXML" Text="Genera sitemap.xml" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <a href="index.aspx">Index</a><br />
                    <div style="padding-left: 20px;">
                        <a href="/Start/About.aspx">Chi Siamo</a><br />
                        <a href="/Immobili/Ricerca.aspx">Ricerca</a><br />
                        <a href="/Start/Contatti.aspx">Contattaci</a><br />
                        <a href="/Start/Privacy.aspx">Termini</a><br />
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    Prodotti
                    <ul>
                        <asp:Repeater ID="rpt_imm" runat="server">
                            <ItemTemplate>
                                <li>
                                    <asp:HyperLink ID="lnk_app" runat="server"></asp:HyperLink></li>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
