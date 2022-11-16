<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Duzenle.aspx.cs" Inherits="STOKTAKIP.Duzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 96px;
        }

        .auto-style3 {
            width: 96px;
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
                <asp:Label ID="lbl_UrunKodu" runat="server" Text="Label" ClientIDMode="Static" Width="300px" required data-parsley-no-focus data-parsley-error-message="Please enter a message."></asp:Label>

            </td>
        </tr>
        <tr>
            <td class="auto-style2">Ürün Adı</td>
            <td>
                <asp:TextBox ID="txtbx_UrunAdi" runat="server" ClientIDMode="Static" Width="300px" required data-parsley-no-focus data-parsley-error-message="Please enter a message."></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td class="auto-style2">Ürün Miktarı</td>
            <td>
                <asp:TextBox ID="txtbx_Adet" runat="server" ClientIDMode="Static" Width="300px" required data-parsley-no-focus data-parsley-error-message="Please enter a message."></asp:TextBox>

            </td>
        </tr>

        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4">
                <%--################################onclientclick özelliğine confirm(alert('gerçekten gundellemek istediğinize eminmisiniz uyarısını ekleyemedim)) ###########################################################--%>
                <asp:Button ID="btn_sil" OnClientClick="ClearTB()" Text="Sil" CssClass="btn btn-danger" runat="server" OnCommand="btn_sil_Command" CommandArgument='<%# Eval("id") %>' />
                <asp:Button ID="btn_guncelle" OnClientClick="ClearTB()" Text="Guncelle" CssClass="btn btn-success" runat="server" OnCommand="btn_Guncele_Command" CommandArgument='<%# Eval("id") %>' />

                <br />
                <br />
                <asp:Label ID="lbl_BasariliYadaDegil" runat="server" Text="Label"></asp:Label>
                <br />

    </table>



    <script>
        function ClearTB() {
            document.getElementById("txtbx_EkleyenAd").value = document.getElementById("txtbx_EkleyenAd").value.replace(/^\s+/, '').replace(/\s+$/, '');
            document.getElementById("txtbx_EkleyenMail").value = document.getElementById("txtbx_EkleyenMail").value.replace(/^\s+/, '').replace(/\s+$/, '');
            document.getElementById("txtbxYemekAd").value = document.getElementById("txtbxYemekAd").value.replace(/^\s+/, '').replace(/\s+$/, '');
            document.getElementById("txtbxYemekMalzemeler").value = document.getElementById("txtbxYemekMalzemeler").value.replace(/^\s+/, '').replace(/\s+$/, '');
            document.getElementById("txtbxYemekTarif").value = document.getElementById("txtbxYemekTarif").value.replace(/^\s+/, '').replace(/\s+$/, '');
            document.getElementById("ddlKategoriler").value = document.getElementById("ddlKategoriler").value.replace(/^\s+/, '').replace(/\s+$/, '');
        }
    </script>
</asp:Content>
