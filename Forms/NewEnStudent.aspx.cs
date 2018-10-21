using sims.simsdb.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms_NewEnStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillCombos();
            string GuestID_ = Request.QueryString["GuestID"].Trim();
            GetPopulate(GuestID_);
            showGrid();

        }

    }
    protected void showGrid()
    {
        using (var obj = new simsdb())
        {
            DataTable dt_ = new DataTable();
            dt_ = obj.vw_Stinfo_GridCollection.GetAllAsDataTable();
            _gvList.DataSource = dt_;
            _gvList.DataBind();
 
        }
    }
    protected void GetPopulate(string GID_)
    {
        var obj_ = new simsdb();
        var row_ = new GuestStudentRow();

        try
        {

            row_ = obj_.GuestStudentCollection.GetRow("GuestID='" + GID_ + "'");
            string str_ = row_.GuestID.ToString();
            this.txtFormNo.Text = str_;
            cmbSession.SelectedValue = row_.SessionID;
            txtStudentNme.Text = row_.StudentName.ToString();
            txtFathername.Text = row_.FatherName.ToString();
            txtMobileNo.Text = row_.MobileNo.ToString();
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

    //Fill Combo Boxes

    protected void FillCombos()
    {
       
        using (var obj = new simsdb())
        {
            DataTable dt = obj.SchoolLastAttCollection.GetAllAsDataTable();
            simsdbCommon.FillTelericCombo(ref cmbSchoolLast, dt, "PrevSchoolName", "SLAID", true, "--Please Select Prev School--", "0");
        }
        using (var obj = new simsdb())
        {
            DataTable dt = obj.SessionCollection.GetAllAsDataTable();
            simsdbCommon.FillTelericCombo(ref cmbSession, dt, "SessionName", "SessionID", true, "--Please Select Session--", "0");
        }
        using (var obj = new simsdb())
        {
            DataTable dt = obj.ClassSectionCollection.GetAllAsDataTable();
            simsdbCommon.FillTelericCombo(ref cmbClassSectionABC, dt, "clsSec_Description", "clsSecID", true, "--Please Select Class Sec--", "0");

        }
        using (var obj = new simsdb())
        {
            DataTable dt = obj.ProgramCollection.GetAllAsDataTable();
            simsdbCommon.FillTelericCombo(ref cmbProgram, dt, "ProgramDesc", "ProgramID", true, "--Please Select Program--", "0");
        }
        using (var obj = new simsdb())
        {
            DataTable dt = obj.FlagSetterCollection.GetAllAsDataTable();
            simsdbCommon.FillTelericCombo(ref cmbFlag, dt, "FlagLabel", "FlagID", true, "--Please Select Flag--", "0");
        }
    }
    //public static int CalculateAge(DateTime birthDate)
    //{
    //    DateTime now = DateTime.Today;
    //    int years = now.Year - birthDate.Year;

    //    if (now.Month < birthDate.Month || (now.Month == birthDate.Month && now.Day < birthDate.Day))
    //        --years;
    //    return years;
    //}
    protected void UpdateGuest(string _GuestID, string fval)
    {
        using(var obj=new simsdb())
        {
            var rowUp_ = new GuestStudentRow();
            var row_=new GuestStudentRow();
            row_=obj.GuestStudentCollection.GetRow("GuestID='"+_GuestID+"'");
             string SessionID_=row_.SessionID;
                  string ProgramSought=row_.ProgramSought;
                  Int32 Class=row_.Class;
                  string StudentName=row_.StudentName;
                  string FatherName=row_.FatherName;
                  string MobileNo=row_.MobileNo;
                  string LastSchool=row_.LastSchool;
                  string Gender=row_.Gender;
                  string Address=row_.Address;
                  DateTime DateCreated=row_.DateCreated;
                  string CreatedBy=row_.CreatedBy;
                  int Flag=Convert.ToInt32(fval);
            //wrap in another row object
                  rowUp_.GuestID = _GuestID;
                  rowUp_.SessionID = SessionID_;
                  rowUp_.ProgramSought = ProgramSought;
                  rowUp_.Class = Class;
                  rowUp_.StudentName = StudentName;
                  rowUp_.FatherName = FatherName;
                  rowUp_.MobileNo = MobileNo;
                  rowUp_.LastSchool = LastSchool;
                  rowUp_.Gender = Gender;
                  rowUp_.Address = Address;
                  rowUp_.DateCreated = DateCreated;
                  rowUp_.CreatedBy = CreatedBy;
                  rowUp_.Flag = Flag;
                  obj.GuestStudentCollection.Update(rowUp_);
                  obj.Dispose();
        }
    }
    protected void btnAdd0_Click(object sender, EventArgs e)
    {
        var obj_ = new simsdb();
        var row_ = new Student_EnrRow();
        try
        {
            row_.FormNo = txtFormNo.Text;
            row_.AdmNo = txtFormNo.Text;
            row_.SessionID = Convert.ToInt32(cmbSession.SelectedValue);
            row_.Admission_year = cmbSession.SelectedItem.Text;
            row_.Student_Name = txtStudentNme.Text.ToUpper();
            row_.DOB = Convert.ToDateTime(dtDob.SelectedDate.ToString()).ToShortDateString();
            row_.DOBinWords = Convert.ToDateTime(this.dtDoa.SelectedDate.ToString()).ToLongDateString();
            row_.Gender = cmbGender.SelectedItem.Text;
            row_.FatherName = txtFathername.Text.ToUpper();
            row_.FatherCNIC = txtCNIC.Text;
            row_.Occupation = txtFatherOccupation.Text;
            row_.ClassSought = Convert.ToInt32(cmbClassSectionABC.SelectedValue);
            row_.Prev_Class_Sec = Convert.ToInt32(cmbClassSectionABC.SelectedValue);
            row_.PrevSchool = cmbSchoolLast.SelectedItem.Text;
            row_.MediumSC = cmbMood.SelectedItem.Text;
            row_.Religion = cmbReligion.SelectedItem.Text;
            row_.Nationality = "Pakistan";
            row_.Address = "Per Add:" + txtPerAddress.Text;
            row_.Address2 = "Postal Add:" + txtPostAddress.Text;
            row_.Mobile1 = txtMobileNo.Text;
            row_.Mobile2 = txtMobileNo.Text;
            row_.Is_Hostel = cmbIsHostel.SelectedItem.Text;
            row_.Is_Transport = cmbIsTransport.SelectedItem.Text;
            row_.ProgramApplied = cmbProgram.SelectedItem.Text;
            row_.Is_ArmdForces = cmbIsArmForce.SelectedItem.Text;
            row_.ECP = txtEmergencyContactPerson.Text.ToUpper();
            row_.ECN = txtEmergencyContactNo.Text;
            row_.TypoGraphic = cmbtypography.SelectedItem.Text;
            row_.IsActive = true;
            row_.Flag = Convert.ToInt32(cmbFlag.SelectedValue);
            row_.IsDeleted = false;
            row_.DateModified = System.DateTime.Now;
            row_.DateCreated = System.DateTime.Now;
            row_.ModifiedBy="zaheer";
            row_.CreatedBy = "zaheer";
            obj_.Student_EnrCollection.Insert(row_);
            lblMessage.Text = "Row Inserted";
            //Guest Student Rec Updated           
            UpdateGuest( txtFormNo.Text, cmbFlag.SelectedValue);
            showGrid();
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
        finally
        {
            obj_.Dispose();
        }
    }
    protected void btnImgFee_Command(object sender, CommandEventArgs e)
    {
        Response.Redirect("FeeCard.aspx?StID=" + e.CommandArgument);
    }
}