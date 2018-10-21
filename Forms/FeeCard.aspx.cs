using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using sims.simsdb.DAL;
using System.Data;

public partial class Forms_FeeCard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         string stid_="";

        if (!IsPostBack)
        {
            stid_ = Request.QueryString["StID"];
            this.lblStID.Text = stid_;
            GetRecStudent(stid_);

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
        for (int i =2017; i > 1980; i--)
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
            this.txtClass.Text=GetClass(clas_).ToString();
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
    protected void btnSave_Click(object sender, EventArgs e)
    {
        var obj_ = new simsdb();
        try
        {
            //var row_ = new StudentFeeCardRow();
            //row_.StID = Convert.ToInt32(lblStID.Text);
            //row_.EnrollNo = txtEnrollNo.Text;
            //row_.SessionID = Convert.ToInt32(cmbSession.SelectedValue);
            //row_.ProgramID = Convert.ToInt32(cmbProgram.SelectedValue);
            //row_.FeeType = Convert.ToInt32(cmbFeeType.SelectedValue);
            //row_.Year = Convert.ToInt32(this.cmbYear.SelectedItem.Text);
            //row_.Month = this.cmbMonth.SelectedItem.Text;
            //row_.Description = txtDescription.Text;
            //row_.Note = txtDescription.Text;
            //row_.Installment = txtInstallment.Text;
            //row_.Balance = Convert.ToInt32(txtCreditAmount.Text);
            //row_.ShortBalance = Convert.ToInt32(txtDueAmount.Text) - Convert.ToInt32(txtInstallment.Text);
            //row_.Installment = txtInstallment.Text;


        }
        catch (Exception ex)
        {
            string msgs = ex.Message.ToString();

        }
        finally
        {
 
        }
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
            simsdbCommon.FillTelericCombo(ref cmbProgram, dt, "ProgramDesc", "ProgramID", true, "--Please Select Program--", "0");
        }
        using (var obj = new simsdb())
        {
            DataTable dt = obj.FeeTypeCollection.GetAllAsDataTable();
            simsdbCommon.FillTelericCombo(ref cmbFeeType, dt, "FeeTypeDesc", "FeeTypeID");//, true, "--Please Select Flag--", "0");
        }
        //using (var obj = new simsdb())
        //{
        //    DataTable dt = obj.ClassSectionCollection.GetAllAsDataTable();
        //    simsdbCommon.FillTelericCombo(ref cmbClassSectionABC, dt, "clsSec_Description", "clsSecID", true, "--Please Select Class Sec--", "0");

        //}
    }
}