using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using sims.simsdb.DAL;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Forms_StudentDuesRegisterForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillYearMonths();
            FillCombos();
        }

    }

    protected void FillCombos()
    {
        using (var obj = new simsdb())
        {
            System.Data.DataTable dt = obj.SessionCollection.GetAllAsDataTable();
            simsdbCommon.FillTelericCombo(ref cmbSession, dt, "SessionName", "SessionID", true, "--Please Select Session--", "0");
        }
        using (var obj = new simsdb())
        {
            DataTable dt = obj.ProgramCollection.GetAllAsDataTable();
            simsdbCommon.FillTelericCombo(ref cmbProgram, dt, "ProgramDesc", "ProgramID", true, "--Please Select Program--", "0");
        }
        using (var obj = new simsdb())
        {
            DataTable dt = obj.ClassSectionCollection.GetAllAsDataTable();
            simsdbCommon.FillTelericCombo(ref cmbClassEnrolled, dt, "clsSec_Description", "clsSecID", true, "--Please Select Class Sec--", "0");

        }
        //using (var obj = new simsdb())
        //{
        //    DataTable dt = obj.FlagSetterCollection.GetAllAsDataTable();
        //    simsdbCommon.FillTelericCombo(ref cmbFlag, dt, "FlagLabel", "FlagID", true, "--Please Select Flag--", "0");
        //}
        using (var obj = new simsdb())
        {
            DataTable dt = obj.FeeStructureSessionCollection.GetAllAsDataTable();
            simsdbCommon.FillTelericCombo(ref cmbFeeStructure, dt, "FeeStructureDesc", "FeeStructID", true, "--Please Select Fee Structure--", "0");
        }
    }
    protected void FillYearMonths()
    {
        //this.cmbYear.Items.Insert(0, new Telerik.Web.UI.RadComboBoxItem("--Please Select--", ""));
        int index = 1;
        for (int i = 2017; i > 1980; i--)
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
    protected void GetStudents(string SessionID, string ProgID, string ClassID)
    {
        var obj_ = new simsdb();
        DataTable dt_ = new DataTable();
        dt_ = obj_.Student_EnrCollection.GetAsDataTable("SessionID=" + SessionID + " AND ProgramApplied='" + ProgID + "' AND CLASSSOUGHT=" + cmbClassEnrolled.SelectedValue, " STUDENT_NAME");

        simsdbCommon.FillTelericCombo(ref cmbStudent, dt_, "Student_Name", "STID");
        //var Item_ = new Telerik.Web.UI.RadComboBoxItem();
        //Item_.Text = i.ToString();
        //Item_.Value = index.ToString();
        //this.cmbStudent.Items.Add(Item_);
    }
    protected void cmbFeeStructure_SelectedIndexChanged(object sender, Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs e)
    {
        string Qry = "SELECT " +
                    " StudentFeeCard.Year, " +
                    " StudentFeeCard.Month, " +
                    " StudentFeeCard.AdmissionFee+ " +
                    " StudentFeeCard.AdmProcessFee+ " +
                    " StudentFeeCard.OnlineFee+ " +
                    " StudentFeeCard.BuildingFee+ " +
                    " StudentFeeCard.TutionFee+  StudentFeeCard.LibraryFee+" +
                    " StudentFeeCard.ScienceLabFee+ " +
                    " StudentFeeCard.CSLabFee+ " +
                    " StudentFeeCard.ExamFee+ " +
                    " StudentFeeCard.CertificateIssueFee+ " +
                    " StudentFeeCard.AnnualCharges+" +
                    " StudentFeeCard.Misc+" +
                    " StudentFeeCard.OtherFee AS TOTAL_DUES" +
                    "  FROM             StudentFeeCard INNER JOIN " +
                                             " Student_Enr ON  StudentFeeCard.EnrollNo =  Student_Enr.FormNo INNER JOIN  " +
                                             " FeeStructureSession ON  StudentFeeCard.FeeStructureID =  FeeStructureSession.FeeStructID INNER JOIN  " +
                                             " Session ON  StudentFeeCard.SessionID =  Session.SessionID " +
                    " WHERE ( StudentFeeCard.Month ='" + cmbMonth.SelectedItem.Text + "') AND ( StudentFeeCard.YEAR =" + Convert.ToInt32(cmbYear.SelectedItem.Text) + ")AND ( StudentFeeCard.EnrollNo ='" + txtEnrollNo.Text + "')";

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
        { da_.Dispose(); }

        if (dt_ != null)
            txtTotalDues.Text = dt_.Rows[0]["Total_Dues"].ToString();
        else
            txtTotalDues.Text="Financials Not Available...";
    }
    protected void cmbClassEnrolled_SelectedIndexChanged(object sender, Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs e)
    {
        GetStudents(cmbSession.SelectedValue, cmbProgram.SelectedItem.Text, cmbClassEnrolled.SelectedValue);
    }
    protected void cmbStudent_SelectedIndexChanged(object sender, Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs e)
    {
        var obj_ = new simsdb();
        var row_ = new Student_EnrRow();
        row_ = obj_.Student_EnrCollection.GetRow("Student_Name='" + cmbStudent.SelectedItem.Text + "'");
        txtEnrollNo.Text = row_.AdmNo;
        txtFatherName.Text = row_.FatherName.ToUpper();
        obj_.Dispose();
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        using (var obj_ = new simsdb())
        {
            var row_ = new StudentDuesRow();
            row_.StID = Convert.ToInt32(this.cmbStudent.SelectedValue);
            row_.EnrollNo = txtEnrollNo.Text;
            row_.Session = cmbSession.SelectedItem.Text;
            row_.ProgramName = cmbProgram.SelectedItem.Text;
            row_.FeeStructSessionID = Convert.ToInt32(cmbFeeStructure.SelectedValue);
            row_.ClassDesc = cmbClassEnrolled.SelectedItem.Text;
            row_.Month = cmbMonth.SelectedItem.Text;
            row_.Year = Convert.ToInt32(cmbYear.SelectedItem.Text);
            row_.Total_Dues = Convert.ToInt32(txtTotalDues.Text);
            row_.Paid_Amount = Convert.ToInt32(txtPaidAmount.Text);
            row_.PaymentMed = cmbPaymentMed.SelectedItem.Text;
            row_.PaidDated = this.DateTransaction.SelectedDate.ToString();
            row_.PaidViaVoucherNo = txtVoucherNo.Text;
            row_.IsDeleted = false;
            row_.Date_Created = Convert.ToDateTime(System.DateTime.Now.ToShortDateString().ToString());
            obj_.StudentDuesCollection.Insert(row_);
            lblMessage.Text = "Row Inserted!";
            _ShowGrid(txtEnrollNo.Text);
            obj_.Dispose();
        }
    }
    protected void _ShowGrid(string Enroll)
    {
        DataTable dt_ = new DataTable();
        //dt_ = obj.StudentDuesCollection.GetAsDataTable("EnrollNo='" + Enroll + "'","Month Desc");

        string Qry = "";
        Qry = "SELECT        " +
            "StudentDues.DueID," +
            " StudentDues.EnrollNo," +
            " StudentDues.StID, " +
            " Student_Enr.Student_Name," +
            " Student_Enr.FatherName, " +
            " StudentDues.Session, " +
            " StudentDues.ProgramName," +
            " StudentDues.ClassDesc," +
            " StudentDues.Month, " +
            " StudentDues.Year, " +
            " SUM( StudentDues.Total_Dues) AS Dues," +
            " SUM( StudentDues.Paid_Amount) AS Paid, " +
            " StudentDues.PaymentMed, " +
            " CAST( StudentDues.PaidDated AS DATE) AS Date_Paid," +
            " StudentDues.PaidViaVoucherNo, " +
            " CAST( StudentDues.Date_Created AS date) AS Transaction_Date " +
            "FROM             StudentDues INNER JOIN Student_Enr ON  StudentDues.StID =  Student_Enr.STID AND  StudentDues.EnrollNo =  Student_Enr.AdmNo " +
            "GROUP BY  "+
                        " StudentDues.DueID,  StudentDues.StID,  Student_Enr.Student_Name,  Student_Enr.FatherName,  StudentDues.Session,  StudentDues.ProgramName,  StudentDues.ClassDesc, " +
                        " StudentDues.Month,  StudentDues.Year,  StudentDues.PaymentMed,  StudentDues.PaidDated,  StudentDues.PaidViaVoucherNo,  StudentDues.Date_Created, " +
                        " StudentDues.EnrollNo " + "  HAVING        ( StudentDues.EnrollNo = '" + txtEnrollNo.Text + "')";

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
}