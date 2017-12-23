using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page

{
    clsItemKereta _itemkereta = new clsItemKereta("", "", 0, 0);
    clsKategori _kategori = new clsKategori();

    private void BindDropDownKategori()
    {
        ddKategori.DataSource = _kategori.TampilData("");
        ddKategori.DataValueField = "PIdKat";
        ddKategori.DataTextField = "PNmKat";
        ddKategori.DataBind();
    }

    private void BindGrid()
    {
        gvBarang.DataSource =
                            _itemkereta.TampilDataBarang(ddKategori.SelectedItem.Value.ToString());
        gvBarang.SelectedIndex = -1;
        gvBarang.DataBind();
    }

    private void BindDataList()
    {
        dlPromo.DataSource = _itemkereta.TampilDataPromo();
        dlPromo.SelectedIndex = -1;
        dlPromo.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            BindDataList();
            BindDropDownKategori();
            BindGrid();
        }
    }
    protected void dlPromo_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataListItem item = dlPromo.SelectedItem;
        string xKdBrg = ((HiddenField)item.FindControl("hfKdBrg")).Value.ToString();
        Response.Redirect("~/DataBelanja/InfoProduk.aspx?QKdBrg=" + xKdBrg);
    }
    protected void ddKategori_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindGrid();
    }



    protected void gvBarang_SelectedIndexChanged(object sender, EventArgs e)
    {
        string xKdBrg = gvBarang.SelectedDataKey["PKdBrg"].ToString();
        Response.Redirect("~/DataBelanja/InfoProduk.aspx?QKdBrg=" + xKdBrg);
    }
}