using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for TruncateTable
/// </summary>
public class TruncateTable
{
    public SqlConnection conn;
    public SqlDataAdapter da;
    public DataSet ds;
    string cs = Convert.ToString(System.Configuration.ConfigurationManager.AppSettings["connecting_string"].ToString());

	public TruncateTable()
	{
		//
		// TODO: Add constructor logic here
		//
        conn = new SqlConnection(cs);
        conn.Open();
        da = new SqlDataAdapter();
        da.SelectCommand = new SqlCommand();
        da.SelectCommand.Connection = conn;
        da.SelectCommand.CommandText = "truncate table [HeartDiseaseCholestral]";
        da.SelectCommand.CommandType = CommandType.Text;
        da.SelectCommand.ExecuteNonQuery();
	}
}