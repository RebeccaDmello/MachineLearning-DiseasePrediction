using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Login : System.Web.UI.Page
{
    public SqlConnection conn;
    public SqlDataAdapter da;
    public DataSet ds;
    string cs = Convert.ToString(System.Configuration.ConfigurationManager.AppSettings["connecting_string"]);
    string user_id;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string username = txtUsername.Text;
        string password = txtPassword.Text;

        conn = new SqlConnection(cs);
        conn.Open();
        da = new SqlDataAdapter();
        da.SelectCommand = new SqlCommand();
        da.SelectCommand.Connection = conn;
        da.SelectCommand.CommandText = "select username,password from Admin_Login where username='" + username + "' and password='" + password + "'";
        da.SelectCommand.CommandType = CommandType.Text;
        ds = new DataSet();
        da.Fill(ds, "Admin_Login");

        if (ds.Tables["Admin_Login"].Rows.Count > 0)
        {
            /*user_id = ds.Tables["Admin_Login"].Rows[0]["Id"].ToString();
            Session["aid"] = user_id;*/
            Response.Redirect("WelcomeAdmin.aspx");
        }
        else
        {
            lblshow.Text = "Login unsuccessful";
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtUsername.Text = "";
        txtPassword.Text = "";
        txtUsername.Focus();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
    //    TextBox1.Text = "";
    //    TextBox2.Text = "";
    //    TextBox1.Focus();
    }
}