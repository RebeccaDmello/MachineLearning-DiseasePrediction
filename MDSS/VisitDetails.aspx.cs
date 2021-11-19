using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class VisitDetails : System.Web.UI.Page
{

    public SqlConnection conn;
    public SqlDataAdapter da;
    public DataSet ds;
    string cs = Convert.ToString(System.Configuration.ConfigurationManager.AppSettings["connecting_string"]);
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
        da.SelectCommand.CommandText = "SELECT patient_id,[Patient_Name] FROM [Patient_Details]";
        da.SelectCommand.CommandType = CommandType.Text;
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            cbmUsername.DataSource = dt;
            cbmUsername.DataBind();
            cbmUsername.Items.Insert(0, new ListItem("<<--Select-->>", "0"));
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string username = cbmUsername.SelectedValue;
        string diseaseName = cboDiseaseName.SelectedValue;

        if (diseaseName.Equals("Heart Disease"))
        {
            conn = new SqlConnection(cs);
            conn.Open();
            da = new SqlDataAdapter();
            da.SelectCommand = new SqlCommand();
            da.SelectCommand.Connection = conn;
            da.SelectCommand.CommandText = "select p.patient_name,cast (h.Date as varchar(10)) as date,h.Age,h.Sex,h.serum_cholestoral,h.thal,h.oldpeak from HeartDisease_Record h join Patient_Details p on(h.patient_id=p.patient_id) where h.patient_id='" + cbmUsername.SelectedValue + "'";
            da.SelectCommand.CommandType = CommandType.Text;
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else if (diseaseName.Equals("Diabetes"))
        {
            conn = new SqlConnection(cs);
            conn.Open();
            da = new SqlDataAdapter();
            da.SelectCommand = new SqlCommand();
            da.SelectCommand.Connection = conn;
            da.SelectCommand.CommandText = "select  patient_id,cast(d_Date as varchar(11)) as date, plasma_glucose_concentration, diastolic_blood_pressure, hour_serum_insulin, body_mass_index from DiabetesDisease_Record where patient_id='" + cbmUsername.SelectedValue + "'";
            da.SelectCommand.CommandType = CommandType.Text;
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        
    }
}