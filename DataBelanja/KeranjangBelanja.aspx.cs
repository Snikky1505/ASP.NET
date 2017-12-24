using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DataBelanja_KerangjangBelanja : System.Web.UI.Page
{
    public clsKereta cart;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            if (Session["cart"] == null || Session["Username"] == null)
            {
                string pesan = "alert(\"Session Belanja Kosong, Ulangi Dari Pertama\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                    "SESSION BELANJA KOSONG", pesan, true);
                Response.AddHeader("REFRESH", "0;URL=../Default.aspx");
                return;
            }
        }
        cart = (clsKereta)Session["cart"];
        gvKeranjang.DataSource = cart.GetItem();
        gvKeranjang.DataBind();
        HitungTotal();
    }
    protected void gvKeranjang_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnUbah.Enabled = true;
        btnKonfirmasi.Enabled = false;
        ddJmlBrg.Enabled = true;
        lblNmBrg.Text = gvKeranjang.SelectedRow.Cells[4].Text.ToString();
        ddJmlBrg.SelectedValue = gvKeranjang.SelectedRow.Cells[6].Text.ToString();
    }
    protected void btnKonfirmasi_Click(object sender, EventArgs e)
    {
        Session["Jumlah"] = lblJumlahItem.Text;
        Session["Total"] = lblTotalBayar.Text;
        Response.Redirect("~/DataBelanja/KonfirmasiPembelian.aspx");
    }

    protected void HitungTotal()
    {
        int x;
        int JumlahItem = 0;
        double Total = 0;
        for (x = 0; x <= gvKeranjang.Rows.Count - 1; x++)
        {
            JumlahItem += System.Convert.ToInt32(gvKeranjang.Rows[x].Cells[4].Text.ToString().Replace("%", "").Replace(" ", ""));
            Total += System.Convert.ToDouble(gvKeranjang.Rows[x].Cells[5].Text.ToString().Replace("Rp", "").Replace(".", ""));
        }
        lblJumlahItem.Text = JumlahItem.ToString();
        lblTotalBayar.Text = Total.ToString();
    }

    protected void gvKeranjang_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        cart = (clsKereta)Session["cart"];
        cart.DeleteItem(e.RowIndex);
        gvKeranjang.DataBind();
        HitungTotal();
    }

    protected void gvKeranjang_RowCreated(object sender, GridViewRowEventArgs e)
    {
        int x;
        for (x = 0; x <= gvKeranjang.Rows.Count - 1; x++)
        {
            gvKeranjang.Rows[x].Cells[2].Text = (x + 1).ToString();
        }
    }

    protected void btnUbah_Click(object sender, EventArgs e)
    {
        btnUbah.Enabled = false;
        btnKonfirmasi.Enabled = true;
        ddJmlBrg.Enabled = false;
        lblNmBrg.Text = "Tampil Nama Barang";
        cart = (clsKereta)Session["cart"];
        cart.UpdateQty(gvKeranjang.SelectedIndex, System.Convert.ToInt16
                            (ddJmlBrg.SelectedValue));
        gvKeranjang.DataBind();
        HitungTotal();
        ddJmlBrg.SelectedValue = "1";
    }
}