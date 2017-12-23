<%@ Page Title="" Language="C#" MasterPageFile="~/MKatalogOnline.master" AutoEventWireup="true" CodeFile="InfoProduk.aspx.cs" Inherits="DataBelanja_InfoProduk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td><h4><u>INFO PRODUK</u></h4></td>
            
        </tr>
        <tr>
            <td>
                <asp:Repeater ID="rptInfoProduk" runat="server"
                       onitemcommand="rptInfoProduk_ItemCommand">
                <ItemTemplate>
					<table width="20%" border="1">
						<tr>
							<th align="left">Nama Barang</th>
							<th>:</th>
							<td><%#Eval("PNmBrg")%></td>
						</tr>
						<tr>
							<th align="left">Harga Barang</th>
							<th>:</th>
							<td><%#Eval("PHrgBrg","{0:C}")%></td>
						</tr>
						<tr>
							<th align="left">Info Promo</th>
							<th>:</th>
							<td><%#Eval("PInfoPromo")%></td>
						</tr
						<tr>
							<th align="left">Harga Promo</th>
							<th>:</th>
							<td><%#Eval("PHrgPromo","{0:C}")%></td>
						</tr>
					</ItemTemplate>
					<FooterTemplate>
					</table>
					</FooterTemplate>
                </asp:Repeater>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btnTambah" runat="server" Text="TAMBAH" OnClick="btnTambah_Click"/>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btnKembali" runat="server" Text="KEMBALI" OnClick="btnKembali_Click"/>
            </td>
            
        </tr>
    </table>
</asp:Content>

