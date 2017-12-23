<%@ Page Title="" Language="C#" MasterPageFile="~/MKatalogOnline.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3 {
            width : 224px;
        }
        .style4 {
            width : 203px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <table style="width:33%; height: 149px;" border="1">
        <tr>
            <td>
                <asp:Login ID="LogWebOnline" runat="server" FailureText="Username dan password tidak sesuai"
                           LoginButtonText="Masuk"
                           PasswordRequiredErrorMessage="Masukan Password" RememberMeText="Remember Me" TitleText="LOGIN"
                           UserNameRequiredErrorMessage="Masukan Username" PasswordLabelText="Password :"
                           OnAuthenticate="LogWebOnline_Authenticate" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" TextLayout="TextOnTop">
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
                    <TextBoxStyle Font-Size="0.8em" />
                    <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                </asp:Login>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:LinkButton ID="lbtnDaftar" runat="server" PostBackUrl="~/DataPengguna/DaftarBaru.aspx">DAFTAR BARU
                </asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>