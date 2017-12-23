using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DataBelanja_InfoProduk : System.Web.UI.Page
{
    clsItemKereta _itemkereta = new clsItemKereta("", "", 0, 0);

    private void BindRepeater()
    {
        string xKdBrg = Request.QueryString["QKdBrg"].ToString();
        rptInfoProduk.DataSource = _itemkereta.TampilDataDetil(xKdBrg);
        rptInfoProduk.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            if (Session["Username"] == null)
            {
                string pesan = "alert(\"Belum Login\");";
                ScriptManager.RegisterStartupScript(this, GetType(), "BELUM LOGIN", pesan, true);
                Response.AddHeader("REFRESH", "0;URL=../Default.aspx");
                return;
            }
            BindRepeater();
        }
    }
    protected void btnTambah_Click(object sender, EventArgs e)
    {
        string KodeBrg = Request.QueryString["QKdBrg"].ToString();
        string NamaBrg = "";
        double HargaBrg = 0;
        double HargaPromo = 0;
        _itemkereta.PKdBrg = KodeBrg;
        bool _hasil = _itemkereta.CariItem();
        if (_hasil == true)
        {
            NamaBrg = _itemkereta.PNmBrg;
            HargaBrg = _itemkereta.PHrgBrg;
            if (_itemkereta.PHrgPromo == 0)
            {
                HargaPromo = 0;
            }
            else
            {
                HargaPromo = _itemkereta.PHrgPromo;
            }
        }
        double Harga = 0;
        if (HargaPromo != 0)
        {
            Harga = HargaPromo;
        }
        else
        {
            Harga = HargaBrg;
        }
        clsKereta _kereta;
        if (Session["cart"] == null)
        {
            _kereta = new clsKereta();
            Session["cart"] = _kereta;
        }
        else
        {
            _kereta = (clsKereta)Session["cart"];
        }
        _kereta.AddItems(KodeBrg, NamaBrg, Harga, 1);
        Response.Redirect("~/DataBelanja/KeranjangBelanja.aspx?QKdBrg=" + KodeBrg);
    }
    protected void btnKembali_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx", true);
    }

    protected void rptInfoProduk_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}