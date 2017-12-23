﻿using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Collections.Generic;
public class clsPesan
{
    private string FKdPesan;
    private DateTime FTglPesan;
    private string FUserName;
    private string StrConn = WebConfigurationManager.ConnectionStrings["CS_webonline"].ConnectionString;

    public string PKdPesan
    {
        get
        {
            return FKdPesan;
        }
        set
        {
            FKdPesan = value;
        }
    }

    public DateTime PTglPesan
    {
        get
        {
            return FTglPesan;
        }
        set
        {
            FTglPesan = value;
        }
    }

    public string PUserName
    {
        get
        {
            return FUserName;
        }
        set
        {
            FUserName = value;
        }
    }

    public string Autonumber()
    {
        using (SqlConnection conn = new SqlConnection(StrConn))
        {
            string NilaiAwal, NilaiAsli, NilaiAuto;
            int NilaiTambah;
            string Query = "SELECT KdPesan FROM pesan ORDER BY KdPesan DESC";
            SqlCommand cmd = new SqlCommand(Query, conn);
            SqlDataReader reader;
            conn.Open();
            reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                NilaiAsli = reader["KdPesan"].ToString();
                NilaiTambah = System.Convert.ToInt32(NilaiAsli.Substring(3, 4)) + 1;
                NilaiAwal = System.Convert.ToString(NilaiTambah);
                NilaiAuto = "PSN" + "0000".Substring(NilaiAwal.Length) + NilaiAwal;
            }
            else
            { NilaiAuto = "PSN0001"; }
            return NilaiAuto;
        }

    }

    public int Simpan()
    {
        using (SqlConnection conn = new SqlConnection(StrConn))
        {
            String Query =
               "INSERT INTO pesan(KdPesan,TglPesan,UserName)VALUES(@1,@2,@3)";
            SqlCommand cmd = new SqlCommand(Query, conn);
            cmd.Parameters.AddWithValue("@1", FKdPesan);
            cmd.Parameters.AddWithValue("@2", FTglPesan);
            cmd.Parameters.AddWithValue("@3", FUserName);
            int Hasil = 0;
            conn.Open();
            Hasil = cmd.ExecuteNonQuery();
            return Hasil;

        }
    }
}
