using System;
using System.Activities.Statements;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using ProbabilityFunctions;
using System.Net.Mail;



public partial class ApplyAlgoForHeartDisease : System.Web.UI.Page
{

    public SqlConnection conn;
    public SqlDataAdapter da;
    public DataSet ds;

    public string cs =
        Convert.ToString(System.Configuration.ConfigurationManager.AppSettings["connecting_string"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(cs);
        if (!IsPostBack)
        {
            fillddlUser();
            //using (SqlCommand cmc = new SqlCommand("truncate table accuracy_graph", conn))
            //{
            //    // conn.Open();
            //    cmc.ExecuteNonQuery();
            //    // conn.Close();
            //}
        }
    }

    protected void fillddlUser()
    {
        conn = new SqlConnection(cs);
        conn.Open();
        da = new SqlDataAdapter();
        da.SelectCommand = new SqlCommand();
        da.SelectCommand.Connection = conn;
        da.SelectCommand.CommandText = "SELECT DISTINCT [patient_id] FROM [HeartDisease_Record]";
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
        da.SelectCommand.CommandText =
            "select h.Patient_Id,p.Patient_Name from HeartDisease_Record h join Patient_Details p on(h.Patient_Id=p.Patient_Id) where h.Patient_Id='" +
            dllPatientId.SelectedValue + "' ";
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
        //if (txt_name.Text == " ")
        //{
        //    Response.Write("al");
        //}
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string algoname = cboSelectAlgo.SelectedValue;
        if (txt_name.Text == "")
        {
           //Response.Write("alert('data not selected')");
           Response.Write("<script>alert('data not selected')</script>");
        }
        else
        {


            if (algoname.Equals("ID3 Algorithm"))
            {

                conn = new SqlConnection(cs);
                conn.Open();

                SqlCommand comm1 = new SqlCommand("truncate table HeartDiseaseStatus", conn);
                comm1.ExecuteNonQuery();

                //SqlCommand cmdCount = new SqlCommand("select count(patient_id)as RecordCount from HeartDisease_Record where patient_id=@patient_id", conn);
                //cmdCount.Parameters.AddWithValue("@patient_id", dllPatientId.SelectedValue);
                //conn.Open();
                //var RecordCount = cmdCount.ExecuteScalar();
                //conn.Close();
                //if (Convert.ToInt32(RecordCount) >= 5)
                //{

                da = new System.Data.SqlClient.SqlDataAdapter();
                da.SelectCommand = new System.Data.SqlClient.SqlCommand();
                da.SelectCommand.Connection = conn;
                da.SelectCommand.CommandText =
                    "select Disease_Record_Id, patient_id, age, sex, chest, resting_blood_pressure, serum_cholestoral, fasting_blood_sugar, resting_electrocardiographic_results, maximum_heart_rate_achieved, exercise_induced_angina, oldpeak, slope, number_of_major_vessels, thal, Date from HeartDisease_Record where patient_id=" +
                    dllPatientId.SelectedValue + "";
                da.SelectCommand.CommandType = CommandType.Text;
                DataSet ds2 = new System.Data.DataSet();
                da.Fill(ds2, "HeartDisease_Record");
                if (ds2.Tables["HeartDisease_Record"].Rows.Count >= 1)
                {
                    // following algorithms is for the ID3 Algorithms
                    conn = new SqlConnection(cs);
                    conn.Open();
                    da = new SqlDataAdapter();
                    da.SelectCommand = new SqlCommand();
                    da.SelectCommand.Connection = conn;
                    da.SelectCommand.CommandText = "select date from HeartDisease_Record where Patient_Id='" +
                                                   dllPatientId.SelectedValue + "'";
                    da.SelectCommand.CommandType = CommandType.Text;
                    DataSet dsID1 = new DataSet();
                    da.Fill(dsID1, "HeartDisease_Record");
                    int countDate = dsID1.Tables["HeartDisease_Record"].Rows.Count;
                    for (int i = 0; i < countDate; i++)
                    {
                        string date = Convert.ToString(dsID1.Tables["HeartDisease_Record"].Rows[i]["date"]);
                        // select the cholestrol and thal valu of the patient
                        conn = new SqlConnection(cs);
                        conn.Open();
                        da = new SqlDataAdapter();
                        da.SelectCommand = new SqlCommand();
                        da.SelectCommand.Connection = conn;
                        da.SelectCommand.CommandText =
                            "select age, sex, chest, resting_blood_pressure, serum_cholestoral, fasting_blood_sugar, resting_electrocardiographic_results, maximum_heart_rate_achieved, exercise_induced_angina, oldpeak, slope, number_of_major_vessels, thal from HeartDisease_Record where patient_id='" +
                            dllPatientId.SelectedValue + "' and date='" + date + "' ";
                        da.SelectCommand.CommandType = CommandType.Text;
                        DataSet dsID2 = new DataSet();
                        da.Fill(dsID2, "HeartDisease_Record");
                        if (dsID2.Tables["HeartDisease_Record"].Rows.Count > 0)
                        {
                            string age = dsID2.Tables["HeartDisease_Record"].Rows[0]["age"].ToString();
                            string sex = dsID2.Tables["HeartDisease_Record"].Rows[0]["sex"].ToString();
                            ;
                            string chest = dsID2.Tables["HeartDisease_Record"].Rows[0]["chest"].ToString();
                            ;
                            string Bp = dsID2.Tables["HeartDisease_Record"].Rows[0]["resting_blood_pressure"].ToString();
                            ;
                            string Chol = dsID2.Tables["HeartDisease_Record"].Rows[0]["serum_cholestoral"].ToString();
                            ;
                            string FBloodSuger =
                                dsID2.Tables["HeartDisease_Record"].Rows[0]["fasting_blood_sugar"].ToString();
                            ;
                            string Resting =
                                dsID2.Tables["HeartDisease_Record"].Rows[0]["resting_electrocardiographic_results"]
                                    .ToString();
                            ;
                            string MaxHeartRate =
                                dsID2.Tables["HeartDisease_Record"].Rows[0]["maximum_heart_rate_achieved"].ToString();
                            ;
                            string Angina =
                                dsID2.Tables["HeartDisease_Record"].Rows[0]["exercise_induced_angina"].ToString();
                            ;
                            string Oldpeak = dsID2.Tables["HeartDisease_Record"].Rows[0]["oldpeak"].ToString();
                            ;
                            string Slope = dsID2.Tables["HeartDisease_Record"].Rows[0]["slope"].ToString();
                            ;
                            string Vessels =
                                dsID2.Tables["HeartDisease_Record"].Rows[0]["number_of_major_vessels"].ToString();
                            ;
                            string Thal = dsID2.Tables["HeartDisease_Record"].Rows[0]["thal"].ToString();

                            ID3 Id3Rules = new ID3(age, sex, chest, Bp, Chol, FBloodSuger, Resting, MaxHeartRate, Angina,
                                Oldpeak, Slope, Vessels, Thal);
                            Id3Rules.CheckRule();
                            string Result = Id3Rules.Result;
                            Label10.Text = Result;
                            conn = new SqlConnection(cs);
                            conn.Open();
                            da = new SqlDataAdapter();
                            da.SelectCommand = new SqlCommand();
                            da.SelectCommand.Connection = conn;
                            da.SelectCommand.CommandText =
                                "INSERT INTO [HeartDiseaseCholestral] ([patient_id],[patient_name],[Date],[Cholestral],[Thal],[Status]) VALUES('" +
                                dllPatientId.SelectedValue + "','" + txt_name.Text + "','" + date + "','" + Chol + "','" +
                                Thal + "','" + Result + "')";
                            da.SelectCommand.CommandType = CommandType.Text;
                            da.SelectCommand.ExecuteNonQuery();
                        }
                    } // for loop is close
                }
                else
                {
                    lblData.Text = "Please Add Patient History";
                }
                conn = new SqlConnection(cs);
                conn.Open();
                da =
                    new SqlDataAdapter(
                        new SqlCommand(
                            "SELECT [patient_id],[patient_name],[Date],[Cholestral],[CholestralPercentage],[Status] FROM [HeartDiseaseStatus] where patient_id='" +
                            dllPatientId.SelectedValue + "' order by date desc", conn));
                da.SelectCommand.CommandType = CommandType.Text;
                DataTable dtable = new DataTable();
                da.Fill(dtable);
                resultGrid.DataSource = dtable;
                resultGrid.DataBind();
                other_acc ac = new other_acc();
                string acc = ac.val;
                Label1.Text = "ACCURACY IS " + acc + " %";
                using (
                    SqlCommand cnd =
                        new SqlCommand(
                            "insert into accuracy_graph(type_,accuracy,user_id) values(@type_,@accuracy,@user_id)", conn)
                    )
                {
                    cnd.Parameters.AddWithValue("@type_", "ID3");
                    cnd.Parameters.AddWithValue("@accuracy", acc);
                    cnd.Parameters.AddWithValue("@user_id", dllPatientId.SelectedValue);
                    //
                    // conn.Open();
                    cnd.ExecuteNonQuery();
                    // conn.Close();
                }
            }
                // select algo if is close
            else
            {
                conn = new SqlConnection(cs);
                conn.Open();
                da =
                    new SqlDataAdapter(
                        new SqlCommand(
                            "select count([Disease_Record_Id]) as id from [HeartDisease_Record] where [patient_id]='" +
                            dllPatientId.SelectedValue + "'", conn));
                da.SelectCommand.CommandType = CommandType.Text;
                DataSet dscount = new DataSet();
                da.Fill(dscount, "HeartDisease_Record");
                int countId = Convert.ToInt16(dscount.Tables["HeartDisease_Record"].Rows[0]["id"]);
                if (countId >= 1)
                {
                    conn = new SqlConnection(cs);
                    conn.Open();
                    da = new SqlDataAdapter(new SqlCommand("truncate table [HeartDiseaseCholestral]", conn));
                    da.SelectCommand.CommandType = CommandType.Text;
                    da.SelectCommand.ExecuteNonQuery();

                    //conn = new SqlConnection(cs);
                    //conn.Open();
                    //da = new SqlDataAdapter(new SqlCommand("truncate table [HeartDiseaseThal]", conn));
                    //da.SelectCommand.CommandType = CommandType.Text;
                    //da.SelectCommand.ExecuteNonQuery();

                    // following algorithms is for the Naive Algorithms
                    conn = new SqlConnection(cs);
                    conn.Open();
                    da = new SqlDataAdapter();
                    da.SelectCommand = new SqlCommand();
                    da.SelectCommand.Connection = conn;
                    da.SelectCommand.CommandText = "select date from HeartDisease_Record where Patient_Id='" +
                                                   dllPatientId.SelectedValue + "'";
                    da.SelectCommand.CommandType = CommandType.Text;
                    DataSet dsID1 = new DataSet();
                    da.Fill(dsID1, "HeartDisease_Record");
                    int countDate = dsID1.Tables["HeartDisease_Record"].Rows.Count;
                    for (int i = 0; i < countDate; i++)
                    {
                        string date = Convert.ToString(dsID1.Tables["HeartDisease_Record"].Rows[i]["date"]);
                        // select the cholestrol and thal valu of the patient
                        conn = new SqlConnection(cs);
                        conn.Open();
                        da = new SqlDataAdapter();
                        da.SelectCommand = new SqlCommand();
                        da.SelectCommand.Connection = conn;
                        da.SelectCommand.CommandText =
                            "select age, sex, chest, resting_blood_pressure, serum_cholestoral, fasting_blood_sugar, resting_electrocardiographic_results, maximum_heart_rate_achieved, exercise_induced_angina, oldpeak, slope, number_of_major_vessels, thal from HeartDisease_Record where patient_id='" +
                            dllPatientId.SelectedValue + "' and date='" + date + "' ";
                        da.SelectCommand.CommandType = CommandType.Text;
                        DataSet dsID2 = new DataSet();
                        da.Fill(dsID2, "HeartDisease_Record");
                        if (dsID2.Tables["HeartDisease_Record"].Rows.Count > 0)
                        {
                            string age = dsID2.Tables["HeartDisease_Record"].Rows[0]["age"].ToString();
                            string sex = dsID2.Tables["HeartDisease_Record"].Rows[0]["sex"].ToString();
                            ;
                            string chest = dsID2.Tables["HeartDisease_Record"].Rows[0]["chest"].ToString();
                            ;
                            string Bp = dsID2.Tables["HeartDisease_Record"].Rows[0]["resting_blood_pressure"].ToString();
                            ;
                            string Chol = dsID2.Tables["HeartDisease_Record"].Rows[0]["serum_cholestoral"].ToString();
                            ;
                            string FBloodSuger =
                                dsID2.Tables["HeartDisease_Record"].Rows[0]["fasting_blood_sugar"].ToString();
                            ;
                            string Resting =
                                dsID2.Tables["HeartDisease_Record"].Rows[0]["resting_electrocardiographic_results"]
                                    .ToString();
                            ;
                            string MaxHeartRate =
                                dsID2.Tables["HeartDisease_Record"].Rows[0]["maximum_heart_rate_achieved"].ToString();
                            ;
                            string Angina =
                                dsID2.Tables["HeartDisease_Record"].Rows[0]["exercise_induced_angina"].ToString();
                            ;
                            string Oldpeak = dsID2.Tables["HeartDisease_Record"].Rows[0]["oldpeak"].ToString();
                            ;
                            string Slope = dsID2.Tables["HeartDisease_Record"].Rows[0]["slope"].ToString();
                            ;
                            string Vessels =
                                dsID2.Tables["HeartDisease_Record"].Rows[0]["number_of_major_vessels"].ToString();
                            ;
                            string Thal = dsID2.Tables["HeartDisease_Record"].Rows[0]["thal"].ToString();
                            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                            //call naivebayes
                            Program bv = new Program();
                            int idd = Convert.ToInt32(dllPatientId.SelectedValue);
                            string ANS = bv.NVBYS(idd);
                            //lblData.Text = ANS;
                            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                            Naive NaiveRules = new Naive(age, sex, chest, Bp, Chol, FBloodSuger, Resting, MaxHeartRate,
                                Angina, Oldpeak, Slope, Vessels, Thal);
                            NaiveRules.CheckRule();
                            string Result = NaiveRules.Result;
                            conn = new SqlConnection(cs);
                            conn.Open();
                            da = new SqlDataAdapter();
                            da.SelectCommand = new SqlCommand();
                            da.SelectCommand.Connection = conn;
                            da.SelectCommand.CommandText =
                                "INSERT INTO [HeartDiseaseCholestral] ([patient_id],[patient_name],[Date],[Cholestral],[Thal],[Status]) VALUES('" +
                                dllPatientId.SelectedValue + "','" + txt_name.Text + "','" + date + "','" + Chol + "','" +
                                Thal + "','" + Result + "')";
                            da.SelectCommand.CommandType = CommandType.Text;
                            da.SelectCommand.ExecuteNonQuery();
                            da.SelectCommand.CommandText =
                                "INSERT INTO [patient_login_record_master] ([patient_id],[patient_name],[Date],[Cholestral],[Thal],[Status]) VALUES('" +
                                dllPatientId.SelectedValue + "','" + txt_name.Text + "','" + date + "','" + Chol + "','" +
                                Thal + "','" + Result + "')";
                            da.SelectCommand.CommandType = CommandType.Text;
                            da.SelectCommand.ExecuteNonQuery();
                            using (
                                SqlCommand cmd5 =
                                    new SqlCommand(
                                        "select Patient_Emailid from Patient_Details where Patient_Id=@Patient_Id", conn)
                                )
                            {
                                DataTable dt = new DataTable();
                                cmd5.Parameters.AddWithValue("@Patient_Id", dllPatientId.SelectedValue);
                                using (SqlDataAdapter adp = new SqlDataAdapter(cmd5))
                                {
                                    adp.Fill(dt);
                                }
                                if (dt.Rows.Count > 0)
                                {
                                    //  sms1(dt.Rows[0].ItemArray[0].ToString(), dllPatientId.SelectedValue, date, Chol, Thal, Result);
                                }
                            }
                        }
                    }
                    // for loop is close
                    // following program calculate the total number of yes
                    //conn = new SqlConnection(cs);
                    //conn.Open();
                    //da = new SqlDataAdapter(new SqlCommand("select count(Status) as p from [HeartDiseaseCholestral] where status='present'", conn));
                    //da.SelectCommand.CommandType = CommandType.Text;
                    //DataSet dsID3 = new DataSet();
                    //da.Fill(dsID3, "[HeartDiseaseCholestral]");
                    //int countTotalYes = Convert.ToInt16(dsID3.Tables["[HeartDiseaseCholestral]"].Rows[0]["p"]);
                    //// following program calculate the totoal status
                    //conn = new SqlConnection(cs);
                    //conn.Open();
                    //da = new SqlDataAdapter(new SqlCommand("select count(Status) as n from [HeartDiseaseCholestral]", conn));
                    //da.SelectCommand.CommandType = CommandType.Text;
                    //DataSet dsID4 = new DataSet();
                    //da.Fill(dsID4, "[HeartDiseaseCholestral]");
                    //int countStatus = Convert.ToInt16(dsID4.Tables["[HeartDiseaseCholestral]"].Rows[0]["n"]);
                    //// Following code  for Entropy in Cholestral
                    //double Entropy = 0;
                    //if (countTotalYes != 0)
                    //{
                    //    Entropy = (-(countTotalYes / (countTotalYes + countStatus)) * Math.Log((countTotalYes / countTotalYes + countStatus), 2) - (countStatus / countTotalYes + countStatus) * Math.Log(((countStatus / countTotalYes + countStatus)), 2));
                    //    Console.WriteLine(Entropy);
                    //    txtCholestralEntropy.Text = Entropy.ToString();
                    //}
                    //else
                    //{
                    //    lblData.Text = "Heart Disease Absence";
                    //    txtCholestralEntropy.Text = "0";
                    //}
                    conn = new SqlConnection(cs);
                    conn.Open();
                    NaiveGridCholestralResult.Visible = true;
                    da =
                        new SqlDataAdapter(
                            new SqlCommand(
                                "SELECT [patient_id],[patient_name],[Date],[Cholestral],[Thal],[Status] FROM [HeartDiseaseCholestral]",
                                conn));
                    DataTable dtIDCholestral = new DataTable();
                    da.Fill(dtIDCholestral);
                    NaiveGridCholestralResult.DataSource = dtIDCholestral;
                    NaiveGridCholestralResult.DataBind();
                    naive_acc ac = new naive_acc();
                    string acc = ac.val;
                   Label2.Text = "ACCURACY IS " + acc + " %";
                    using (
                        SqlCommand cnd =
                            new SqlCommand(
                                "insert into accuracy_graph(type_,accuracy,user_id) values(@type_,@accuracy,@user_id)",
                                conn))
                    {
                        cnd.Parameters.AddWithValue("@type_", "NAIVE");
                        cnd.Parameters.AddWithValue("@accuracy", acc);
                        cnd.Parameters.AddWithValue("@user_id", dllPatientId.SelectedValue);
                        //
                        // conn.Open();
                        cnd.ExecuteNonQuery();
                        // conn.Close();
                    }
                    DataTable dtz = new DataTable();
                    using (
                        SqlCommand cmd3 =
                            new SqlCommand(
                                "select top 1 Cholestral from HeartDiseaseCholestral order by HeartDiseaseCholestralID3_Id desc",
                                conn))
                    {
                        using (SqlDataAdapter ad = new SqlDataAdapter(cmd3))
                        {
                            ad.Fill(dtz);
                        }
                    }
                    //double choll = Convert.ToDouble(dtz.Rows[0].ItemArray[0]);
                    //if (choll > 0 && choll < 40)
                    //{
                    //    Label3.Text = "A MAJOR RISK FACTOR FOR HEART DISEASE";
                    //}
                    //else if (choll >= 40 && choll < 59)
                    //{
                    //    Label3.Text = "THE HIGHER, THE BETTER";
                    //}
                    //else if (choll >= 59 && choll < 80)
                    //{
                    //    Label3.Text = "CONSIDERED PROTECTED AGAINST HEART DISEASE";
                    //}
                    //else if (choll >= 80 && choll < 100)
                    //{
                    //    Label3.Text = "OPTIMAL";
                    //}
                    //else if (choll >= 100 && choll < 129)
                    //{
                    //    Label3.Text = "NEAR OPTIMAL/ABOVE OPTIMAL";
                    //}
                    //else if (choll >= 129 && choll < 159)
                    //{
                    //    Label3.Text = "BORDERLINE HIGH";
                    //}
                    //else if (choll >= 159 && choll < 189)
                    //{
                    //    Label3.Text = "HIGH";
                    //}
                    //else if (choll >= 190 && choll < 195)
                    //{
                    //    Label3.Text = "VERY HIGH";
                    //}
                    //else if (choll >= 195 && choll < 200)
                    //{
                    //    Label3.Text = "DESIRABLE";
                    //}
                    //else if (choll >= 200 && choll < 239)
                    //{
                    //    Label3.Text = "BORDERLINE HIGH";
                    //}
                    //else if (choll >= 239)
                    //{
                    //    Label3.Text = "HIGH";
                    //}
                }
                else
                {
                    lblData.Text = "Required Data not found";
                    NaiveGridCholestralResult.Visible = false;
                    Label2.Text = "ACCURACY IS 0 %";
                }

                //using (SqlCommand cmd = new SqlCommand("select type_,accuracy from accuracy_graph ", conn))
                //{
                //    DataTable dt = new DataTable();
                //    using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
                //    {
                //        adp.Fill(dt);
                //    }
                //    Chart1.DataSource = dt;
                //    Chart1.Series["Series1"].XValueMember = "accuracy";
                //    Chart1.Series["Series1"].YValueMembers = "type_";
                //}

            } // algo select else loop is close

        }
    
}

    //sms1(string mailid, string report, string datee, string id, string medicines)
            // sms1(dt.Rows[0].ItemArray[0].ToString(), dllPatientId.SelectedValue, date, Chol, Thal, Result); string report, string datee, string id, string medicines)
        public
        void sms1 
        (string mailid, string user_id, string datee, string chol, string thaii, string result)
        {
            SmtpClient smtpserver = new SmtpClient();
            MailMessage mail = new MailMessage();
            smtpserver.Credentials = new System.Net.NetworkCredential("project.tpo@gmail.com", "1234ABCD$");
            smtpserver.Port = 587;
            smtpserver.EnableSsl = true;
            smtpserver.Host = "smtp.gmail.com";
            mail = new MailMessage();
            mail.From = new MailAddress("project.tpo@gmail.com");
            mail.To.Add(mailid);
            mail.Subject = "Report Details";
            mail.Body = "The Report For User-ID :" + user_id + " is \n CHOL is : " + chol + "\n THAI IS : " + thaii +
                        "\n RESULT IS : " + result + "\n DATE : " + datee + ".";
            smtpserver.Send(mail);
        }
    protected
        void resultGrid_PageIndexChanging 
        (object sender, GridViewPageEventArgs e)
        {
            resultGrid.PageIndex = e.NewPageIndex;
            Fillgrid();
            //resultGrid.DataSource = dtable;
            //resultGrid.DataBind();
        }
    protected
        void Fillgrid 
        ()
        {
            conn = new SqlConnection(cs);
            conn.Open();
            da =
                new SqlDataAdapter(
                    new SqlCommand(
                        "SELECT [patient_id],[patient_name],[Date],[Cholestral],[CholestralPercentage],[Status] FROM [HeartDiseaseStatus] where patient_id='" +
                        dllPatientId.SelectedValue + "' order by date desc", conn));
            da.SelectCommand.CommandType = CommandType.Text;
            DataTable dtable = new DataTable();
            da.Fill(dtable);
            resultGrid.DataSource = dtable;
            resultGrid.DataBind();
        }
    protected
        void NaiveGridCholestralResult_PageIndexChanging 
        (object sender, GridViewPageEventArgs e)
        {
            NaiveGridCholestralResult.PageIndex = e.NewPageIndex;
            IDCholestralResult();
        }

    protected
        void IDCholestralResult 
        ()
        {
            conn = new SqlConnection(cs);
            conn.Open();
            da =
                new SqlDataAdapter(
                    new SqlCommand(
                        "select patient_id,patient_name,Date,Cholestral,Thal,Status from [HeartDiseaseCholestral]", conn));
            DataTable dtIDCholestral = new DataTable();
            da.Fill(dtIDCholestral);
            NaiveGridCholestralResult.DataSource = dtIDCholestral;
            NaiveGridCholestralResult.DataBind();
        }

    protected
        void lnkGraph_Click 
        (object sender, EventArgs e)
        {
            Response.Redirect("HeartDiseaseChart.aspx");
        }
    protected
        void Button1_Click 
        (object sender, EventArgs e)
        {
            using (SqlCommand cmd = new SqlCommand("select type_,accuracy from accuracy_graph ", conn))
            {
                DataTable dt = new DataTable();
                using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
                {
                    adp.Fill(dt);
                }
                ////Chart1.DataSource = dt;
                ////Chart1.Series["Series1"].XValueMember = "type_";
                //Chart1.Series["Series1"].YValueMembers = "ac?
            }
        }
    protected
        void Button4_Click 
        (object sender, EventArgs e)
        {
            Response.Redirect("chartt.aspx");
        }
    }



