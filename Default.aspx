<%@ Page Title="" Language="C#" MasterPageFile="~/MKatalogOnline.master" AutoEventWireup="true" CodeFile="~/Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .style1 {
            font-weight     : bold;
            text-decoration : underline;
            text-align:center;
        }
        .style2 {
        }
        .style3 {
        }
        .style4 {
            width : 251px;
        }
        .style5 {
            text-align:center;
        }
        .auto-style2 {
            width: 15px;
        }
        .auto-style3 {
            text-align: center;
            width: 627px;
        }
        .auto-style4 {
            width: 627px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width:100%;" border="1">
        <tr>
            <td class="style1" colspan="3">
                DATA BARANG PROMOSI
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="3">
                <asp:DataList ID="dlPromo" runat="server" RepeatDirection="Horizontal" CellPadding="4" ForeColor="#333333"
                    OnSelectedIndexChanged="dlPromo_SelectedIndexChanged">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <ItemTemplate>
                        <table style="width:100%;" border="1">
                            <tr>
                                <td>
                                    <asp:Label ID="lblNmBrg" runat="server" Text='<%# Eval("PNmBrg") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblHrgPromo" runat="server"
                                               Text='<%# Eval("PHrgBrg","{0:C}") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblHrgBrg" runat="server" Font-Size="Smaller"
                                               Font-Strikeout="True" Text='<%# Eval("PHrgBrg","{0:C}") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblInfoPromo" runat="server" Text='<%# Eval("PInfoPromo") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:HiddenField ID="hfKdBrg" runat="server" Value='<%# Eval("PKdBrg") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="lbtnPilih" runat="server" CommandName="Select">Pilih</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="style1" colspan="3">
                DATA BARANG
            </td>
        </tr>
        <tr>
            <td class="style3">
                Cari Kategori
            </td>
            <td class="auto-style2">
                &nbsp;
                :</td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddKategori" runat="server" AutoPostBack="True"
                    OnSelectedIndexChanged="ddKategori_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="3">
                <asp:GridView ID="gvBarang" runat="server" AllowPaging="True"
                              AutoGenerateColumns="False" DataKeyNames="PKdBrg"
                              EmptyDataText="DATA BARANG TIDAK ADA" PageSize="5" 
                              OnSelectedIndexChanged="gvBarang_SelectedIndexChanged"
                              CellPadding="4" ForeColor="#333333" GridLines="None" Width="580px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="PGbrBrg"
                                        DataImageUrlFormatString="~/Gambar/Upload/{0}">
                            <ControlStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="PNmBrg" HeaderText="Nama Barang" />
                        <asp:BoundField DataField="PHrgBrg" HeaderText="Harga Barang" />
                        <asp:BoundField DataField="PHrgPromo" HeaderText="Harga Promo" />
                        <asp:BoundField DataField="PInfoPromo" HeaderText="Info Promo" />
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                   
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                   
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>