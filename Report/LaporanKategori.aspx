﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MKatalogOnline.master" AutoEventWireup="true" CodeFile="LaporanKategori.aspx.cs" Inherits="Report_LaporanKategori" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ImageButton ID="lbpdf" runat="server" Height="50px" ImageUrl="~/Gambar/Icon/PDF.png" Width="50px" OnClick="lbpdf_Click"/>
    <asp:ImageButton ID="lbexcel" runat="server" Height="50px" ImageUrl="~/Gambar/Icon/EXCEL.PNG" Width="50px" OnClick="lbexcel_Click" />
    <asp:ImageButton ID="lbword" runat="server" Height="50px" ImageUrl="~/Gambar/Icon/WORD.PNG" Width="50px" OnClick="lbword_Click" />
    <asp:ImageButton ID="lbrtf" runat="server" Height="50px" ImageUrl="~/Gambar/Icon/RTF.png" Width="50px" OnClick="lbrtf_Click"/>
    <div class="auto-style1">
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" DisplayToolbar="False" ToolPanelView="None" />
    </div>
</asp:Content>

