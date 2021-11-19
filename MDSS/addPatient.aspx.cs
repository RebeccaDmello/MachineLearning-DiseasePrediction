using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class addPatient : System.Web.UI.Page
{
    public SqlConnection conn;
    public SqlDataAdapter da;
    public DataSet ds;
    public string cs = Convert.ToString(System.Configuration.ConfigurationManager.AppSettings["connecting_string"]);
    public string patientname = "", patientAddress = "", patientMobileNo = "", patientEmailid = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        patientname = txt_name.Text;
        patientAddress = txt_address.Text;
        patientMobileNo = txt_mobileno.Text;
        patientEmailid = TextBox1.Text;
        //TextBox1.Text
        conn = new SqlConnection(cs);
        conn.Open();
        da = new SqlDataAdapter();
        da.SelectCommand = new SqlCommand();
        da.SelectCommand.Connection = conn;
        da.SelectCommand.CommandText = "insert into Patient_Details(Patient_Name,Patient_Address,Patient_MobileNo,Patient_Emailid) values('" + patientname + "','" + patientAddress + "','" + patientMobileNo + "','" + patientEmailid + "')";
        da.SelectCommand.CommandType = CommandType.Text;
        da.SelectCommand.ExecuteNonQuery();
        Response.Redirect("PatientDetails.aspx");


    }
    protected void btn_reset_Click(object sender, EventArgs e)
    {
        txt_name.Text = "";
        txt_address.Text = "";
        txt_mobileno.Text = "";
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {

    }
}