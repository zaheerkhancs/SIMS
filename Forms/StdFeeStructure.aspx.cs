using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using sims.simsdb.DAL;
using System.Data;
public partial class Forms_StdFeeStructure : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string stid_ = "";
        if (!IsPostBack)
        {
            if (Request.QueryString["StiD"] != null)
            {
                stid_ = Request.QueryString["StID"];
                GetRecStudent(stid_);
            }
            else
            {
                FillCombos();
                FillYearMonths(); 
            }
            FillCombos();
            FillYearMonths();

            // Off methods
            //showGrid();
            //lock_();
            //unlock_();
            //clearConstrols();
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
    protected void GetRecStudent(string _stID)
    {
        using (var obj_ = new simsdb())
        {
            var row_ = new Student_EnrRow();
            row_ = obj_.Student_EnrCollection.GetRow("StID=" + Convert.ToInt32(_stID));
            this.cmbSession.SelectedValue = row_.SessionID.ToString();
            this.cmbProgram.SelectedValue = row_.ProgramApplied.ToString();
            this.txtEnrollNo.Text = row_.FormNo.ToString();
            int clas_ = row_.ClassSought;           
        }

    }
    protected string GetClass(Int32 clasID_)
    {
        var r_ = new ClassSectionRow();

        using (var obj_ = new simsdb())
        {
            r_ = obj_.ClassSectionCollection.GetRow("clsSecID=" + clasID_);
        }
        return r_.ClsSec_Description;

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
            DataTable dt = obj.FeeStructureSessionCollection.GetAllAsDataTable();
            simsdbCommon.FillTelericCombo(ref cmbFeeStructure, dt, "FeeStructureDesc", "FeeStructID", true, "--Please Select Fee Structure--", "0");//),;//
        }
        using (var obj = new simsdb())
        {
            DataTable dt = obj.FlagSetterCollection.GetAllAsDataTable();
            simsdbCommon.FillTelericCombo(ref cmbFlag, dt, "FlagLabel", "FlagID", true, "--Please Select Flag--", "0");
        }
        using (var obj = new simsdb())
        {
            DataTable dt = obj.FlagSetterCollection.GetAllAsDataTable();
            simsdbCommon.FillTelericCombo(ref cmbGridView, dt, "FlagLabel", "FlagID", true, "--Please Select Flag--", "0");
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        using (var obj_ = new simsdb())
        {
            var row_ = new StudentFeeCardRow();
            row_.SessionID = Convert.ToInt32(cmbSession.SelectedValue);
            row_.ProgramID = Convert.ToInt32(cmbProgram.SelectedValue);
            row_.FeeStructureID = Convert.ToInt32(cmbFeeStructure.SelectedValue);
            row_.EnrollNo = txtEnrollNo.Text.ToUpper();
            row_.StudentName = txtStudentName.Text;
            row_.FatherName = txtFatherName.Text;
            row_.Year = Convert.ToInt32(cmbYear.SelectedItem.Text);
            row_.Month = cmbMonth.SelectedItem.Text;
            row_.AdmissionFee = Convert.ToInt32(txtAdmissionFee.Text);
            row_.AdmProcessFee = Convert.ToInt32(txtAdmissionFee.Text);
            row_.OnlineFee = Convert.ToInt32(txtBuildingFee.Text);
            row_.BuildingFee = Convert.ToInt32(txtBuildingFee.Text);
            row_.TutionFee = Convert.ToInt32(txtTutionFee.Text);
            row_.LibraryFee = Convert.ToInt32(txtLibraryFee.Text);
            row_.ScienceLabFee = Convert.ToInt32(txtScienceLabFee.Text);
            row_.CSLabFee = Convert.ToInt32(txtCSLabFee.Text);
            row_.ExamFee = Convert.ToInt32(txtExaminationFee.Text);
            row_.CertificateIssueFee = Convert.ToInt32(txtCertificateIssuanceFee.Text);
            row_.AnnualCharges = Convert.ToInt32(txtOtherAnualCharges.Text);
            row_.Misc = Convert.ToInt32(txtMicsFeeStructure.Text);
            row_.Desciption = txtCommentsDesc.Text;
            row_.OtherFee = Convert.ToInt32(txtOtherFee.Text);
            row_.Comments = txtComments_.Text;
            row_.Note_Comments = txtNote.Text;
            row_.Mood_Payment = cmbMoodofPayment.SelectedItem.Text;
            row_.Chk_No = txtChequeOtherNo.Text;
            row_.Bank_Detail = txtBankDetail.Text;
            row_.DateCreated = Convert.ToDateTime(System.DateTime.Now.ToLongDateString().ToString());
            row_.DateModified = Convert.ToDateTime(System.DateTime.Now.ToLongDateString().ToString());
            row_.ModifiedBy = "zaheer";
            row_.IsDeleted = false;
            row_.FlagID = Convert.ToInt32(cmbFlag.SelectedValue);
            obj_.StudentFeeCardCollection.Insert(row_);
            //
            var getRec_ = new GetFlyRec();
            string GridQry_ = "";
            GridQry_ =
                "SELECT  dbo.StudentFeeCard.FeeGenID, dbo.Session.SessionName, dbo.Program.ProgramDesc, dbo.StudentFeeCard.EnrollNo, dbo.StudentFeeCard.StudentName, dbo.StudentFeeCard.FatherName," +
                         "cast(dbo.StudentFeeCard.Month+'-'+cast(dbo.StudentFeeCard.Year as varchar) as varchar) as Month_Year, dbo.StudentFeeCard.CurrentClassEnrolled, dbo.StudentFeeCard.AdmissionFee, dbo.StudentFeeCard.AdmProcessFee, dbo.StudentFeeCard.OnlineFee, dbo.StudentFeeCard.BuildingFee," +
                         "dbo.StudentFeeCard.TutionFee, dbo.StudentFeeCard.LibraryFee, dbo.StudentFeeCard.ScienceLabFee, dbo.StudentFeeCard.CSLabFee, dbo.StudentFeeCard.ExamFee, dbo.StudentFeeCard.CertificateIssueFee," +
                         "dbo.StudentFeeCard.AnnualCharges, dbo.StudentFeeCard.Misc, dbo.StudentFeeCard.Desciption, dbo.StudentFeeCard.OtherFee, dbo.StudentFeeCard.Comments, dbo.StudentFeeCard.Note_Comments, " +
                         "dbo.StudentFeeCard.Mood_Payment, dbo.StudentFeeCard.Chk_No, dbo.StudentFeeCard.Bank_Detail, dbo.StudentFeeCard.DateCreated, dbo.StudentFeeCard.SessionID, dbo.StudentFeeCard.ProgramID  " +
                    "FROM            dbo.StudentFeeCard INNER JOIN  " +
                                             "dbo.Session ON dbo.StudentFeeCard.SessionID = dbo.Session.SessionID INNER JOIN  " +
                                             "dbo.Program ON dbo.StudentFeeCard.ProgramID = dbo.Program.ProgramID INNER JOIN  " +
                                             "dbo.FlagSetter ON dbo.StudentFeeCard.FlagID = dbo.FlagSetter.FlagID   " +
                    "WHERE        (dbo.StudentFeeCard.EnrollNo ='" + txtEnrollNo.Text + "') AND (dbo.StudentFeeCard.SessionID = " + cmbSession.SelectedValue + ")" +
                    "  ORDER BY dbo.StudentFeeCard.StudentName";
            DataTable dt_ = getRec_.Getdt(GridQry_);
            _GetShowRecGrid(dt_);
        }
    }
    protected void _GetShowRecGrid(DataTable dt)
    {
        _gvList.DataSource = dt;
        _gvList.DataBind();
    }
    protected void cmbFeeStructure_SelectedIndexChanged(object sender, Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs e)
    {
        var obj_ = new simsdb();
        var row_ = new FeeStructureSessionRow();
        row_ = obj_.FeeStructureSessionCollection.GetRow("FeeStructID=" + this.cmbFeeStructure.SelectedValue + "AND IsActive=1");
        //
        txtAdmissionFee.Text = row_.AdmissionFee.ToString();
        txtAdmissionProcessingFee.Text = row_.AdmProcessFee.ToString();
        txtOnlineFee.Text = row_.OnlineFee.ToString();
        txtExaminationFee.Text = row_.ExamFee.ToString();
        txtBuildingFee.Text = row_.BuildingFee.ToString();
        txtTutionFee.Text = row_.TutionFee.ToString();
        txtLibraryFee.Text = row_.LibraryFee.ToString();
        txtScienceLabFee.Text = row_.ScienceLabFee.ToString();
        txtCSLabFee.Text = row_.CSLabFee.ToString();
        txtExaminationFee.Text = row_.ExamFee.ToString();
        txtCertificateIssuanceFee.Text = row_.CertificateIssueFee.ToString();
        txtOtherAnualCharges.Text = row_.AnnualCharges.ToString();
        txtMicsFeeStructure.Text = row_.Misc.ToString();
        txtCommentsDesc.Text = row_.Desciption.ToString();
        txtOtherFee.Text = row_.OtherFee.ToString();
        txtComments_.Text = row_.Comments.ToString();
        obj_.Dispose();
    }
    protected void txtEnrollNo_TextChanged(object sender, EventArgs e)
    {
        var getRec = new GetFlyRec();
        var obj_ = new simsdb();
        var row_ = new Student_EnrRow();
        row_ = obj_.Student_EnrCollection.GetRow("FormNo='" + txtEnrollNo.Text.Trim() + "'");
        txtStudentName.Text = row_.Student_Name.ToString();
        txtFatherName.Text = row_.FatherName.ToString();
        obj_.Dispose();

        string GridQry_ = "";
        GridQry_ =
            "SELECT  dbo.StudentFeeCard.FeeGenID, dbo.Session.SessionName, dbo.Program.ProgramDesc, dbo.StudentFeeCard.EnrollNo, dbo.StudentFeeCard.StudentName, dbo.StudentFeeCard.FatherName," +
                     "cast(dbo.StudentFeeCard.Month+'-'+cast(dbo.StudentFeeCard.Year as varchar) as varchar) as Month_Year, dbo.StudentFeeCard.CurrentClassEnrolled, dbo.StudentFeeCard.AdmissionFee, dbo.StudentFeeCard.AdmProcessFee, dbo.StudentFeeCard.OnlineFee, dbo.StudentFeeCard.BuildingFee," +
                     "dbo.StudentFeeCard.TutionFee, dbo.StudentFeeCard.LibraryFee, dbo.StudentFeeCard.ScienceLabFee, dbo.StudentFeeCard.CSLabFee, dbo.StudentFeeCard.ExamFee, dbo.StudentFeeCard.CertificateIssueFee," +
                     "dbo.StudentFeeCard.AnnualCharges, dbo.StudentFeeCard.Misc, dbo.StudentFeeCard.Desciption, dbo.StudentFeeCard.OtherFee, dbo.StudentFeeCard.Comments, dbo.StudentFeeCard.Note_Comments, " +
                     "dbo.StudentFeeCard.Mood_Payment, dbo.StudentFeeCard.Chk_No, dbo.StudentFeeCard.Bank_Detail, dbo.StudentFeeCard.DateCreated, dbo.StudentFeeCard.SessionID, dbo.StudentFeeCard.ProgramID  " +
                "FROM            dbo.StudentFeeCard INNER JOIN  " +
                                         "dbo.Session ON dbo.StudentFeeCard.SessionID = dbo.Session.SessionID INNER JOIN  " +
                                         "dbo.Program ON dbo.StudentFeeCard.ProgramID = dbo.Program.ProgramID INNER JOIN  " +
                                         "dbo.FlagSetter ON dbo.StudentFeeCard.FlagID = dbo.FlagSetter.FlagID   " +
                "WHERE        (dbo.StudentFeeCard.EnrollNo ='" + txtEnrollNo.Text + "')  ORDER BY dbo.StudentFeeCard.StudentName";
        DataTable dt_ = getRec.Getdt(GridQry_);
        _GetShowRecGrid(dt_);
        _gvList.DataBind();
        
    }
    protected void imgBtnTransportDetails_Command(object sender, CommandEventArgs e)
    {
        Response.Redirect("TransportDuesRec.aspx?EnrollNo='" + e.CommandArgument.ToString() + "'");
    }
}
