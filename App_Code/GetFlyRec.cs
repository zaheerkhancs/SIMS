using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for GetFlyRec
/// </summary>
public class GetFlyRec
{
    public GetFlyRec()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    // Return dt over provided Qry
    public System.Data.DataTable Getdt(string Qry)
    {
        var dt_ = new System.Data.DataTable();
        var da_ = new SqlDataAdapter(Qry, ConfigurationManager.ConnectionStrings["simdbCon"].ToString());
        try
        {
            da_.Fill(dt_);        
        }
        catch (Exception ex)
        {
            string msgs = ex.Message.ToString();

        }
        finally
        {  da_.Dispose(); }
        return dt_;
    }

    // Insert
    public Boolean Insert(string ParamValue_, string TableName)
    {
        bool flag_=false;
        string qrystruct_ = "";
        qrystruct_ = "INSERT INTO " + TableName + "VALUES("+ParamValue_+ ")";
        var cmd = new SqlCommand();
        cmd.CommandText = qrystruct_;
        cmd.Connection.ConnectionString = ConfigurationManager.ConnectionStrings["simdbCon"].ToString();
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        flag_ = true;
        if (!flag_)
            return false;
        else
            return true;

    }
}