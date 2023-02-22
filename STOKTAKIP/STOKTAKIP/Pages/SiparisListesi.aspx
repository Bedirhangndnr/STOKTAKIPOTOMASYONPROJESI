<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="SiparisListesi.aspx.cs" Inherits="STOKTAKIP.Pages.SiparisListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        .secenekler {
            border: 5px outset red;
            background-color: lightblue;
            text-align: center;
        }

        .auto-style2 {
            width: 100%;
        }

        .yemek-listesi {
            height: 300px !important;
            overflow: scroll;
        }

        .auto-style3 {
            text-align: right;
        }

        .auto-style4 {
            font-size: x-large;
        }

        .auto-style5 {
            width: 287px;
            float: left;
            text-align: left;
        }

        .auto-style6 {
            width: 48px;
        }

        .auto-style7 {
            width: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="yemek-listesi">

        <asp:DataList ID="DataList1" runat="server" Width="100%" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <HeaderTemplate>
                <table style="width: 100%;" class="table">
                    <tr>
                        <td class="col-md-2"><strong style="font-size: 22px">Adı</strong>
                        </td>
                        <td class="col-md-2"><strong style="font-size: 22px">Durumu</strong>
                        </td>
                        <td class="col-md-2"><strong style="font-size: 22px">Sipariş Tarihi</strong>
                        <td class="col-md-2"><strong style="font-size: 22px">Teslim Tarihi</strong>
                            <td>&nbsp;</td>
                        </td>

                    </tr>
                </table>
            </HeaderTemplate>
            <ItemTemplate>
                <table class="auto-style2">
                    <tr style="border-bottom: 2px solid">
                        <td class="col-md-2"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("urun_adi") %>'></asp:Label>
                        </strong></td>
                        <td class="col-md-2"><strong>
                            <asp:Label ID="lblYemekIsım" runat="server" CssClass="auto-style4" Text='<%# Eval("siparis_durumu") %>'></asp:Label>
                        </strong></td>
                        <td class="col-md-2"><strong>
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text='<%# Eval("siparis_tarihi") %>'></asp:Label>
                        </strong></td>
                        <td class="col-md-2"><strong>
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text='<%# Eval("siparis_teslim_tarihi") %>'></asp:Label>
                        </strong></td>
                        <td class="auto-style3">
                            <asp:Button Style="margin-right: 100px; margin-top: 7px; margin-bottom: 7px; width:200px;" class="btn btn-danger" Text="sil" runat="server" OnCommand="Unnamed_Command" CommandArgument='<%# Eval("id") %>' OnClick="Unnamed1_Click" />
                        </td>
                    </tr>

                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>

</asp:Content>
