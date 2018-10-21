using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.IO;
using System.Xml;
using System.Text;
using Microsoft.VisualBasic;
using System.Configuration;
using System.Security.Cryptography;
using System.Text.RegularExpressions;
using System.Collections;
using System.Data.SqlClient;
using Telerik.Web.UI;

public class simsdbCommon
{
    public simsdbCommon()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    #region Enums

    public enum Role : int
    {
        Admin = 1,
        SuperUser = 2,
        NormalUser = 3
    };

    #endregion



    #region Encrypt Decrypt Functions
    public static string EncryptQueryString(string strInput)
    {
        string tempEncryptQueryString = null;
        if (strInput.Trim() != "")
        {
            strInput = Encrypt(strInput.Trim());
            tempEncryptQueryString = HttpContext.Current.Server.UrlEncode(strInput);
        }
        else
        {
            tempEncryptQueryString = strInput.Trim();
        }
        return tempEncryptQueryString;
    }
    public static string DecryptQueryString(string strInput)
    {
        string tempDecryptQueryString = null;
        if (strInput.Trim() != "")
        {
            //strInput = HttpContext.Current.Server.UrlDecode(strInput.Trim());
            tempDecryptQueryString = Decrypt(strInput);
        }
        else
        {
            tempDecryptQueryString = strInput.Trim();
        }
        return tempDecryptQueryString;
    }
    //Function to Encrypt the string
    public static string Encrypt(string strText)
    {
        byte[] byKey = null;
        byte[] IV = { 0X12, 0X34, 0X56, 0X78, 0X90, 0XAB, 0XCD, 0XEF };

        try
        {
            byKey = System.Text.Encoding.UTF8.GetBytes(((string)("&%#@?,:*")).Substring(0, 8));

            DESCryptoServiceProvider des = new DESCryptoServiceProvider();
            byte[] inputByteArray = Encoding.UTF8.GetBytes(strText);
            MemoryStream ms = new MemoryStream();
            CryptoStream cs = new CryptoStream(ms, des.CreateEncryptor(byKey, IV), CryptoStreamMode.Write);
            cs.Write(inputByteArray, 0, inputByteArray.Length);
            cs.FlushFinalBlock();
            return Convert.ToBase64String(ms.ToArray());

        }
        catch (Exception ex)
        {
            return ex.Message;
        }

    }
    //Function to Decrypt the string
    public static string Decrypt(string strText)
    {
        byte[] byKey = null;
        byte[] IV = { 0X12, 0X34, 0X56, 0X78, 0X90, 0XAB, 0XCD, 0XEF };
        byte[] inputByteArray = new byte[strText.Length + 1];

        try
        {
            byKey = System.Text.Encoding.UTF8.GetBytes(((string)("&%#@?,:*")).Substring(0, 8));
            DESCryptoServiceProvider des = new DESCryptoServiceProvider();
            inputByteArray = Convert.FromBase64String(strText);
            MemoryStream ms = new MemoryStream();
            CryptoStream cs = new CryptoStream(ms, des.CreateDecryptor(byKey, IV), CryptoStreamMode.Write);

            cs.Write(inputByteArray, 0, inputByteArray.Length);
            cs.FlushFinalBlock();
            System.Text.Encoding encoding = System.Text.Encoding.UTF8;

            return encoding.GetString(ms.ToArray());

        }
        catch (Exception ex)
        {
            return ex.Message;
        }
    }
    #endregion

    #region Paging Sorting Function

    public static void CustomPaging(ref Telerik.Web.UI.RadGrid objDataGrid, GridViewPageEventArgs e, System.Data.DataTable dt)
    {
        if (objDataGrid != null)
        {
            if (dt != null)
            {
                DataView dv = new DataView(dt);
                dv.Sort = objDataGrid.Attributes["SortExpression"];
                if (objDataGrid.Attributes["SortASC"] == "No")
                {
                    dv.Sort += " DESC";
                }

                //objDataGrid.PageIndex = e.NewPageIndex;
                //objDataGrid.CurrentPageIndex = e.NewPageIndex;
                objDataGrid.DataSource = dv;
                objDataGrid.DataBind();

                if (objDataGrid.CurrentPageIndex == objDataGrid.PageCount - 1 & (dt.Rows.Count / objDataGrid.PageSize) <= objDataGrid.CurrentPageIndex)
                {
                    objDataGrid.CurrentPageIndex = objDataGrid.CurrentPageIndex - 1;
                }
            }
        }
    }
    public static void CustomSorting(ref Telerik.Web.UI.RadGrid objDataGrid, System.Web.UI.WebControls.GridViewSortEventArgs e, System.Data.DataTable dt)
    {
        if (objDataGrid != null)
        {
            if (dt != null)
            {

                //DataGrid dgActivityStatus = ((System.Web.UI.WebControls.DataGrid)source);

                object strSort = objDataGrid.Attributes["SortExpression"];
                object strASC = objDataGrid.Attributes["SortASC"];

                objDataGrid.Attributes["SortExpression"] = e.SortExpression;
                objDataGrid.Attributes["SortASC"] = "Yes";
                if (Convert.ToString(e.SortExpression) == Convert.ToString(strSort))
                {
                    if (Convert.ToString(strASC) == "Yes")
                    {
                        objDataGrid.Attributes["SortASC"] = "No";
                    }
                    else
                    {
                        objDataGrid.Attributes["SortASC"] = "Yes";
                    }
                }

                DataView dv = dt.DefaultView;
                dv.Sort = objDataGrid.Attributes["SortExpression"];
                if (objDataGrid.Attributes["SortASC"] == "No")
                {
                    dv.Sort = dv.Sort + " " + "DESC";
                }


                objDataGrid.DataSource = dv;
                objDataGrid.DataBind();
            }
        }
    }



    #endregion

    public static void FillTelericCombo(ref Telerik.Web.UI.RadComboBox cmb_, DataTable dt_, string dText, string dValue)
    {

        try
        {
            if (dt_ != null)
            {
                cmb_.Items.Clear();
                if (dt_.Rows.Count > 0)
                {
                    cmb_.DataSource = dt_;
                    cmb_.DataTextField = dText;
                    cmb_.DataValueField = dValue;
                    cmb_.DataBind();
                }
            }


        }
        catch (Exception ex)
        {
            throw;
        }
    }
    public static void FillTelericCombo(ref Telerik.Web.UI.RadComboBox cmb_, System.Data.DataTable dt_, String DTF, String DVF, bool AddBlankRow, String BlankRowText, String BlankrowValue)
    {
        try
        {
            if (dt_ != null)
            {
                cmb_.Items.Clear();
                if (dt_.Rows.Count > 0)
                {
                    cmb_.DataSource = dt_;
                    cmb_.DataTextField = DTF;
                    cmb_.DataValueField = DVF;
                    cmb_.DataBind();
                }
            }


        }
        catch (Exception ex)
        {
            throw;
        }
        if(AddBlankRow==true)
        {
             if(BlankRowText=="")
                {
                    cmb_.Items.Insert(0,new RadComboBoxItem("--Please Select--",""));
                }
                else
                    {
                        cmb_.Items.Insert(0,new RadComboBoxItem("--Please Select--",BlankrowValue));
                    }        
        }
        else
        {
            cmb_.Items.Insert(0,new RadComboBoxItem("--Please Select--"," "));            
        }
    }

}

