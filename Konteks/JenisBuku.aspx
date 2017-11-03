<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="JenisBuku.aspx.cs" Inherits="Konteks_JenisBuku" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 182px;
        }
        .auto-style2 {
            width: 108px;
        }
        .auto-style3 {
            width: 20px;
        }
        .auto-style4 {
            width: 179px;
        }
        .auto-style5 {
            width: 45%;
        }
        .auto-style6 {
            width: 178px;
        }
        .auto-style7 {
            height: 48px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentutama" Runat="Server">

    <table class="auto-style5">
        <tr>
            <td colspan="3" style="text-align:center;" class="auto-style7"><u>DATA JENIS BUKU</u></td>
        </tr>
        <tr>
            <td class="auto-style2">Cari Data</td>
            <td class="auto-style3">&nbsp;:&nbsp;</td>
            <td>
                <input id="Text3" class="auto-style6" type="text" /></td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="3" style="text-align:center">
                <asp:GridView ID="GridView1" runat="server" Width="432px">
                    </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Kode Jenis</td>
            <td class="auto-style3">&nbsp;:&nbsp;</td>
            <td>
                <input id="Text1" class="auto-style4" type="text" /></td>
        </tr>
        <tr>
            <td class="auto-style2">Nama Jenis</td>
            <td class="auto-style3">&nbsp;:&nbsp;</td>
            <td>
                <input id="Text2" class="auto-style6" type="text" /></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button Text="SIMPAN" ID="Button1" runat="server" />
                <asp:Button Text="UBAH" ID="Button2" runat="server" />
                <asp:Button Text="HAPUS" ID="Button3" runat="server" />
                <asp:Button Text="BATAL" ID="Button4" runat="server" />
            </td>
        </tr>
    </table>

</asp:Content>

