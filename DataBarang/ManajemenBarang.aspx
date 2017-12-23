﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MKatalogOnline.master" AutoEventWireup="true" CodeFile="ManajemenBarang.aspx.cs" Inherits="DataBarang_ManajemenBarang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 52%;
            height: 263px;
        }
        .auto-style12 {
            width: 116px;
            height: 26px;
        }
        .auto-style13 {
            width: 116px;
        }
        .auto-style14 {
            width: 28px;
            height: 26px;
        }
        .auto-style15 {
            width: 28px;
        }
        .auto-style16 {
            width: 280px;
            height: 26px;
        }
        .auto-style17 {
            width: 280px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="server">
    <table class="auto-style3">
        <tr>
            <td colspan="3">
                <h4><u>MANAJEMEN DATA BARANG</u></h4></td>
        </tr>
        <tr>
            <td class="auto-style12">Cari Kategori</td>
            <td class="auto-style14"></td>
            <td class="auto-style16">
                <asp:DropDownList ID="ddCariKategori" runat="server" OnSelectedIndexChanged="ddCariKategori_SelectedIndexChanged">

                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Cari Nama Barang</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style17">
                <asp:TextBox ID="txtCariNmBarang" runat="server" AutoPostBack="True" OnTextChanged="txtCariNmBarang_TextChanged">></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="gvBarang" runat="server" AllowPaging="True" PageSize="5"
                    AutoGenerateColumns="False" 
                    DataKeyNames="PKdBrg,PIdKat,PGbrBrg" 
                    OnSelectedIndexChanged="gvBarang_SelectedIndexChanged"
                    OnPageIndexChanging="gvBarang_PageIndexChanging"
                    EmptyDataText="DATA BARANG TIDAK ADA" CellPadding="4" ForeColor="#333333" GridLines="None" EnableModelValidation="True" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="PGbrBrg" DataImageUrlFormatString="~/Gambar/Upload/{0}" HeaderText="Gambar">
                            <ControlStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="PNmBrg" HeaderText="Nama Barang" />
                        <asp:BoundField DataField="PHrgBrg" HeaderText="Harga Barang" />
                        <asp:BoundField DataField="PInfoBrg" HeaderText="Info Barang" />
                        <asp:BoundField DataField="PStokBrg" HeaderText="Stok" />
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
            <td class="auto-style13">Nama Kategori</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style17">
                <asp:DropDownList ID="ddNmKategori" runat="server"> 
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Kode Barang</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style17">
                <asp:TextBox ID="txtKdBarang" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Tidak Boleh Kosong" ControlToValidate="txtKdBarang" ValidationGroup="BRG"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Nama Barang</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style17">
                <asp:TextBox ID="txtNmBarang" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Tidak Boleh Kosong" ControlToValidate="txtNmBarang" ValidationGroup="BRG"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Harga Barang</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style17">Rp.<asp:TextBox ID="txtHrgBarang" runat="server" MaxLength="7"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Tidak Boleh Kosong" ControlToValidate="txtHrgBarang" Display="Dynamic" ValidationGroup="BRG"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Masukkan Angka, Maksimal 7 Digit" ControlToValidate="txtHrgBarang" Display="Dynamic" ValidationExpression="^[0-9]{1,7}$" ValidationGroup="BRG"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Info Barang</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style17">
                <asp:TextBox ID="txtInfoBarang" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Tidak Boleh Kosong" ControlToValidate="txtInfoBarang" ValidationGroup="BRG"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Gambar Barang</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style17">
                <asp:FileUpload ID="fuGbrBarang" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Stok Barang</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style17">
                <asp:TextBox ID="txtStok" runat="server" MaxLength="3" Width="62px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Masukkan Angka, Minimal 3 Digit" ControlToValidate="txtStok" Display="Dynamic" ValidationExpression="^[0-9]{1,3}$" ValidationGroup="BRG"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Tidak Boleh Kosong" ControlToValidate="txtStok" ValidationGroup="BRG"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="btnSimpan" runat="server" Text="SIMPAN" OnClick="btnSimpan_Click" ValidationGroup="BRG" />
                <asp:Button ID="btnUbah" runat="server" Text="UBAH"   OnClick="btnUbah_Click" ValidationGroup="BRG" />
                <asp:Button ID="btnHapus" runat="server" Text="HAPUS"  OnClick="btnHapus_Click" ValidationGroup="BRG" />
                <asp:Button ID="btnBatal" runat="server" Text="BATAL"  OnClick="btnBatal_Click" ValidationGroup="BRG" />
            </td>
        </tr>
    </table>
</asp:Content>

