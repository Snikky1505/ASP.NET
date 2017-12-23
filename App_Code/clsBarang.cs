﻿using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Collections.Generic;
public class clsBarang
{
    private string FGbrBrg;
    private double FHrgBrg;
    private string FIdKat;
    private string FInfoBrg;
    private string FKdBrg;
    private string FNmBrg;
    private int FStokBrg;
    string StrConn = WebConfigurationManager.ConnectionStrings["CS_webonline"].ConnectionString;

    public string PGbrBrg
    {
        get
        {
            return FGbrBrg;
        }
        set
        {
            FGbrBrg = value;
        }
    }

    public double PHrgBrg
    {
        get
        {
            return FHrgBrg;
        }
        set
        {
            FHrgBrg = value;
        }
    }

    public string PIdKat
    {
        get
        {
            return FIdKat;
        }
        set
        {
            FIdKat = value;
        }
    }

    public string PInfoBrg
    {
        get
        {
            return FInfoBrg;
        }
        set
        {
            FInfoBrg = value;
        }
    }

    public string PKdBrg
    {
        get
        {
            return FKdBrg;
        }
        set
        {
            FKdBrg = value;
        }
    }

    public string PNmBrg
    {
        get
        {
            return FNmBrg;
        }
        set
        {
            FNmBrg = value;
        }
    }

    public int PStokBrg
    {
        get
        {
            return FStokBrg;
        }
        set
        {
            FStokBrg = value;
        }
    }

    public string Autonumber()
    {
        using (SqlConnection conn = new SqlConnection(StrConn))
        {
            string NilaiAwal, NilaiAsli, NilaiAuto;
            int NilaiTambah;
            string Query = "SELECT KdBrg FROM barang ORDER BY KdBrg DESC";
            SqlCommand cmd = new SqlCommand(Query, conn);
            SqlDataReader reader;
            conn.Open();
            reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                NilaiAsli = reader["KdBrg"].ToString();
                NilaiTambah = System.Convert.ToInt32(NilaiAsli.Substring(3, 4)) + 1;
                NilaiAwal = System.Convert.ToString(NilaiTambah);
                NilaiAuto = "BRG" + "0000".Substring(NilaiAwal.Length) + NilaiAwal;
            }
            else
            { NilaiAuto = "BRG0001"; }
            return NilaiAuto;
        }


    }

    public int Hapus()
    {
        using (SqlConnection conn = new SqlConnection(StrConn))
        {
            string Query = "DELETE FROM barang WHERE KdBrg=@1";
            SqlCommand cmd = new SqlCommand(Query, conn);
            cmd.Parameters.AddWithValue("@1", FKdBrg);
            int Hasil = 0;
            conn.Open();
            Hasil = cmd.ExecuteNonQuery();
            return Hasil;

        }


    }

    public int Simpan()
    {
        using (SqlConnection conn = new SqlConnection(StrConn))
        {
            String Query =
       "INSERT INTO barang(KdBrg,NmBrg,HrgBrg,InfoBrg,GbrBrg,StokBrg,IdKat) VALUES(@a1,@a2,@a3,@a4,@a5,@a6,@a7)";
            SqlCommand cmd = new SqlCommand(Query, conn);
            cmd.Parameters.AddWithValue("@a1", FKdBrg);
            cmd.Parameters.AddWithValue("@a2", FNmBrg);
            cmd.Parameters.AddWithValue("@a3", FHrgBrg);
            cmd.Parameters.AddWithValue("@a4", FInfoBrg);
            cmd.Parameters.AddWithValue("@a5", FGbrBrg);
            cmd.Parameters.AddWithValue("@a6", FStokBrg);
            cmd.Parameters.AddWithValue("@a7", FIdKat);

            int Hasil = 0;
            conn.Open();
            Hasil = cmd.ExecuteNonQuery();
            return Hasil;

        }

    }

    public List<clsBarang> TampilData(string xNmBrg, string XIdKat)
    {
        using (SqlConnection conn = new SqlConnection(StrConn))
        {
            string Query = "SELECT*FROM barang WHERE NmBrg LIKE '%" + xNmBrg + "%' AND IdKat='" + XIdKat + "'";
            List<clsBarang> tmpBaca = new List<clsBarang>();
            SqlCommand cmd = new SqlCommand(Query, conn);

            SqlDataReader reader;
            conn.Open();
            reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    clsBarang objTemp = new clsBarang();
                    objTemp.FIdKat = reader["IdKat"].ToString();
                    objTemp.FKdBrg = reader["KdBrg"].ToString();
                    objTemp.FNmBrg = reader["NmBrg"].ToString();
                    objTemp.FInfoBrg = reader["InfoBrg"].ToString();
                    objTemp.FHrgBrg = System.Convert.ToDouble(reader["HrgBrg"]);
                    objTemp.FGbrBrg = reader["GbrBrg"].ToString();
                    objTemp.FStokBrg = System.Convert.ToInt32(reader["StokBrg"]);
                    tmpBaca.Add(objTemp);
                }
            }
            return tmpBaca;
        }

    }

    public List<clsBarang> TampilData2(string xNmBrg)
    {
        using (SqlConnection conn = new SqlConnection(StrConn))
        {
            string Query = "SELECT * FROM barang " +
                "WHERE NmBrg LIKE '%" + xNmBrg + "%' AND " +
                "KdBrg NOT IN (SELECT KdBrg FROM promo)";
            List<clsBarang> tmpBaca = new List<clsBarang>();
            SqlCommand cmd = new SqlCommand(Query, conn);

            SqlDataReader reader;
            conn.Open();
            reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    clsBarang objTemp = new clsBarang();
                    objTemp.FIdKat = reader["IdKat"].ToString();
                    objTemp.FKdBrg = reader["KdBrg"].ToString();
                    objTemp.FNmBrg = reader["NmBrg"].ToString();
                    objTemp.FInfoBrg = reader["InfoBrg"].ToString();
                    objTemp.FHrgBrg = System.Convert.ToDouble(reader["HrgBrg"]);
                    objTemp.FGbrBrg = reader["GbrBrg"].ToString();
                    objTemp.FStokBrg = System.Convert.ToInt32(reader["StokBrg"]);
                    tmpBaca.Add(objTemp);
                }

            }
            return tmpBaca;
        }
    }



    public List<clsBarang> TampilData3(string xNmBrg)
    {
        using (SqlConnection conn = new SqlConnection(StrConn))
        {
            string Query = "SELECT barang.IdKat,barang.KdBrg,barang.NmBrg, " +
                "barang.InfoBrg,barang.HrgBrg,barang.GbrBrg,barang.StokBrg " +
                "FROM barang LEFT OUTER JOIN promo " +
                "ON barang.KdBrg=promo.KdBrg " +
                "WHERE barang.NmBrg LIKE '%" + xNmBrg + "%'";
            List<clsBarang> tmpBaca = new List<clsBarang>();
            SqlCommand cmd = new SqlCommand(Query, conn);

            SqlDataReader reader;
            conn.Open();
            reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    clsBarang objTemp = new clsBarang();
                    objTemp.FIdKat = reader["IdKat"].ToString();
                    objTemp.FKdBrg = reader["KdBrg"].ToString();
                    objTemp.FNmBrg = reader["NmBrg"].ToString();
                    objTemp.FInfoBrg = reader["InfoBrg"].ToString();
                    objTemp.FHrgBrg = System.Convert.ToDouble(reader["HrgBrg"]);
                    objTemp.FGbrBrg = reader["GbrBrg"].ToString();
                    objTemp.FStokBrg = System.Convert.ToInt32(reader["StokBrg"]);
                    tmpBaca.Add(objTemp);
                }
            }
            return tmpBaca;
        }
    }

    public int Ubah()
    {
        using (SqlConnection conn = new SqlConnection(StrConn))
        {
            string Query =
               "UPDATE barang SET NmBrg=@1, InfoBrg=@2, HrgBrg=@3, " +
               "GbrBrg=@4, StokBrg=@5, IdKat=@6 WHERE KdBrg=@7";
            SqlCommand cmd = new SqlCommand(Query, conn);
            cmd.Parameters.AddWithValue("@1", FNmBrg);
            cmd.Parameters.AddWithValue("@2", FInfoBrg);
            cmd.Parameters.AddWithValue("@3", FHrgBrg);
            cmd.Parameters.AddWithValue("@4", FGbrBrg);
            cmd.Parameters.AddWithValue("@5", FStokBrg);
            cmd.Parameters.AddWithValue("@6", FIdKat);
            cmd.Parameters.AddWithValue("@7", FKdBrg);
            int Hasil = 0;
            conn.Open();
            Hasil = cmd.ExecuteNonQuery();
            return Hasil;

        }
    }

}
