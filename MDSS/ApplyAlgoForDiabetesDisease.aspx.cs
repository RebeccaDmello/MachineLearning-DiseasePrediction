using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using ProbabilityFunctions;


public partial class ApplyAlgoForDiabetesDisease : System.Web.UI.Page
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
        da.SelectCommand.CommandText = "SELECT DISTINCT [patient_id] FROM [DiabetesDisease_Record]";
        da.SelectCommand.CommandType = CommandType.Text;
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            dllPatientId.DataSource = dt;
            dllPatientId.DataBind();
            dllPatientId.Items.Insert(0, new ListItem("<<--Select-->>", "0"));
        }
    }
    protected void dllPatientId_SelectedIndexChanged(object sender, EventArgs e)
    {
        conn = new SqlConnection(cs);
        conn.Open();
        da = new SqlDataAdapter();
        da.SelectCommand = new SqlCommand();
        da.SelectCommand.Connection = conn;
        da.SelectCommand.CommandText = "select Patient_Name from Patient_Details where Patient_Id='" + dllPatientId.SelectedValue + "' ";
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
    protected void Button3_Click(object sender, EventArgs e)
    {

        if (txt_name.Text == "")
        {
            Response.Write("<script>alert('data not selected')</script>");

        }
        else
        {


            string algo = cboselectalgo.SelectedValue;

            if (algo.Equals("ID3 Algorithm"))
            {
                conn = new SqlConnection(cs);
                conn.Open();
                SqlCommand comm1 = new SqlCommand("truncate table DiabetesDiseaseStatus", conn);
                comm1.ExecuteNonQuery();

                da = new System.Data.SqlClient.SqlDataAdapter();
                da.SelectCommand = new System.Data.SqlClient.SqlCommand();
                da.SelectCommand.Connection = conn;
                da.SelectCommand.CommandText = "select top 1 d_date from DiabetesDisease_Record where Patient_Id='" +
                                               dllPatientId.SelectedValue + "' order by d_DATE desc";
                da.SelectCommand.CommandType = CommandType.Text;
                DataSet ds2 = new System.Data.DataSet();
                da.Fill(ds2, "DiabetesDisease_Record");
                if (ds2.Tables["DiabetesDisease_Record"].Rows.Count > 0)
                {
                    string date = Convert.ToString(ds2.Tables["DiabetesDisease_Record"].Rows[0]["d_date"]);
                    conn = new System.Data.SqlClient.SqlConnection(cs);
                    conn.Open();
                    da = new SqlDataAdapter();
                    da.SelectCommand = new SqlCommand();
                    da.SelectCommand.Connection = conn;
                    da.SelectCommand.CommandText =
                        "select d_Date, Age, number_of_times_pregnant, plasma_glucose_concentration, diastolic_blood_pressure, triceps_skin_fold_thickness, hour_serum_insulin, body_mass_index, diabetes_pedigree_function from DiabetesDisease_Record where Patient_Id='" +
                        dllPatientId.SelectedValue + "' and d_date='" + date + "' ";
                    da.SelectCommand.CommandType = CommandType.Text;
                    DataSet ds4 = new DataSet();
                    da.Fill(ds4, "DiabetesDisease_Record");


                    if (ds4.Tables["DiabetesDisease_Record"].Rows.Count > 0)
                    {
                        int Age = Convert.ToInt32(ds4.Tables["DiabetesDisease_Record"].Rows[0]["Age"]);
                        int TricepsSkinFoldThickness =
                            Convert.ToInt32(ds4.Tables["DiabetesDisease_Record"].Rows[0]["triceps_skin_fold_thickness"]);
                        int PlasmaGlucose =
                            Convert.ToInt32(ds4.Tables["DiabetesDisease_Record"].Rows[0]["plasma_glucose_concentration"]);
                        int DiastolicBloodPressure =
                            Convert.ToInt32(ds4.Tables["DiabetesDisease_Record"].Rows[0]["diastolic_blood_pressure"]);
                        int HoureSerumInsulin =
                            Convert.ToInt32(ds4.Tables["DiabetesDisease_Record"].Rows[0]["hour_serum_insulin"]);
                        double BodyMassindex =
                            Convert.ToDouble(ds4.Tables["DiabetesDisease_Record"].Rows[0]["body_mass_index"]);
                        int number_of_times_pregnant =
                            Convert.ToInt32(ds4.Tables["DiabetesDisease_Record"].Rows[0]["number_of_times_pregnant"]);
                        String diabetes_pedigree_function =
                            ds4.Tables["DiabetesDisease_Record"].Rows[0]["diabetes_pedigree_function"].ToString();

                        // following are the cart rule for disease absence

                        String Age1 = ds4.Tables["DiabetesDisease_Record"].Rows[0]["Age"].ToString();
                        String TricepsSkinFoldThickness1 =
                            ds4.Tables["DiabetesDisease_Record"].Rows[0]["triceps_skin_fold_thickness"].ToString();
                        String PlasmaGlucose1 =
                            ds4.Tables["DiabetesDisease_Record"].Rows[0]["plasma_glucose_concentration"].ToString();
                        String DiastolicBloodPressure1 =
                            ds4.Tables["DiabetesDisease_Record"].Rows[0]["diastolic_blood_pressure"].ToString();
                        String HoureSerumInsulin1 =
                            ds4.Tables["DiabetesDisease_Record"].Rows[0]["hour_serum_insulin"].ToString();
                        String BodyMassindex1 =
                            ds4.Tables["DiabetesDisease_Record"].Rows[0]["body_mass_index"].ToString();
                        String number_of_times_pregnant1 =
                            ds4.Tables["DiabetesDisease_Record"].Rows[0]["number_of_times_pregnant"].ToString();
                        String diabetes_pedigree_function1 =
                            ds4.Tables["DiabetesDisease_Record"].Rows[0]["diabetes_pedigree_function"].ToString();




                        ID3Diabetes Id3Rules = new ID3Diabetes(number_of_times_pregnant1, PlasmaGlucose1,
                            DiastolicBloodPressure1, TricepsSkinFoldThickness1, HoureSerumInsulin1, BodyMassindex1,
                            diabetes_pedigree_function1, Age1);
                        Id3Rules.CheckRuleDiabetes();
                        string Result = Id3Rules.Result;
                        Label9.Text = Result;


                        //if (Age > 28 && TricepsSkinFoldThickness > 0 && TricepsSkinFoldThickness <= 34 && Age > 22 && PlasmaGlucose <= 127)
                        //{

                        //    double PlasmaGlucosePercentage = (PlasmaGlucose * 100) / 200;
                        //    conn = new SqlConnection(cs);
                        //    conn.Open();
                        //    da = new SqlDataAdapter();
                        //    da.SelectCommand = new SqlCommand();
                        //    da.SelectCommand.Connection = conn;
                        //    da.SelectCommand.CommandText = "INSERT INTO [DiabetesDiseaseStatus] ([patient_id],[patient_name],[Date],[PlasmaGlucose],[PlasmaGlucosePercentage],[Statsu]) VALUES('" + dllPatientId.SelectedValue + "','" + txt_name.Text + "','" + date + "','" + PlasmaGlucose + "','" + PlasmaGlucosePercentage + "','Disease Absent')";
                        //    da.SelectCommand.CommandType = CommandType.Text;
                        //    da.SelectCommand.ExecuteNonQuery();


                        //}
                        //else if (PlasmaGlucose <= 99 && HoureSerumInsulin <= 88 && HoureSerumInsulin <= 18 && TricepsSkinFoldThickness <= 21)
                        //{

                        //    double PlasmaGlucosePercentage = (PlasmaGlucose * 100) / 200;
                        //    conn = new SqlConnection(cs);
                        //    conn.Open();
                        //    da = new SqlDataAdapter();
                        //    da.SelectCommand = new SqlCommand();
                        //    da.SelectCommand.Connection = conn;
                        //    da.SelectCommand.CommandText = "INSERT INTO [DiabetesDiseaseStatus] ([patient_id],[patient_name],[Date],[PlasmaGlucose],[PlasmaGlucosePercentage],[Statsu]) VALUES('" + dllPatientId.SelectedValue + "','" + txt_name.Text + "','" + date + "','" + PlasmaGlucose + "','" + PlasmaGlucosePercentage + "','Disease Absent')";
                        //    da.SelectCommand.CommandType = CommandType.Text;
                        //    da.SelectCommand.ExecuteNonQuery();
                        //}
                        //else if ((int)PlasmaGlucose <= 107 && DiastolicBloodPressure <= 80)
                        //{

                        //    double PlasmaGlucosePercentage = (PlasmaGlucose * 100) / 200;
                        //    conn = new SqlConnection(cs);
                        //    conn.Open();
                        //    da = new SqlDataAdapter();
                        //    da.SelectCommand = new SqlCommand();
                        //    da.SelectCommand.Connection = conn;
                        //    da.SelectCommand.CommandText = "INSERT INTO [DiabetesDiseaseStatus] ([patient_id],[patient_name],[Date],[PlasmaGlucose],[PlasmaGlucosePercentage],[Statsu]) VALUES('" + dllPatientId.SelectedValue + "','" + txt_name.Text + "','" + date + "','" + PlasmaGlucose + "','" + PlasmaGlucosePercentage + "','Disease Absent')";
                        //    da.SelectCommand.CommandType = CommandType.Text;
                        //    da.SelectCommand.ExecuteNonQuery();


                        //}
                        //else if (PlasmaGlucose <= 112 && DiastolicBloodPressure <= 88 && Age <= 35)
                        //{

                        //    double PlasmaGlucosePercentage = (PlasmaGlucose * 100) / 200;
                        //    conn = new SqlConnection(cs);
                        //    conn.Open();
                        //    da = new SqlDataAdapter();
                        //    da.SelectCommand = new SqlCommand();
                        //    da.SelectCommand.Connection = conn;
                        //    da.SelectCommand.CommandText = "INSERT INTO [DiabetesDiseaseStatus] ([patient_id],[patient_name],[Date],[PlasmaGlucose],[PlasmaGlucosePercentage],[Statsu]) VALUES('" + dllPatientId.SelectedValue + "','" + txt_name.Text + "','" + date + "','" + PlasmaGlucose + "','" + PlasmaGlucosePercentage + "','Disease Absent')";
                        //    da.SelectCommand.CommandType = CommandType.Text;
                        //    da.SelectCommand.ExecuteNonQuery();


                        //}
                        //else if (DiastolicBloodPressure <= 40 && PlasmaGlucose > 130)
                        //{
                        //    // condition for the disease present

                        //    double PlasmaGlucosePercentage = (PlasmaGlucose * 100) / 200;
                        //    conn = new SqlConnection(cs);
                        //    conn.Open();
                        //    da = new SqlDataAdapter();
                        //    da.SelectCommand = new SqlCommand();
                        //    da.SelectCommand.Connection = conn;
                        //    da.SelectCommand.CommandText = "INSERT INTO [DiabetesDiseaseStatus] ([patient_id],[patient_name],[Date],[PlasmaGlucose],[PlasmaGlucosePercentage],[Statsu]) VALUES('" + dllPatientId.SelectedValue + "','" + txt_name.Text + "','" + date + "','" + PlasmaGlucose + "','" + PlasmaGlucosePercentage + "','Disease Present')";
                        //    da.SelectCommand.CommandType = CommandType.Text;
                        //    da.SelectCommand.ExecuteNonQuery();


                        //}
                        //else if (PlasmaGlucose <= 99 && BodyMassindex > 36.8 && Age > 23 && HoureSerumInsulin > 95 && DiastolicBloodPressure > 30)
                        //{
                        //    double PlasmaGlucosePercentage = (PlasmaGlucose * 100) / 200;
                        //    conn = new SqlConnection(cs);
                        //    conn.Open();
                        //    da = new SqlDataAdapter();
                        //    da.SelectCommand = new SqlCommand();
                        //    da.SelectCommand.Connection = conn;
                        //    da.SelectCommand.CommandText = "INSERT INTO [DiabetesDiseaseStatus] ([patient_id],[patient_name],[Date],[PlasmaGlucose],[PlasmaGlucosePercentage],[Statsu]) VALUES('" + dllPatientId.SelectedValue + "','" + txt_name.Text + "','" + date + "','" + PlasmaGlucose + "','" + PlasmaGlucosePercentage + "','Disease Present')";
                        //    da.SelectCommand.CommandType = CommandType.Text;
                        //    da.SelectCommand.ExecuteNonQuery();

                        //}
                        //else if (PlasmaGlucose <= 99 && BodyMassindex <= 26.2 && Age <= 25)
                        //{
                        //    double PlasmaGlucosePercentage = (PlasmaGlucose * 100) / 200;
                        //    conn = new SqlConnection(cs);
                        //    conn.Open();
                        //    da = new SqlDataAdapter();
                        //    da.SelectCommand = new SqlCommand();
                        //    da.SelectCommand.Connection = conn;
                        //    da.SelectCommand.CommandText = "INSERT INTO [DiabetesDiseaseStatus] ([patient_id],[patient_name],[Date],[PlasmaGlucose],[PlasmaGlucosePercentage],[Statsu]) VALUES('" + dllPatientId.SelectedValue + "','" + txt_name.Text + "','" + date + "','" + PlasmaGlucose + "','" + PlasmaGlucosePercentage + "','Disease Absent')";
                        //    da.SelectCommand.CommandType = CommandType.Text;
                        //    da.SelectCommand.ExecuteNonQuery();
                        //}
                        //else
                        //{

                        //    double PlasmaGlucosePercentage = (PlasmaGlucose * 100) / 200;
                        //    conn = new SqlConnection(cs);
                        //    conn.Open();
                        //    da = new SqlDataAdapter();
                        //    da.SelectCommand = new SqlCommand();
                        //    da.SelectCommand.Connection = conn;
                        //    da.SelectCommand.CommandText = "INSERT INTO [DiabetesDiseaseStatus] ([patient_id],[patient_name],[Date],[PlasmaGlucose],[PlasmaGlucosePercentage],[Statsu]) VALUES('" + dllPatientId.SelectedValue + "','" + txt_name.Text + "','" + date + "','" + PlasmaGlucose + "','" + PlasmaGlucosePercentage + "','Disease Absent')";
                        //    da.SelectCommand.CommandType = CommandType.Text;
                        //    da.SelectCommand.ExecuteNonQuery();
                        //}
                    }
                    else
                    {

                    }

                } // if loop is close

                conn = new SqlConnection(cs);
                conn.Open();
                da =
                    new SqlDataAdapter(
                        new SqlCommand(
                            "SELECT [patient_id],[patient_name],[Date],[PlasmaGlucose],[PlasmaGlucosePercentage],[Statsu] FROM [DiabetesDiseaseStatus] where patient_id='" +
                            dllPatientId.SelectedValue + "' order by date desc", conn));
                DataTable dTable = new DataTable();
                da.Fill(dTable);
                ID3AlgoResult.DataSource = dTable;
                ID3AlgoResult.DataBind();
            }
            else
            {
                // truncate the table [DiabetesDiseasePlasmagc]
                conn = new SqlConnection(cs);
                conn.Open();

                da =
                    new SqlDataAdapter(
                        new SqlCommand(
                            "select count([DiabetsDisease_Id]) as id from [DiabetesDisease_Record] where [patient_id]='" +
                            dllPatientId.SelectedValue + "'", conn));
                da.SelectCommand.CommandType = CommandType.Text;
                DataSet dscount = new DataSet();
                da.Fill(dscount, "DiabetesDisease_Record");
                int countId = Convert.ToInt16(dscount.Tables["DiabetesDisease_Record"].Rows[0]["id"]);
                if (countId >= 1)
                {

                    da = new SqlDataAdapter(new SqlCommand("truncate table [DiabetesDiseasePlasmagc]", conn));
                    da.SelectCommand.CommandType = CommandType.Text;
                    da.SelectCommand.ExecuteNonQuery();

                    // truncate table DiabetesDiseaseDiastolicBloodPressure

                    //da = new SqlDataAdapter(new SqlCommand("truncate table [DiabetesDiseaseDiastolicBloodPressure]", conn));
                    //da.SelectCommand.CommandType = CommandType.Text;
                    //da.SelectCommand.ExecuteNonQuery();
                    //conn.Close();

                    conn = new SqlConnection(cs);
                    conn.Open();
                    da =
                        new SqlDataAdapter(
                            new SqlCommand(
                                "select d_Date from DiabetesDisease_Record where Patient_Id='" +
                                dllPatientId.SelectedValue + "'", conn));
                    da.SelectCommand.CommandType = CommandType.Text;
                    DataSet dbdsID1 = new DataSet();
                    da.Fill(dbdsID1, "DiabetesDisease_Record");
                    int countDate = dbdsID1.Tables["DiabetesDisease_Record"].Rows.Count;
                    for (int i = 0; i < countDate; i++)
                    {
                        string date = Convert.ToString(dbdsID1.Tables["DiabetesDisease_Record"].Rows[i]["d_date"]);
                        conn = new SqlConnection(cs);
                        conn.Open();
                        da =
                            new SqlDataAdapter(
                                new SqlCommand(
                                    "select patient_id, d_Date, Age, number_of_times_pregnant, plasma_glucose_concentration, diastolic_blood_pressure, triceps_skin_fold_thickness, hour_serum_insulin, body_mass_index, diabetes_pedigree_function from DiabetesDisease_Record where patient_id='" +
                                    dllPatientId.SelectedValue + "' and d_date='" + date + "' ", conn));
                        da.SelectCommand.CommandType = CommandType.Text;
                        DataSet dbdsID2 = new DataSet();
                        da.Fill(dbdsID2, "DiabetesDisease_Record");
                        if (dbdsID2.Tables["DiabetesDisease_Record"].Rows.Count > 0)
                        {
                            string age = dbdsID2.Tables["DiabetesDisease_Record"].Rows[0]["Age"].ToString();
                            string numTimesPregnant =
                                dbdsID2.Tables["DiabetesDisease_Record"].Rows[0]["number_of_times_pregnant"].ToString();
                            string plasmGlucoseConcentration =
                                dbdsID2.Tables["DiabetesDisease_Record"].Rows[0]["plasma_glucose_concentration"]
                                    .ToString();
                            string diastolicBP =
                                dbdsID2.Tables["DiabetesDisease_Record"].Rows[0]["diastolic_blood_pressure"].ToString();
                            string tricepsSkinFoldThickness =
                                dbdsID2.Tables["DiabetesDisease_Record"].Rows[0]["triceps_skin_fold_thickness"].ToString
                                    ();
                            string hourSerumInsulin =
                                dbdsID2.Tables["DiabetesDisease_Record"].Rows[0]["hour_serum_insulin"].ToString();
                            string bodyMassIndex =
                                dbdsID2.Tables["DiabetesDisease_Record"].Rows[0]["body_mass_index"].ToString();
                            string diabetesPedigreeFunction =
                                dbdsID2.Tables["DiabetesDisease_Record"].Rows[0]["diabetes_pedigree_function"].ToString();
                            /////////////////////

                            Program bv = new Program();
                            int idd = Convert.ToInt32(dllPatientId.SelectedValue);

                            string ANS = bv.NVBYS(idd);
                            lblData.Text = ANS;
                            //////////////////////////////////////
                            NaiveDiabetes NaiveDiabet = new NaiveDiabetes(numTimesPregnant, plasmGlucoseConcentration,
                                diastolicBP, tricepsSkinFoldThickness, hourSerumInsulin, bodyMassIndex,
                                diabetesPedigreeFunction, age);
                            NaiveDiabet.CheckRuleDiabetes();
                            string Result = NaiveDiabet.Result;

                            conn = new SqlConnection(cs);
                            conn.Open();
                            da =
                                new SqlDataAdapter(
                                    new SqlCommand(
                                        "INSERT INTO [DiabetesDiseasePlasmagc]([patient_id],[patient_name],[Date],[PlasmaGlucose],[DiastolicBloodPressure],[Status]) VALUES('" +
                                        dllPatientId.SelectedValue + "','" + txt_name.Text + "','" + date + "','" +
                                        plasmGlucoseConcentration + "','" + diastolicBP + "','" + Result + "')", conn));
                            da.SelectCommand.CommandType = CommandType.Text;
                            da.SelectCommand.ExecuteNonQuery();
                            conn.Close();
                        } // if loop is close

                    } // for loop is close

                    conn = new SqlConnection(cs);
                    conn.Open();
                    da =
                        new SqlDataAdapter(
                            new SqlCommand(
                                "SELECT [patient_id],[patient_name],[Date],[PlasmaGlucose],[DiastolicBloodPressure],[Status] FROM [DiabetesDiseasePlasmagc]",
                                conn));
                    DataTable dtPlasmaGlucose = new DataTable();
                    da.Fill(dtPlasmaGlucose);
                    PlasmaGrid.DataSource = dtPlasmaGlucose;
                    PlasmaGrid.DataBind();
                }
                else
                {
                    lblData.Text = "Reguired Data not found";
                }
            }
        }
    }


    protected void ID3AlgoResult_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        ID3AlgoResult.PageIndex = e.NewPageIndex;
        fillgrid();

    }
    protected void fillgrid()
    {
        conn = new SqlConnection(cs);
        conn.Open();
        da = new SqlDataAdapter(new SqlCommand("SELECT [patient_id],[patient_name],[Date],[PlasmaGlucose],[PlasmaGlucosePercentage],[Statsu] FROM [DiabetesDiseaseStatus] where patient_id='" + dllPatientId.SelectedValue + "' order by date desc", conn));
        DataTable dTable = new DataTable();
        da.Fill(dTable);
        ID3AlgoResult.DataSource = dTable;
        ID3AlgoResult.DataBind();
    }
    protected void PlasmaGrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        PlasmaGrid.PageIndex = e.NewPageIndex;
        PlasmaGridFill();
    }

    protected void PlasmaGridFill()
    {
        conn = new SqlConnection();
        conn.Open();
        da = new SqlDataAdapter(new SqlCommand("SELECT [patient_id],[patient_name],[Date],[PlasmaGlucose],[DiastolicBloodPressure],[Status] FROM [DiabetesDiseasePlasmagc]", conn));
        DataTable dtPlasmaGlucose = new DataTable();
        da.Fill(dtPlasmaGlucose);
        PlasmaGrid.DataSource = dtPlasmaGlucose;
        PlasmaGrid.DataBind();
    }

    protected void lnkGraph_Click(object sender, EventArgs e)
    {
        Response.Redirect("DiabetesDiseaseChart.aspx");
    }
}
