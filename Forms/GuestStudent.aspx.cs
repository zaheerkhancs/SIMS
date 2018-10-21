using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using sims.simsdb.DAL;
using System.Data;


public partial class Forms_GuestStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showGrid();
            //lock_();
            //unlock_();
            //clearConstrols();
            FillCombos();
            this.txtFormNo.Text = "";
        }
    }

    protected void showGrid()
    {
        var obj_ = new simsdb();
        DataTable dt_ = new DataTable();
        dt_ = obj_.GuestStudentCollection.GetAsDataTable("FLAG!=2", "STUDENTNAME");
        this._gvList.DataSource = dt_;
        this._gvList.DataBind();
        obj_.Dispose();
    }
    protected void FillCombos()
    {
        using (var obj = new simsdb())
        {
            DataTable dt = obj.SessionCollection.GetAllAsDataTable();
            simsdbCommon.FillTelericCombo(ref cmbSession, dt, "SessionName", "SessionID", true, "--Please Select Session--", "0");
        }
        using (var obj = new simsdb())
        {
            DataTable dt = obj.ProgramCollection.GetAllAsDataTable();
            simsdbCommon.FillTelericCombo(ref cmbProgram, dt, "ProgramDesc", "ProgramID", true, "--Please Select Flag--", "0");
        }
        using (var obj = new simsdb())
        {
            DataTable dt = obj.SchoolLastAttCollection.GetAllAsDataTable();
            simsdbCommon.FillTelericCombo(ref cmbSchoolLast, dt, "PrevSchoolName", "SLAID", true, "--Please Select Prev School--", "0");
        }

        using (var obj = new simsdb())
        {
            DataTable dt = obj.FlagSetterCollection.GetAllAsDataTable();
            simsdbCommon.FillTelericCombo(ref cmbFlag, dt, "FlagLabel", "FlagID", true, "--Please Select Flag--", "0");
            simsdbCommon.FillTelericCombo(ref cmbGridView, dt, "FlagLabel", "FlagID", true, "--Please Select Flag--", "0");
        }
        using (var obj = new simsdb())
        {
            DataTable dt = obj.ClassSectionCollection.GetAllAsDataTable();
            simsdbCommon.FillTelericCombo(ref cmbClass, dt, "clsSec_Description", "clsSecID", true, "--Please Select Class Sec--", "0");

        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        lblMessage.Text = "";
        var obj_ = new simsdb();
        var row_ = new GuestStudentRow();


        try
        {
            string GuestID_ = this.txtFormNo.Text;
            row_.GuestID = GuestID_.ToString();
            row_.SessionID = this.cmbSession.SelectedItem.Text.ToString();
            row_.ProgramSought = this.cmbProgram.SelectedItem.Text.ToString();
            row_.Class = Convert.ToInt32(cmbClass.SelectedValue);
            row_.StudentName = this.txtStudentNme.Text.ToString();
            row_.FatherName = this.txtFathername.Text.ToString();
            row_.MobileNo = this.txtMobileNo.Text;
            row_.LastSchool = this.cmbSchoolLast.SelectedItem.Text.ToString();
            row_.Gender = this.cmbGender.SelectedItem.Text.ToString();
            row_.Address = this.txtaddress.Text;
            row_.DateCreated = System.DateTime.Now;
            row_.CreatedBy = "ZAHEER";
            row_.Flag = Convert.ToInt32(this.cmbFlag.SelectedValue);
            obj_.GuestStudentCollection.Insert(row_);
            lblMessage.Text = "Record Inserted!";
            showGrid();
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message.ToString();
        }
        finally
        {
            obj_.Dispose();
        }


    }
    private Int32 GetID()
    {
        var row_ = new GuestStudentRow();
        var obj_ = new simsdb();
        row_ = obj_.GuestStudentCollection.GetRow("GuestID IN (SELECT TOP 1 GuestID FROM GuestStudent ORDER BY GuestID DESC)");
        string retStr = row_.GuestID.ToString();
        var result = retStr.Substring(retStr.LastIndexOf('-') + 1);

        int incr = Convert.ToInt32(result) + 1;
        return incr;
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {

    }


    protected void cmbSession_SelectedIndexChanged(object sender, Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs e)
    {
        string str_ = GetID().ToString();
        this.txtFormNo.Text = this.cmbSession.SelectedItem.Text.ToString() + '-' + str_;
    }
    protected void imgBtnUpload_Command(object sender, CommandEventArgs e)
    {
        Response.Redirect("NewEnStudent.aspx?GuestID=" + e.CommandArgument);
    }
    
    protected void cmbGridView_SelectedIndexChanged(object sender, Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs e)
    {
        var obj_ = new simsdb();
        DataTable dt_ = new DataTable();
        int setter_ = Convert.ToInt32(this.cmbGridView.SelectedValue.ToString());
        dt_ = obj_.GuestStudentCollection.GetAsDataTable("Flag=" +setter_, "StudentName");
        this._gvList.DataSource = dt_;
        this._gvList.DataBind();
        obj_.Dispose();

    }
    protected void btnLoad_Click(object sender, EventArgs e)
    {
        showGrid();
    }
    protected void imgBtnDelete_Command(object sender, CommandEventArgs e)
    {
        using(var obj_=new simsdb())
        {
            obj_.GuestStudentCollection.DeleteByPrimaryKey(e.CommandArgument.ToString());
            obj_.Dispose();
            showGrid();
        }
    }
    protected void btnAddPrevSchool_Click(object sender, EventArgs e)
    {
        using (var obj_ = new simsdb())
        {
            var row_ = new SchoolLastAttRow();
            row_.PrevSchoolName = txtPrevSchool.Text;
            row_.IsActive = true;
            row_.Date_Modified = System.DateTime.Now;
            row_.IsDeleted = false;
            obj_.SchoolLastAttCollection.Insert(row_);
            obj_.Dispose();
            FillCombos();
        }

    }
}