<%@ Page Title="" Language="C#" MasterPageFile="~/MKatalogOnline.master" AutoEventWireup="true" CodeFile="KeranjangBelanja.aspx.cs" Inherits="DataBelanja_KerangjangBelanja" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 250px;
        }
        .auto-style3 {
            width: 11px;
        }
        .auto-style4 {
            width: 66%;
        }
        .auto-style5 {
            width: 203px;
        }
        .auto-style6 {
            width: 7px;
        }
        .auto-style7 {
            width: 203px;
            height: 23px;
        }
        .auto-style8 {
            width: 7px;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="auto-style4">
        <tbody class="auto-style1">
        <tr>
            <td colspan="3"><h4><u>KERANJANG BELANJA</u></h4></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="gvKeranjang" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False"
                    OnSelectedIndexChanged="gvKeranjang_SelectedIndexChanged" EnableModelValidation="True" Width="535px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField HeaderText="No"></asp:BoundField>
                        <asp:BoundField DataField="PKdBrg" HeaderText="Kode Barang"></asp:BoundField>
                        <asp:BoundField DataField="PNmBrg" HeaderText="Nama Barang"></asp:BoundField>
                        <asp:BoundField DataField="PHrgBrg" DataFormatString="{0:C}" HeaderText="Harga Barang" />
                        <asp:BoundField DataField="PJmlBrg" HeaderText="Jumlah"></asp:BoundField>
                        <asp:BoundField DataField="PSubtotal" DataFormatString="{0:C} " HeaderText="Jumlah Harga"></asp:BoundField>
                        <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                        <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
                    </Columns>
                    
                    
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    
                    
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Jumlah Item</td>
            <td class="auto-style3">:</td>
            <td>
                <asp:Label ID="lblJumlahItem" runat="server" Text="TAMPIL JUMLAH ITEM"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Total Bayar</td>
            <td class="auto-style3">:</td>
            <td>
                <asp:Label ID="lblTotalBayar" runat="server" Text="TAMPIL TOTAL BAYAR"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="btnKonfirmasi" runat="server" Text="KONFIRMASI PEMBELIAN" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Panel ID="Panel1" runat="server">
                    <table style="width:100%;">
                        <tr>
                            <td colspan="3"><h4><u>UBAH JUMLAH BARANG</u></h4></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">Nama Barang</td>
                            <td class="auto-style8">:</td>
                            <td class="auto-style9">
                                <asp:Label ID="lblNmBrg" runat="server" Text="TAMPIL NAMA BARANG"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">Jumlah Barang</td>
                            <td class="auto-style6">:</td>
                            <td>
                                <asp:DropDownList ID="ddJmlBrg" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:Button ID="btnUbah" runat="server" Text="UBAH JUMLAH BARANG" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>

