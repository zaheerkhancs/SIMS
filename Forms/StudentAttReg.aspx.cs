using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using sims.simsdb.DAL;
using System.Data.SqlClient;
using System.Data;
public partial class Forms_StudentAttReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            FillCombos();
            FillYearMonths();
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
            simsdbCommon.FillTelericCombo(ref cmbClassSection, dt, "clsSec_Description", "clsSecID", true, "--Please Select Class Sec--", "0");

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
}