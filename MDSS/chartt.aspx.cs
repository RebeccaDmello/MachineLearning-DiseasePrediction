using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class chartt : System.Web.UI.Page
{
    public SqlConnection conn;
    public SqlDataAdapter da;
    public DataSet ds;
    string cs = Convert.ToString(System.Configuration.ConfigurationManager.AppSettings["connecting_string"]);
   
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(cs);
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        using (SqlCommand cmd = new SqlCommand("select accuracy from accuracy_graph where type_=@type_ ", conn))
        {
            cmd.Parameters.AddWithValue("@type_",DropDownList1.SelectedValue);
            using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
            {
                adp.Fill(dt);
            }
            Chart1.DataSource = dt;
            Chart1.Series["Series1"].XValueMember = "";
            Chart1.Series["Series1"].YValueMembers = "accuracy";

        }
    }
}