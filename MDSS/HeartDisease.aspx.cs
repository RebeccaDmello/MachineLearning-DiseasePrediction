using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class HeartDisease : System.Web.UI.Page
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
            txt_name.Text = ds.Tables["PatientDetails"].Rows[0]["Patient_Name"].ToString();
        }
        else
        {

        }
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        //Declaring the variable for the heart disease

        string Age = txt_Age.Text + ".0";
        string Sex = ddl_sex.SelectedValue + ".0";
        string ChestPaint = ddlChestPaint.SelectedValue + ".0";
        string Trestbps = txtTrestbps.Text + ".0";
        string Cholestral = txtCholestral.Text + ".0";
        string FastingBloodSugar = ddlFbs.SelectedValue + ".0";
        string Restecg = ddlRestecg.SelectedItem.Text + ".0";
        string Thalach = txtThalach.Text + ".0";
        string Exang = ddlExang.SelectedValue + ".0";
        string OldPeak = txtOldPeak.Text;
        string Slop = ddlSlop.SelectedValue + ".0";
        string ColoredByFlourspoy = txtColoredByFlourspoy.Text + ".0";
        string Thal = ddlThal.SelectedValue + ".0";
        string patient_name = txt_name.Text;
        string patient_id = ddl_PatientId.SelectedValue;
        // '" + Age + "','" + Sex + "','" + ChestPaint + "','" + Trestbps + "','" + Cholestral + "','" + FastingBloodSugar + "','" + Restecg + "','" + Thalach + "','" + Exang + "','" + OldPeak + "','" + Slop + "','" + ColoredByFlourspoy + "','" + Thal + "','" + patient_name + "','" + patient_id + "','" + BasicDatePicker1.SelectedDate + "'
        if (Age != null && Trestbps != null && Cholestral != null && Thalach != null && OldPeak != null && ColoredByFlourspoy != null)
        {
            conn = new SqlConnection(cs);
            conn.Open();
            da = new SqlDataAdapter();
            da.SelectCommand = new SqlCommand();
            da.SelectCommand.Connection = conn;
            da.SelectCommand.CommandText = "INSERT INTO HeartDisease_Record(patient_id, age, sex, chest, resting_blood_pressure, serum_cholestoral, fasting_blood_sugar, resting_electrocardiographic_results, maximum_heart_rate_achieved, exercise_induced_angina, oldpeak, slope, number_of_major_vessels, thal,Date) VALUES(@patient_id, @age, @sex, @chest, @resting_blood_pressure, @serum_cholestoral, @fasting_blood_sugar, @resting_electrocardiographic_results, @maximum_heart_rate_achieved, @exercise_induced_angina, @oldpeak, @slope, @number_of_major_vessels, @thal,@Date)";
            da.SelectCommand.Parameters.AddWithValue("@patient_id", patient_id);
            da.SelectCommand.Parameters.AddWithValue("@age", Age);
            da.SelectCommand.Parameters.AddWithValue("@sex", Sex);
            da.SelectCommand.Parameters.AddWithValue("@chest", ChestPaint);
            da.SelectCommand.Parameters.AddWithValue("@resting_blood_pressure", Trestbps);
            da.SelectCommand.Parameters.AddWithValue("@serum_cholestoral", Cholestral);
            da.SelectCommand.Parameters.AddWithValue("@fasting_blood_sugar", FastingBloodSugar);
            da.SelectCommand.Parameters.AddWithValue("@resting_electrocardiographic_results", Restecg);
            da.SelectCommand.Parameters.AddWithValue("@maximum_heart_rate_achieved", Thalach);
            da.SelectCommand.Parameters.AddWithValue("@exercise_induced_angina", Exang);
            da.SelectCommand.Parameters.AddWithValue("@oldpeak", OldPeak);
            da.SelectCommand.Parameters.AddWithValue("@slope", Slop);
            da.SelectCommand.Parameters.AddWithValue("@number_of_major_vessels", ColoredByFlourspoy);
            da.SelectCommand.Parameters.AddWithValue("@thal", Thal);
            da.SelectCommand.Parameters.AddWithValue("@Date",Convert.ToDateTime(txtdate.Text));

            da.SelectCommand.ExecuteNonQuery();
            //Label1.Text = "Record Insert Successfully";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Record Insert Successfully');window.location.href ='VisitDetails.aspx';", true);
            //blank the filed
            txt_Age.Text = "";
            txtTrestbps.Text = "";
            txtCholestral.Text = "";
            txtThalach.Text = "";
            txtOldPeak.Text = "";
            txtColoredByFlourspoy.Text = "";
        }
        else
        {
            Label1.Text = "Plz Insert all the record";
        }
    }

    protected void btn_reset_Click(object sender, EventArgs e)
    {
        txt_Age.Text = "";
        txtTrestbps.Text = "";
        txtCholestral.Text = "";
        txtThalach.Text = "";
        txtOldPeak.Text = "";
        txtColoredByFlourspoy.Text = "";
    }
}