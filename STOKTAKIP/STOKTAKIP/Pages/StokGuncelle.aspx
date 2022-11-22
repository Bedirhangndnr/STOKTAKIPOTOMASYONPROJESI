<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="StokGuncelle.aspx.cs" Inherits="STOKTAKIP.StokGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
        width: 156px;
    }

        .auto-style3 {
            width: 156px;
            height: 112px;
        }

        .auto-style4 {
            height: 112px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;" class="tblForm">

        <tr>
            <td class="auto-style2">Ürün Kodu</td>
            <td>
                <asp:TextBox ID="txtbx_UrunKodu" runat="server" ClientIDMode="Static" Width="300px" required data-parsley-no-focus data-parsley-error-message="Please enter a message."></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td class="auto-style2" id="lbl_degisenUrunMiktari">
                <asp:Label ID="lbl_degisenUrunMiktari" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtbx_Adet" runat="server" ClientIDMode="Static" Width="300px" required data-parsley-no-focus data-parsley-error-message="Please enter a message."></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="btn_Guncele" OnClientClick="ClearTB()" Text="Güncelle" CssClass="btn btn-success" runat="server" OnCommand="btn_Guncele_Command" CommandArgument='<%# Eval("Yemekid") %>' />
                <a href="Ekle.aspx" class="btn btn-primary">Ürün Ekle</a>
                <br />
                <br />
                <asp:Label ID="lbl_BasariliYadaDegil" runat="server" Visible="False"></asp:Label>
                <br />

    </table>




</asp:Content>
