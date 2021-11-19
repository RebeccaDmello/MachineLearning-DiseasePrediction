using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace ProbabilityFunctions
{
    public class Program
    {


        static void Main(string[] args)
        {

            //
            //table.Columns.Add("Sex");
            //table.Columns.Add("Height", typeof(double));
            //table.Columns.Add("Weight", typeof(double));
            //table.Columns.Add("FootSize", typeof(double));

            ////training data.
            //table.Rows.Add("male", 6, 180, 12);
            //table.Rows.Add("male", 5.92, 190, 11);
            //table.Rows.Add("male", 5.58, 170, 12);
            //table.Rows.Add("male", 5.92, 165, 10);

            //table.Rows.Add("female", 5, 100, 6);
            //table.Rows.Add("female", 5.5, 150, 8);
            //table.Rows.Add("female", 5.42, 130, 7);
            //table.Rows.Add("female", 5.75, 150, 9);

            //table.Rows.Add("transgender", 4, 200, 5);
            //table.Rows.Add("transgender", 4.10, 150, 8);
            //table.Rows.Add("transgender", 5.42, 190, 7);
            //table.Rows.Add("transgender", 5.50, 150, 9);


        }
        public string NVBYS(int id)
        {
            string cs = Convert.ToString(System.Configuration.ConfigurationManager.AppSettings["connecting_string"]);
            SqlConnection conn = new SqlConnection(cs);
            DataTable table = new DataTable();
            using (System.IO.TextReader tr = File.OpenText(@"D:\Semester 6\ResearchProject\FinalProject_300322984\code\code\MDSS\dataset\new_21.txt"))
            {
                string line;
                while ((line = tr.ReadLine()) != null)
                {

                    string[] items = line.Trim().Split('\t');
                    if (table.Columns.Count == 0)
                    {
                        // Create the data columns for the data table based on the number of items
                        // on the first line of the file
                        for (int i = 0; i < items.Length; i++)
                            table.Columns.Add(new DataColumn("Column" + i, typeof(string)));
                    }
                    table.Rows.Add(items);

                }
                Classifier classifier = new Classifier();
                classifier.TrainClassifier(table);
                DataTable dt = new DataTable();
                using (SqlCommand cmd = new SqlCommand("select age, sex, chest, resting_blood_pressure, serum_cholestoral, fasting_blood_sugar, resting_electrocardiographic_results, maximum_heart_rate_achieved, exercise_induced_angina, oldpeak, slope, number_of_major_vessels, thal from HeartDisease_Record where patient_id=" + id + "", conn))
                {
                    using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
                    {
                        adp.Fill(dt);
                    }
                }
                double age, sex, chest, rest_blood_pressue, serum_cholestoral, fasting_blood_sugar, resting_electrocardiographic_results,
                    maximum_heart_rate_achieved, exercise_induced_angina, oldpeak, slope, number_of_major_vessels, thal;
                age = Convert.ToDouble(dt.Rows[0].ItemArray[0]);
                sex = Convert.ToDouble(dt.Rows[0].ItemArray[0]);
                chest = Convert.ToDouble(dt.Rows[0].ItemArray[0]);
                rest_blood_pressue = Convert.ToDouble(dt.Rows[0].ItemArray[0]);
                serum_cholestoral = Convert.ToDouble(dt.Rows[0].ItemArray[0]);
                fasting_blood_sugar = Convert.ToDouble(dt.Rows[0].ItemArray[0]);
                resting_electrocardiographic_results = Convert.ToDouble(dt.Rows[0].ItemArray[0]);
                maximum_heart_rate_achieved = Convert.ToDouble(dt.Rows[0].ItemArray[0]);
                exercise_induced_angina = Convert.ToDouble(dt.Rows[0].ItemArray[0]);
                oldpeak = Convert.ToDouble(dt.Rows[0].ItemArray[0]);
                slope = Convert.ToDouble(dt.Rows[0].ItemArray[0]);
                number_of_major_vessels = Convert.ToDouble(dt.Rows[0].ItemArray[0]);
                thal = Convert.ToDouble(dt.Rows[0].ItemArray[0]);

                return(classifier.Classify(new double[] {age, sex, chest, rest_blood_pressue, serum_cholestoral, fasting_blood_sugar, resting_electrocardiographic_results,
                    maximum_heart_rate_achieved, exercise_induced_angina, oldpeak, slope, number_of_major_vessels, thal }));
            }
            //DataTable table = new DataTable();
            //string cs = Convert.ToString(System.Configuration.ConfigurationManager.AppSettings["connecting_string"]);
            //SqlConnection conn = new SqlConnection(cs);
            //using (SqlCommand cmd = new SqlCommand("select age, sex, chest, resting_blood_pressure, serum_cholestoral, fasting_blood_sugar, resting_electrocardiographic_results, maximum_heart_rate_achieved, exercise_induced_angina, oldpeak, slope, number_of_major_vessels, thal from HeartDisease_Record", conn))
            //{
            //    using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
            //    {
            //        adp.Fill(table);
            //    }
            //}
            //Classifier classifier = new Classifier();
            //classifier.TrainClassifier(table);
            //Console.WriteLine(classifier.Classify(new double[] { 4, 150, 12 }));
            //Console.Read();
            //return "tt" ;
        }
    }
}