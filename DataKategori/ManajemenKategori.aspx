<%@ Page Title="" Language="C#" MasterPageFile="~/MKatalogOnline.master" AutoEventWireup="true" CodeFile="ManajemenKategori.aspx.cs" Inherits="DataKategori_ManajemenKategori" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            height: 42px;
            }
        .auto-style11 {
            width: 199px;
        }
        .auto-style13 {
            width: 199px;
            height: 30px;
        }
        .auto-style14 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 72%; height: 192px; margin-left: 0px;">
        <tr>
            
            <td class="auto-style7" colspan="3"><h4 style="width: 717px"><u>MANAJEMEN KATEGORI</u></h4></td>
            
        </tr>
        <tr>
            <td class="auto-style5">Cari Berdasarkan Nama Kategori</td>
            <td class="auto-style8" colspan="2">
                <asp:TextBox ID="txtCariNama" runat="server" AutoPostBack="True" style="margin-left: 0px" Width="342px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="3">
                <asp:GridView ID="gvKategori" runat="server" AllowPaging="True"
                    OnPageIndexChanging="gvKategori_PageIndexChanging" 
                    AutoGenerateColumns="False" EmptyDataText="GRID TIDAK ADA DATA!" PageSize="5" CellPadding="4" ForeColor="#333333" GridLines="None" EnableModelValidation="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField SelectText="Pilih" ShowSelectButton="True" />
                        <asp:BoundField DataField="PIdKat" HeaderText="IdKategori" />
                        <asp:BoundField DataField="PNmKat" HeaderText="Nama Kategori" />
                        <asp:BoundField DataField="PInfoKat" HeaderText="Info Kategori" />
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
            <td class="auto-style14">Id Kategori</td>
            <td class="auto-style13"></td>
            <td class="auto-style14">
                <asp:TextBox ID="txtIdKat" runat="server" Width="113px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="ID Kategori Tidak Boleh Kosong" ControlToValidate="txtIdKat" ValidationGroup="KAT"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Nama Kategori</td>
            <td class="auto-style11">&nbsp;</td>
            <td>
                <asp:TextBox ID="txtNmKat" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Nama Kategori Tidak Boleh Kosong" ControlToValidate="txtNmKat"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Info Kategori</td>
            <td class="auto-style13"></td>
            <td class="auto-style14">
                <asp:TextBox ID="txtInfoKat" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Info Kategori Tidak Boleh Kosong" ControlToValidate="txtInfoKat" ValidationGroup="KAT"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="btnSimpan" runat="server" Text="SIMPAN" onclick="btnSimpan_Click" ValidationGroup="KAT" />
                <asp:Button ID="btnUbah" runat="server" Text="UBAH" onclick="btnUbah_Click" ValidationGroup="KAT" />
                <asp:Button ID="btnHapus" runat="server" Text="HAPUS"  onclick="btnHapus_Click" ValidationGroup="KAT" />
                <asp:Button ID="btnBatal" runat="server" Text="BATAL" onclick="btnBatal_Click" ValidationGroup="KAT" />
            </td>
        </tr>
    </table>
</asp:Content>

