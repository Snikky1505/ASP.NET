<%@ Page Title="" Language="C#" MasterPageFile="~/MKatalogOnline.master" AutoEventWireup="true" CodeFile="TambahPromo.aspx.cs" Inherits="DataPromo_Tambahpromo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2 {
            width: 132px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="3"><h4><u>TAMBAH DATA BARANG PROMO</u></h4></td>
        </tr>
        <tr>
            <td class="auto-style2">Cari Nama Barang</td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="txtCariBarang" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="gvBarang" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="4" 
                    EmptyDataText="Data Tidak Ada" PageSize="5" ForeColor="#333333" GridLines="None" 
                    EnableModelValidation="True" OnSelectedIndexChanged="gvBarang_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="PKdBrg" HeaderText="Kode Barang" />
                        <asp:BoundField DataField="PNmBrg" HeaderText="Nama Barang" />
                        <asp:BoundField DataField="PHrgBrg" HeaderText="Harga Barang" />
                        <asp:CommandField SelectText="Pilih" ShowSelectButton="True" />
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
            <td class="auto-style2">Kode Barang</td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="txtKdBarang" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Nama Barang</td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="txtNmBarang" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Harga Barang</td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="txtHrgBarang" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Info Promo</td>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="txtInfoPromo" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Tidak Boleh Kosong" ControlToValidate="txtInfoPromo" ValidationGroup="PRO"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Harga Promo</td>
            <td>&nbsp;</td>
            <td>Rp.<asp:TextBox ID="txtHrgPromo" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Tidak Boleh Kosong" ControlToValidate="txtHrgPromo" Display="Dynamic" ValidationGroup="PRO"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Masukkan angka minimal 7 digit" ControlToValidate="txtHrgPromo" Display="Dynamic" ValidationExpression="^[0-9]{1,7}$" ValidationGroup="PRO"></asp:RegularExpressionValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Harga Promo Lebih Besar dari Harga Barang" ControlToCompare="txtHrgBarang" ControlToValidate="txtHrgPromo" Display="Dynamic" Operator="LessThanEqual" Type="Integer" ValidationGroup="PRO"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="btnSimpan" runat="server" Text="SIMPAN" OnClick="btnSimpan_Click" />
                <asp:Button ID="btnBatal" runat="server" Text="BATAL" OnClick="btnBatal_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>

