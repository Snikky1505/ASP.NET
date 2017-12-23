using System;
using System.Data.SqlClient;
using CrystalDecisions.CrystalReports.Engine;
using System.Web.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Report_LaporanKategori : System.Web.UI.Page
{
    string strConn =
        WebConfigurationManager.ConnectionStrings["CS_webonline"].ConnectionString;
    ReportDocument rptDoc = new ReportDocument();
    void BindReport()
    {
        using (SqlConnection conn = new SqlConnection())
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "select * from kategori";
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "kategori");
            rptDoc.Load(Server.MapPath("~/Report/CRKategori.rpt"));
            rptDoc.SetDataSource(ds);
            CrystalReportViewer1.ReportSource = rptDoc;
        }
    }
    protected void lbexcel_Click(object sender, ImageClickEventArgs e)
    {
        BindReport();
        rptDoc.ExportToHttpResponse(
            CrystalDecisions.Shared.ExportFormatType.ExcelRecord,
            Response, true, "LaporanKategori");
        rptDoc.Refresh();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!this.IsPostBack)
        {
            if(Session["Hak"].ToString() == "2")
            {
                string pesan = "alert(\"Tidak Mempunyai Hak\");";
                ScriptManager.RegisterStartupScript
                    (this, typeof(string), "HAK AKSES", pesan, true);
                Response.AddHeader("REFRESH", "0;URL=.../Default.aspx");
                return;
            }
            BindReport();
            rptDoc.Refresh();
        }
    }
    protected void lbword_Click(object sender, ImageClickEventArgs e)
    {
        BindReport();
        rptDoc.ExportToHttpResponse(
            CrystalDecisions.Shared.ExportFormatType.WordForWindows,
            Response, true, "LaporanKategori");
        rptDoc.Refresh();
    }
}