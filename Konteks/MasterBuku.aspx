<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MasterBuku.aspx.cs" Inherits="Konteks_MasterBuku" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
        .auto-style6 {
            width: 767px;
        }
        .auto-style7 {
            width: 409px;
        }
        .auto-style8 {
            width: 155px;
            text-align: center;
        }
        .auto-style9 {
            width: 33px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentutama" Runat="Server">
    
        
        <table class="auto-style7" >
            <tr>
                <td colspan="3" style="text-align:center; font-size:16px;">Data Buku<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Cari Data</td>
                <td class="auto-style9">:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" Width="240px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="3">
                    <asp:GridView ID="GridView1" runat="server" Height="80px" Width="371px">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Jenis Buku</td>
                <td class="auto-style9">:</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="211px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Kode Buku</td>
                <td class="auto-style9">:</td>
                <td class="auto-style6">
                    
                    <asp:TextBox ID="TextBox2" runat="server" Width="201px"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Judul</td>
                <td class="auto-style9">:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Pengarang</td>
                <td class="auto-style9">:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Harga</td>
                <td class="auto-style9">:</td>
                <td class="auto-style6">Rp.
                    <asp:TextBox ID="TextBox5" runat="server" Width="132px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Stock</td>
                <td class="auto-style9">:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox6" runat="server" Width="25px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Gambar</td>
                <td class="auto-style9">:</td>
                <td class="auto-style6">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="Simpan" />
                    <asp:Button ID="Button2" runat="server" Text="Ubah" />
                    <asp:Button ID="Button3" runat="server" Text="Hapus" />
                    <asp:Button ID="Button4" runat="server" Text="Batal" />
                </td>
            </tr>
            </table>
 
</asp:Content>

