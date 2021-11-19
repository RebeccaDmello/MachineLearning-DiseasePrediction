using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class DiabetesDisease : System.Web.UI.Page
{
    public SqlConnection conn;
    public SqlDataAdapter da;
    public DataSet ds;
    public string cs = Convert.ToString(System.Configuration.ConfigurationManager.AppSettings["connecting_string"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillddlUser();
        }
    }

    protected void fillddlUser()
    {
        conn = new SqlConnection(cs);
        conn.Open();
        da = new SqlDataAdapter();
        da.SelectCommand = new SqlCommand();
        da.SelectCommand.Connection = conn;
        da.SelectCommand.CommandText = "SELECT [Patient_Id] FROM [Patient_Details]";
        da.SelectCommand.CommandType = CommandType.Text;
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            ddl_PatientId.DataSource = dt;
            ddl_PatientId.DataBind();
            ddl_PatientId.Items.Insert(0, new ListItem("<<--Select-->>", "0"));
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        conn = new SqlConnection(cs);
        conn.Open();
        da = new SqlDataAdapter();
        da.SelectCommand = new SqlCommand();
        da.SelectCommand.Connection = conn;
        da.SelectCommand.CommandText = "select Patient_Name from Patient_Details where Patient_Id='" + ddl_PatientId.SelectedValue + "' ";
        da.SelectCommand.CommandType = CommandType.Text;
        ds = new DataSet();
        da.Fill(ds, "PatientDetails");

        if (ds.Tables["PatientDetails"].Rows.Count > 0)
        {
            txt_PatientName.Text = ds.Tables["PatientDetails"].Rows[0]["Patient_Name"].ToString();
        }
    }



    protected void btnSave_Click(object sender, EventArgs e)
    {
        //double TricepsSkinFoldThickness = Convert.ToDouble(txt_TricepsSkinFoldThickness.Text);
        //double PlasmaGlucose = Convert.ToDouble(txt_PlasmaGlucose.Text);
        //double DiastolicBloodPressure = Convert.ToDouble(txt_DiastolicBloodPressure.Text);
        //double SerumInsulin = Convert.ToDouble(txt_TwoHoureSerumInsulin.Text);
        //double BodyMassIndex = Convert.ToDouble(txt_BodyMassindex.Text);
        //int Age = Convert.ToInt16(txt_Age.Text);

        string patient_name = txt_PatientName.Text;
        string patient_id = ddl_PatientId.SelectedValue;

        if (txt_Age.Text != "" && txt_BodyMassindex.Text != "" && txt_DiastolicBloodPressure.Text != "" && txt_PatientName.Text != "" && txt_PlasmaGlucose.Text != "" && txt_TricepsSkinFoldThickness.Text != "" && txt_TwoHoureSerumInsulin.Text != "" && txtDiabetesPedigree.Text != "" && txtNumberpregnent.Text != "")
        {
            conn = new SqlConnection(cs);
            conn.Open();
            da = new SqlDataAdapter();
            da.SelectCommand = new SqlCommand();
            da.SelectCommand.Connection = conn;
            da.SelectCommand.CommandText = "insert into DiabetesDisease_Record( patient_id, d_Date, Age, number_of_times_pregnant, plasma_glucose_concentration, diastolic_blood_pressure, triceps_skin_fold_thickness, hour_serum_insulin, body_mass_index, diabetes_pedigree_function) values(@patient_id, @Date, @Age, @number_of_times_pregnant, @plasma_glucose_concentration, @diastolic_blood_pressure, @triceps_skin_fold_thickness, @hour_serum_insulin, @body_mass_index, @diabetes_pedigree_function)";
            da.SelectCommand.Parameters.AddWithValue("@patient_id", patient_id);
            da.SelectCommand.Parameters.AddWithValue("@Date", txtdate.Text);
            da.SelectCommand.Parameters.AddWithValue("@Age", txt_Age.Text);
            da.SelectCommand.Parameters.AddWithValue("@number_of_times_pregnant", txtNumberpregnent.Text);
            da.SelectCommand.Parameters.AddWithValue("@plasma_glucose_concentration", txt_PlasmaGlucose.Text);
            da.SelectCommand.Parameters.AddWithValue("@diastolic_blood_pressure", txt_DiastolicBloodPressure.Text);
            da.SelectCommand.Parameters.AddWithValue("@triceps_skin_fold_thickness", txt_TricepsSkinFoldThickness.Text);
            da.SelectCommand.Parameters.AddWithValue("@hour_serum_insulin", txt_TwoHoureSerumInsulin.Text);
            da.SelectCommand.Parameters.AddWithValue("@body_mass_index", txt_BodyMassindex.Text);
            da.SelectCommand.Parameters.AddWithValue("@diabetes_pedigree_function", txtDiabetesPedigree.Text);
            da.SelectCommand.ExecuteNonQuery();
           // Label2.Text = "Record Insert Successfully";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Record Insert Successfully');window.location.href ='VisitDetails.aspx';", true);
            txt_TricepsSkinFoldThickness.Text = "";
            txtNumberpregnent.Text = "";
            txt_PlasmaGlucose.Text = "";
            txt_DiastolicBloodPressure.Text = "";
            txt_TwoHoureSerumInsulin.Text = "";
            txt_BodyMassindex.Text = "";
            txt_Age.Text = "";
            txtDiabetesPedigree.Text = "";
        }
        else
        {
            Response.Write("alert('Insert all record')");
        }


    }


}