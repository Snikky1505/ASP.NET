<%@ Page Title="" Language="C#" MasterPageFile="~/MKatalogOnline.master" AutoEventWireup="true" CodeFile="CetakKonfirmasi.aspx.cs" Inherits="DataBelanja_CetakKonfirmasi" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ImageButton ID="lbpdf" runat="server" Height="50px" ImageUrl="~/Gambar/Icon/PDF.png" Width="50px" OnClick="lblPdf_Click1"/>
<asp:ImageButton ID="lbexcel" runat="server" Height="50px" ImageUrl="~/Gambar/Icon/EXCEL.PNG" Width="50px" OnClick="lblExcel_Click"/>
<asp:ImageButton ID="lbword" runat="server" Height="50px" ImageUrl="~/Gambar/Icon/WORD.PNG" Width="50px" OnClick="lblWord_Click"/>
<asp:ImageButton ID="lbrtf" runat="server" Height="50px" ImageUrl="~/Gambar/Icon/RTF.png" Width="50px" OnClick="lblRtf_Click"/>
<CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" DisplayToolbar="False" ReuseParameterValuesOnRefresh="True" ToolPanelView="None" />
</asp:Content>

