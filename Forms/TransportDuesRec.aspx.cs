using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using sims.simsdb.DAL;
public partial class Forms_TransportDuesRec : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string EnrollNo = Request.QueryString["EnrollNo"].ToString();
            if (EnrollNo != null)
            {
                var obj_ = new simsdb();
                var row_ = new Student_EnrRow();
                try
                {
                    row_ = obj_.Student_EnrCollection.GetRow("AdmNo='" + EnrollNo + "'");
                    txtEnrollNo.Text = row_.AdmNo.ToString();
                    obj_.Dispose();
                }
                catch (Exception ex)
                {
                    string msgs = ex.Message.ToString();

                }
                finally
                {
                    obj_.Dispose();
                }
            }
            _ShowGridAll();
            FillYearMonths();
            FillCombos();
        }

    }
    protected void FillCombos()
    {
        using (var obj = new simsdb())
        {
            DataTable dt = obj.ClassSectionCollection.GetAllAsDataTable();
            simsdbCommon.FillTelericCombo(ref cmbGridView, dt, "clsSec_Description", "clsSecID", true, "--Please Select Class Sec--", "0");

        }

    }
    protected void FillYearMonths()
    {
        //this.cmbYear.Items.Insert(0, new Telerik.Web.UI.RadComboBoxItem("--Please Select--", ""));
        int index = 1;
        for (int i = 2017; i > 2000; i--)
        {
            var Item_ = new Telerik.Web.UI.RadComboBoxItem();
            Item_.Text = i.ToString();
            Item_.Value = index.ToString();
            this.cmbYear.Items.Add(Item_);
            index++;
        }

        var imonth_ = new Telerik.Web.UI.RadComboBoxItem();
        var months = System.Globalization.DateTimeFormatInfo.InvariantInfo.MonthNames;
        this.cmbMonth.DataSource = months;
        this.cmbMonth.DataBind();

    }
    protected void _ShowGridAll()
    {
        DataTable dt_ = new DataTable();
        //dt_ = obj.StudentDuesCollection.GetAsDataTable("EnrollNo='" + Enroll + "'","Month Desc");

        string Qry = "";
        Qry = "SELECT        " +
        "TransportDuesDetails.TransRecID,  " +
        "Student_Enr.AdmNo,  " +
        "ClassSection.clsSec_Description, " +
        "Student_Enr.Student_Name,  " +
        "Student_Enr.FatherName, " +
        "Student_Enr.Mobile1,  " +
        "TransportDuesDetails.Month+'-'+CAST(TransportDuesDetails.Year AS VARCHAR) AS Month_Year, " +
        "SUM( TransportDuesDetails.Charges) AS Charges, " +
        "SUM( TransportDuesDetails.Paid_Amount) AS Paid, " +
        "TransportDuesDetails.Date_Payment,  " +
        "TransportDuesDetails.VoucherNo,  " +
        "TransportDuesDetails.V_Type,  " +
        "TransportDuesDetails.V_No,  " +
        "TransportDuesDetails.Drive_Info," +
        "TransportDuesDetails.Driver_Contact_No " +
            "FROM " +
                "ClassSection INNER JOIN " +
                "Student_Enr ON  ClassSection.clsSecID =  Student_Enr.ClassSought LEFT OUTER JOIN " +
                "TransportDuesDetails ON  Student_Enr.AdmNo =  TransportDuesDetails.StEnrollNo " +
           "GROUP BY  ClassSection.clsSec_Description,  TransportDuesDetails.TransRecID,  Student_Enr.AdmNo,  Student_Enr.Student_Name,  Student_Enr.FatherName,  Student_Enr.Mobile1, " +
            "TransportDuesDetails.Month,  TransportDuesDetails.Year,  TransportDuesDetails.Date_Payment,  TransportDuesDetails.VoucherNo,  TransportDuesDetails.V_Type, " +
            "TransportDuesDetails.V_No,  TransportDuesDetails.Drive_Info,  TransportDuesDetails.Driver_Contact_No  ORDER BY  ClassSection.clsSec_Description";

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
        {
            da_.Dispose();
        }
        this._gvList.DataSource = dt_;
        this._gvList.DataBind();

    }
    protected void _ShowGridClassVal(string ClassVal)
    {
        DataTable dt_ = new DataTable();
        //dt_ = obj.StudentDuesCollection.GetAsDataTable("EnrollNo='" + Enroll + "'","Month Desc");

        string Qry = "";
        Qry = "SELECT        " +
        "TransportDuesDetails.TransRecID,  " +
        "Student_Enr.AdmNo,  " +
        "ClassSection.clsSec_Description, " +
        "Student_Enr.Student_Name,  " +
        "Student_Enr.FatherName, " +
        "Student_Enr.Mobile1,  " +
        "TransportDuesDetails.Month+'-'+CAST(TransportDuesDetails.Year AS VARCHAR) AS Month_Year, " +
        "SUM( TransportDuesDetails.Charges) AS Charges, " +
        "SUM( TransportDuesDetails.Paid_Amount) AS Paid, " +
        "TransportDuesDetails.Date_Payment,  " +
        "TransportDuesDetails.VoucherNo,  " +
        "TransportDuesDetails.V_Type,  " +
        "TransportDuesDetails.V_No,  " +
        "TransportDuesDetails.Drive_Info," +
        "TransportDuesDetails.Driver_Contact_No " +
            "FROM " +
                "ClassSection INNER JOIN " +
                "Student_Enr ON  ClassSection.clsSecID =  Student_Enr.ClassSought LEFT OUTER JOIN " +
                "TransportDuesDetails ON  Student_Enr.AdmNo =  TransportDuesDetails.StEnrollNo " +
           "GROUP BY  ClassSection.clsSec_Description,  TransportDuesDetails.TransRecID,  Student_Enr.AdmNo,  Student_Enr.Student_Name,  Student_Enr.FatherName,  Student_Enr.Mobile1, " +
            "TransportDuesDetails.Month,  TransportDuesDetails.Year,  TransportDuesDetails.Date_Payment,  TransportDuesDetails.VoucherNo,  TransportDuesDetails.V_Type, " +
            "TransportDuesDetails.V_No,  TransportDuesDetails.Drive_Info,  TransportDuesDetails.Driver_Contact_No " +
            "HAVING (dbo.ClassSection.clsSec_Description = '" + ClassVal + "')" +
            "ORDER BY  ClassSection.clsSec_Description";
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
        {
            da_.Dispose();
        }
        this._gvList.DataSource = dt_;
        this._gvList.DataBind();

    }
    protected void _ShowGridEnroll(string EnrollNo)
    {
        DataTable dt_ = new DataTable();
        //dt_ = obj.StudentDuesCollection.GetAsDataTable("EnrollNo='" + Enroll + "'","Month Desc");

        string Qry = "";
        Qry = "SELECT        " +
        "TransportDuesDetails.TransRecID,  " +
        "Student_Enr.AdmNo,  " +
        "ClassSection.clsSec_Description, " +
        "Student_Enr.Student_Name,  " +
        "Student_Enr.FatherName, " +
        "Student_Enr.Mobile1,  " +
        "TransportDuesDetails.Month+'-'+CAST(TransportDuesDetails.Year AS VARCHAR) AS Month_Year, " +
        "SUM( TransportDuesDetails.Charges) AS Charges, " +
        "SUM( TransportDuesDetails.Paid_Amount) AS Paid, " +
        "TransportDuesDetails.Date_Payment,  " +
        "TransportDuesDetails.VoucherNo,  " +
        "TransportDuesDetails.V_Type,  " +
        "TransportDuesDetails.V_No,  " +
        "TransportDuesDetails.Drive_Info," +
        "TransportDuesDetails.Driver_Contact_No " +
            "FROM " +
                "ClassSection INNER JOIN " +
                "Student_Enr ON  ClassSection.clsSecID =  Student_Enr.ClassSought LEFT OUTER JOIN " +
                "TransportDuesDetails ON  Student_Enr.AdmNo =  TransportDuesDetails.StEnrollNo " +
           "GROUP BY  ClassSection.clsSec_Description,  TransportDuesDetails.TransRecID,  Student_Enr.AdmNo,  Student_Enr.Student_Name,  Student_Enr.FatherName,  Student_Enr.Mobile1, " +
            "TransportDuesDetails.Month,  TransportDuesDetails.Year,  TransportDuesDetails.Date_Payment,  TransportDuesDetails.VoucherNo,  TransportDuesDetails.V_Type, " +
            "TransportDuesDetails.V_No,  TransportDuesDetails.Drive_Info,  TransportDuesDetails.Driver_Contact_No " +
            "HAVING        (Student_Enr.AdmNo = '" + EnrollNo + "')" +
            "ORDER BY  ClassSection.clsSec_Description";

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
        {
            da_.Dispose();
        }
        this._gvList.DataSource = dt_;
        this._gvList.DataBind();

    }
    protected void cmbGridView_SelectedIndexChanged(object sender, Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs e)
    {
        _ShowGridClassVal(cmbGridView.SelectedItem.Text);
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        using (var obj_ = new simsdb())
        {
            var row_ = new TransportDuesDetailsRow();
            row_.V_Information = txtVInfo.Text;
            row_.Route = txtRouteDescription.Text;
            row_.Routing = cmbRoutingConfig.SelectedItem.Text;
            row_.V_No = txtVNo.Text;
            row_.V_Type = cmbVType.SelectedItem.Text;
            row_.No_of_Seats = cmbNoofSeats.SelectedItem.Text;
            row_.Drive_Info = txtDriverInfo.Text;
            row_.Driver_Contact_No = txtDriverContact.Text;
            row_.Driver_Address = txtDriverAddress.Text;
            row_.Month = cmbMonth.SelectedItem.Text;
            row_.Year = Convert.ToInt32(cmbYear.SelectedItem.Text);
            row_.Charges = Convert.ToInt32(txtMonthlyCharges.Text);
            row_.Paid_Amount = Convert.ToInt32(txtPaidAmount.Text);
            row_.Date_Payment = Convert.ToDateTime(dtPaymentDate.SelectedDate.ToString());
            row_.VoucherNo = txtVoucherNo.Text;
            row_.StEnrollNo = txtEnrollNo.Text;
            row_.IsDeleted = false;
            obj_.TransportDuesDetailsCollection.Insert(row_);
            _ShowGridEnroll(this.txtEnrollNo.Text);
            lblMessage.Text = "Record Inserted...";
            obj_.Dispose();

        }
    }
    protected void imgBtnDelete_Command(object sender, CommandEventArgs e)
    {
        var obj_ = new simsdb();
        var row_ = new Student_EnrRow();
        try
        {
            row_ = obj_.Student_EnrCollection.GetRow("AdmNo='" + e.CommandArgument.ToString() + "'");
            txtEnrollNo.Text = row_.AdmNo.ToString();
            obj_.Dispose();
        }
        catch (Exception ex)
        {
            string msgs = ex.Message.ToString();

        }
        finally
        {
            obj_.Dispose();
        }
    }
}