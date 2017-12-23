<%@ Page Title="" Language="C#" MasterPageFile="~/MKatalogOnline.master" AutoEventWireup="true" CodeFile="ManajemenPengguna.aspx.cs" Inherits="DataPengguna_ManajemenPengguna" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-weight: bold;
            text-decoration: underline;
        }
        .style2
        {
        }
        .style3
        {
            width: 178px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="3"><h4><u>MANAJEMEN PENGGUNA</u></h4></td>
        </tr>
        <tr>
            <td class="auto-style3">Cari Nama Pengguna</td>
            <td class="auto-style5"></td>
            <td class="auto-style2">
                <asp:TextBox ID="txtCariNama" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="3">
                <asp:DataList ID="dlPengguna" runat="server" BorderWidth="1px" CellPadding="1" CellSpacing="1" RepeatDirection="Horizontal" Visible="False" >
                    <ItemTemplate>
                        <table class="auto-style12" border="1">
                            <tr>
                                <td class="auto-style10">Username</td>
                                <td class="auto-style11">:</td>
                                <td class="auto-style18">
                                    <asp:Label ID="lblUserName" runat="server" Text='<%# Eval("PUserName") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style15">Nama</td>
                                <td class="auto-style16">:</td>
                                <td class="auto-style17">
                                    <asp:Label ID="lblNama" runat="server" Text='<%# Eval("PNama") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">No Telepon</td>
                                <td class="auto-style14">:</td>
                                <td class="auto-style2">
                                    <asp:Label ID="lblNoTelp" runat="server" Text='<%# Eval("PNoTelp") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>

                                <td class="auto-style13">No Kartu Kredit</td>
                                <td class="auto-style14">:</td>
                                <td class="auto-style2">
                                    <asp:Label ID="lblNoKartu" runat="server" Text='<%# Eval("PNoKartuKredit") %>'></asp:Label>
                                </td>

                            </tr>
                            <tr>

                                <td class="auto-style13">
                                    <asp:HiddenField ID="hfPassword" runat="server" Value='<%# Eval("PPassword") %>' />
                                </td>
                                <td class="auto-style14"></td>
                                <td class="auto-style2">
                                    <asp:HiddenField ID="hfHak" runat="server" Value='<%# Eval("PHak") %>'/>
                                </td>
                            </tr>
                            <tr>

                                <td class="auto-style2" colspan="3">
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Select">Select</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Username</td>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Tidak Boleh Kosong" ControlToValidate="txtUsername" ValidationGroup="USR"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Password</td>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Tidak Boleh Kosong" ControlToValidate="txtPassword" ValidationGroup="USR"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Konfirmasi Password</td>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:TextBox ID="txtKonfirmasi" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Tidak Boleh Kosong" ControlToValidate="txtKonfirmasi" Display="Dynamic" ValidationGroup="USR"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Konfirmasi Password Tidak Sama Dengan Password" ControlToCompare="txtPassword" ControlToValidate="txtKonfirmasi" Display="Dynamic" ValidationGroup="USR"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Nama</td>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:TextBox ID="txtNama" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Tidak Boleh Kosong" ControlToValidate="txtNama" ValidationGroup="USR"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">No Telepon</td>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:TextBox ID="txtNoTelp" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Tidak Boleh Kosong" ControlToValidate="txtNoTelp" Display="Dynamic" ValidationGroup="USR"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Masukkan Angka, Minimal 15 Digit" ControlToValidate="txtNoTelp" Display="Dynamic" ValidationExpression="^[0-9]{1,15}$ " ValidationGroup="USR"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">No Kartu Kredit</td>
            <td class="auto-style8"></td>
            <td class="auto-style9">
                <asp:TextBox ID="txtNoKK" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Tidak Boleh Kosong" ControlToValidate="txtNoKK" Display="Dynamic" ValidationGroup="USR"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Masukkan Angka, Minimal 16 Digit" ControlToValidate="txtNoKK" Display="Dynamic" ValidationGroup="USR"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Hak Admin</td>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:CheckBox ID="chkHak" runat="server" Text="Yes" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="btnSimpan" runat="server" Text="SIMPAN" OnClick="btnSimpan_Click" ValidationGroup="USR" />
                <asp:Button ID="btnUbah" runat="server" Text="UBAH" OnClick="btnUbah_Click" ValidationGroup="USR" />
                <asp:Button ID="btnHapus" runat="server" Text="HAPUS" OnClick="btnHapus_Click" ValidationGroup="USR" />
                <asp:Button ID="btnBatal" runat="server" Text="BATAL" OnClick="btnBatal_Click" ValidationGroup="USR" />
            </td>
        </tr>
    </table>
</asp:Content>

