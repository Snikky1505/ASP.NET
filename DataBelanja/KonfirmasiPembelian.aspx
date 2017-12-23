<%@ Page Title="" Language="C#" MasterPageFile="~/MKatalogOnline.master" AutoEventWireup="true" CodeFile="KonfirmasiPembelian.aspx.cs" Inherits="DataBelanja_KonfirmasiPembelian" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 55%;
        }
        .auto-style7 {
            height: 23px;
            width: 17%;
            text-align: center;
        }
        .auto-style8 {
            height: 23px;
            width: 58px;
            text-align: center;
        }
        .auto-style13 {
            width: 17%;
            text-align: center;
        }
        .auto-style17 {
            width: 58px;
            text-align: center;
        }
        .auto-style18 {
            height: 23px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="auto-style4">
        <tr>
            <td colspan="3"><h4 class="auto-style1"><u>KONFIRMASI PEMBELIAN</u></h4></td>
        </tr>
        <tr>
            <td colspan="3"><h4>
                <div class="auto-style1">
                    <u>DATA PEMBELI</div>
                <asp:DetailsView ID="dvPembeli" runat="server" Height="50px" Width="210px" AutoGenerateRows="False" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="PUserName" HeaderText="Username" />
                    <asp:BoundField DataField="PNama" HeaderText="Nama" />
                    <asp:BoundField DataField="PNoTelp" HeaderText="No Telepon" />
                    <asp:BoundField DataField="PNoKartuKredit" HeaderText="Kartu Kredit" />
                </Fields>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                </asp:DetailsView>
                </u></h4></td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style1">Apakah Anda Yakin ingin membeli barang dengan rincian sebagai berikut</td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style1">
                <asp:GridView ID="gvKeranjang" runat="server" AutoGenerateColumns="False" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField HeaderText="No" />
                        <asp:BoundField DataField="PKdBrg" HeaderText="Kode Barang" />
                        <asp:BoundField DataField="PNmBrg" HeaderText="Nama Barang" />
                        <asp:BoundField DataField="PHrgBrg" HeaderText="Harga Barang" />
                        <asp:BoundField DataField="PJmlBrg" HeaderText="Jumlah" />
                        <asp:BoundField DataField="PSubtotal" HeaderText="Jumlah Harga" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Jumlah Item</td>
            <td class="auto-style18">:</td>
            <td class="auto-style7">
                <asp:Label ID="lblJmlItem" runat="server" Text="TAMPIL JUMLAH ITEM"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">Total Bayar</td>
            <td class="auto-style1">:</td>
            <td class="auto-style13">
                <asp:Label ID="lblTotalBayar" runat="server" Text="TAMPIL TOTAL BAYAR"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style1">
                <asp:Button ID="btnYaSimpan" runat="server" Text="Ya, Tagih dan Kirim Barangnya" />
                <asp:Button ID="btnTidak" runat="server" Text="Tidak, Saya Ingin Batal" />
                <asp:Button ID="btnBelanjaLagi" runat="server" Text="Saya Masih Ingin Mengubah Daftar Belanja" />
            </td>
        </tr>
    </table>
</asp:Content>

