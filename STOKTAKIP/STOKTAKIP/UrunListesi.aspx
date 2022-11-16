<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UrunListesi.aspx.cs" Inherits="STOKTAKIP.UrunListesi" %>

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
    <div class="wrap">
        <div class="search">
            <asp:TextBox runat="server" ID="txtbx_SrcBtn" placeholder="Ürün adı ara" CssClass="searchTerm" />
            <asp:Button ID="btn_Ara" Text="Ara" CssClass="btn btn-success" runat="server" OnCommand="btn_Ara_Command" />

        </div>
    </div>
    <div class="yemek-listesi">

        <asp:DataList ID="DataList1" runat="server" Width="100%">
            <HeaderTemplate>
                <table style="width: 100%;" class="table">
                    <tr>
                        <td class="col-md-2"><strong style="font-size: 22px">Ürün adı</strong>
                        </td>
                        <td class="col-md-3"><strong style="font-size: 22px">Ürün Adedi</strong>
                        </td>
                        <td class="col-md-3"><strong style="font-size: 22px">Ürün Kodu</strong>
                        </td>
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
                        <td class="col-md-3"><strong>
                            <asp:Label ID="lblYemekIsım" runat="server" CssClass="auto-style4" Text='<%# Eval("urun_sayisi") %>'></asp:Label>
                        </strong></td>
                        <td class="col-md-3"><strong>
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text='<%# Eval("urun_kodu") %>'></asp:Label>
                        </strong></td>
                        <td class="auto-style3">
                            <asp:LinkButton Style="margin-right: 10px; margin-top: 7px; margin-bottom: 7px" class="btn btn-danger" Text="sil" runat="server" OnCommand="Unnamed_Command" CommandArgument='<%# Eval("id") %>' />
                            <a style="margin-right: 10px; margin-top: 7px; margin-bottom: 7px" class="btn btn-primary" href="Duzenle.aspx?id=<%#Eval("id") %>" style="margin-block: 10px">Düzenle
                            </a>
                        </td>
                    </tr>

                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>



    <asp:Panel ID="Panel4" runat="server">
    </asp:Panel>
</asp:Content>
