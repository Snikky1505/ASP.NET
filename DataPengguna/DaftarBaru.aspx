
<%@ Page Title="" Language="C#" MasterPageFile="~/MKatalogOnline.master" AutoEventWireup="true" CodeFile="~/DataPengguna/DaftarBaru.aspx.cs" Inherits="DataPengguna_DaftarBaru" %>

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
            width: 142px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%; margin-right: 0px;" border="1">
        <tr>
            <td class="style1" colspan="3">
                DAFTAR BARU
            </td>
        </tr>
        <tr>
            <td class="style2">
                Username
            </td>
            <td class="style3">
                &nbsp;
            </td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                            ErrorMessage="Tidak Boleh Kosong" ControlToValidate="txtUsername"
                                            ValidationGroup="DAFTAR"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Nama
            </td>
            <td class="style3">
                &nbsp;
            </td>
            <td>
                <asp:TextBox ID="txtNama" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                            ErrorMessage="Tidak Boleh Kosong" ControlToValidate="txtNama"
                                            ValidationGroup="DAFTAR"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Password
            </td>
            <td class="style3">
                &nbsp;
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                            ErrorMessage="Tidak Boleh Kosong" ControlToValidate="txtPassword"
                                            ValidationGroup="DAFTAR"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Konfirmasi Password
            </td>
            <td class="style3">
                &nbsp;
            </td>
            <td>
                <asp:TextBox ID="txtKonfirmasi" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                            ErrorMessage="Tidak Boleh Kosong" ControlToValidate="txtKonfirmasi"
                                            ValidationGroup="DAFTAR"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server"
                                      ErrorMessage="Konfirmasi Password Tidak Sama Dengan Password"
                                      ControlToCompare="txtPassword" ControlToValidate="txtKonfirmasi"
                                      Display="Dynamic"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Nomor Telepon
            </td>
            <td class="style3">
                &nbsp;
            </td>
            <td>
                <asp:TextBox ID="txtNoTelp" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                            ErrorMessage="Tidak Boleh Kosong" ControlToValidate="txtNoTelp"
                                            Display="Dynamic" ValidationGroup="DAFTAR"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                                ErrorMessage="Masukan Angka, Maksimal 15 Digit"
                                                ControlToValidate="txtNoTelp" Display="Dynamic"
                                                ValidationExpression="^[0-9]{1,15}$"
                                                ValidationGroup="DAFTAR"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Nomor kartu Kredit
            </td>
            <td class="style3">
                &nbsp;
            </td>
            <td>
                <asp:TextBox ID="txtNoKartu" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                            ErrorMessage="Tidak Boleh Kosong" ControlToValidate="txtNoKartu"
                                            Display="Dynamic" ValidationGroup="DAFTAR"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                                ErrorMessage="Masukkan Angka, Maksimal 16 Digit"
                                                ControlToValidate="txtNoKartu" Display="Dynamic"
                                                ValidationExpression="^[0-9]{1,16}$"
                                                ValidationGroup="DAFTAR"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="3">
                <asp:Button ID="btnDaftar" runat="server" Text="DAFTAR"
                            OnClick="btnDaftar_Click" style="width: 77px" />
                <asp:Button ID="btnBatal" runat="server" Text="BATAL"
                            OnClick="btnBatal_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>