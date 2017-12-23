<%@ Page Title="" Language="C#" MasterPageFile="~/MKatalogOnline.master" AutoEventWireup="true" CodeFile="ModifikasiPromo.aspx.cs" Inherits="DataPromo_ModifikasiPromo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 162px;
        }
        .auto-style3 {
            width: 60%;
            height: 151px;
        }
        .auto-style4 {
            width: 559px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="auto-style3">
        <tr>
            <td colspan="3"><h4 class="auto-style4"><u>MODIFIKASI PROMO</u></h4></td>
        </tr>
        <tr>
            <td class="auto-style2">Cari Nama Barang</td>
            <td>&nbsp;</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtCariNama" runat="server" OnTextChanged="txtCariNama_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">
                <asp:GridView ID="gvBarang" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" GridLines="None" EnableModelValidation="True"
                    DataKeyNames="PKdBrg" EmptyDataText="Data Tidak Ada" PageSize="5"
                    OnSelectedIndexChanged="gvBarang_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="PKdBrg" HeaderText="Kode Barang" />
                        <asp:BoundField DataField="PNmBrg" HeaderText="Nama Barang" />
                        <asp:BoundField DataField="PHrgBrg" DataFormatString="{0:C}"
                            HeaderText="Harga Barang" />
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
            <td class="auto-style2">Barang Promosi</td>
            <td>&nbsp;</td>
            <td class="auto-style1">
                <asp:DetailsView ID="dvPromo" runat="server" Height="50px" Width="197px" 
                    AutoGenerateRows="False" 
                    HorizontalAlign="Center" DataKeyNames="PKdBrg"
                    OnPageIndexChanging="dvPromo_PageIndexChanging" 
                    OnModeChanging="dvPromo_ModeChanging" 
                    OnItemDeleting="dvPromo_ItemDeleting" 
                    OnItemUpdating="dvPromo_ItemUpdating" 
                    EmptyDataText="Tidak Ada Promo"
                    CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                    <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="PKdBrg" HeaderText="Kode Barang" />
                        <asp:BoundField DataField="PInfoPromo" HeaderText="Info Promo" />
                        <asp:BoundField DataField="PHrgPromo" DataFormatString="{0:C}" 
                            HeaderText="Harga Promo" />
                        <asp:CommandField CancelText="Batal" DeleteText="Hapus" EditText="Modifikasi" 
                            ShowEditButton="True" UpdateText="Ubah" />
                        <asp:CommandField DeleteText="Hapus" ShowDeleteButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                </asp:DetailsView>
            </td>
        </tr>
    </table>
</asp:Content>

