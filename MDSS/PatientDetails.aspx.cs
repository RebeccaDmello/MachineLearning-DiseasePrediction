using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class PatientDetails : System.Web.UI.Page
{
    public SqlConnection conn;
    public SqlDataAdapter da;
    public DataSet ds;
    string cs = Convert.ToString(System.Configuration.ConfigurationManager.AppSettings["connecting_string"]);
    string user_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            conn = new SqlConnection(cs);
            conn.Open();
            da = new SqlDataAdapter();
            da.SelectCommand = new SqlCommand();
            da.SelectCommand.Connection = conn;
            da.SelectCommand.CommandText = "SELECT [Patient_Id], [Patient_Name], [Patient_Address], [Patient_MobileNo] FROM [Patient_Details]";
            da.SelectCommand.CommandType = CommandType.Text;
            ds = new DataSet();
            da.Fill(ds, "Patient");
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
            }

        }
    }

    protected void Delete_row(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            conn = new SqlConnection(cs);
            conn.Open();
            da = new SqlDataAdapter();
            da.SelectCommand = new SqlCommand();
            da.SelectCommand.Connection = conn;
            da.SelectCommand.CommandText = "delete from Patient_Details where Patient_Id=" + e.CommandArgument + "";
            da.SelectCommand.CommandType = CommandType.Text;
            da.SelectCommand.ExecuteNonQuery();
            Response.Redirect(Request.RawUrl);
        }
    }
            
}