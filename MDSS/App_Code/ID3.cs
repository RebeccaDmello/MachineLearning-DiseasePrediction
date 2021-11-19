using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ID3
/// </summary>
public class ID3
{

    public String age { get; set; }
    public String sex { get; set; }
    public String chest { get; set; }
    public String resting_blood_pressure { get; set; }
    public String serum_cholestoral { get; set; }
    // public String FastingBloodSugar { get; set; }
    public String fasting_blood_sugar { get; set; }
    public String resting_electrocardiographic_results { get; set; }
    public String maximum_heart_rate_achieved { get; set; }
    public String exercise_induced_angina { get; set; }
    public String oldpeak { get; set; }
    public String slope { get; set; }
    public String number_of_major_vessels { get; set; }
    public String thal { get; set; }
    public String Result { get; set; }
    public ID3(string Age, string Sex, string Chest, string Bp, string Chol, string FBloodSuger, string Resting, string MaxHeartRate, string Angina, string Oldpeak, string Slope, string Vessels, string Thal)
    {
       
        age = Age;
        sex = Sex;
        chest = Chest;
        resting_blood_pressure = Bp;
        serum_cholestoral = Chol;
        fasting_blood_sugar = FBloodSuger;
        resting_electrocardiographic_results = Resting;
        maximum_heart_rate_achieved = MaxHeartRate;
        exercise_induced_angina = Angina;
        oldpeak = Oldpeak;
        slope = Slope;
        number_of_major_vessels = Vessels;
        thal = Thal;
    }

    public void CheckRule()
    {
        if (thal == "3.0")
        {
            if (chest == "4.0")
            {
                if (number_of_major_vessels == "0.0")
                {
                    if (age == "67.0")
                    {
                        Result = "present";
                    }
                    else
                    {
                        if (sex == "1.0")
                        {
                            Result = "absent";
                        }
                        else
                        {
                            if (age == "59.0")
                            {
                                Result = "present";
                            }
                            else
                            {
                                if (age == "60.0")
                                {
                                    Result = "present";
                                }
                                else
                                {
                                    if (age == "61.0")
                                    {
                                        Result = "present";
                                    }
                                    else
                                    {
                                        if (age == "55.0")
                                        {
                                            Result = "present";
                                        }
                                        else
                                        {
                                            if (resting_blood_pressure == "150.0")
                                            {
                                                Result = "present";
                                            }
                                            else
                                            {
                                                Result = "absent";
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                else
                {
                    if (serum_cholestoral == "303.0")
                    {
                        Result = "absent";
                    }
                    else
                    {
                        if (resting_blood_pressure == "106.0")
                        {
                            Result = "absent";
                        }
                        else
                        {
                            Result = "present";
                        }
                    }
                }
            }
            else
            {
                if (sex == "1.0")
                {
                    if (slope == "2.0")
                    {
                        if (exercise_induced_angina == "0.0")
                        {
                            if (resting_blood_pressure == "130.0")
                            {
                                Result = "absent";
                            }
                            else
                            {
                                if (fasting_blood_sugar == "0.0")
                                {
                                    Result = "present";
                                }
                                else
                                {
                                    if (age == "65.0")
                                    {
                                        Result = "present";
                                    }
                                    else
                                    {
                                        Result = "absent";
                                    }
                                }
                            }
                        }
                        else
                        {
                            Result = "absent";
                        }
                    }
                    else
                    {
                        if (age == "64.0")
                        {
                            Result = "present";
                        }
                        else
                        {
                            if (resting_blood_pressure == "160.0")
                            {
                                Result = "present";
                            }
                            else
                            {
                                if (resting_blood_pressure == "108.0")
                                {
                                    Result = "present";
                                }
                                else
                                {
                                    if (serum_cholestoral == "149.0")
                                    {
                                        Result = "present";
                                    }
                                    else
                                    {
                                        Result = "absent";
                                    }
                                }
                            }
                        }
                    }
                }
                else
                {
                    if (serum_cholestoral == "319.0")
                    {
                        Result = "present";
                    }
                    else
                    {
                        Result = "absent";
                    }
                }
            }
        }
        else
        {
            if (number_of_major_vessels == "0.0")
            {
                if (exercise_induced_angina == "0.0")
                {
                    if (chest == "3.0")
                    {
                        Result = "absent";
                    }
                    else
                    {
                        if (thal == "7.0")
                        {
                            if (age == "48.0")
                            {
                                Result = "present";
                            }
                            else
                            {
                                if (fasting_blood_sugar == "0.0")
                                {
                                    if (maximum_heart_rate_achieved == "161.0")
                                    {
                                        Result = "absent";
                                    }
                                    else
                                    {
                                        if (chest == "4.0")
                                        {
                                            if (age == "65.0")
                                            {
                                                Result = "absent";
                                            }
                                            else
                                            {
                                                Result = "present";
                                            }
                                        }
                                        else
                                        {
                                            if (age == "57.0")
                                            {
                                                Result = "present";
                                            }
                                            else
                                            {
                                                if (resting_blood_pressure == "170.0")
                                                {
                                                    Result = "present";
                                                }
                                                else
                                                {
                                                    Result = "absent";
                                                }
                                            }
                                        }
                                    }
                                }
                                else
                                {
                                    Result = "absent";
                                }
                            }
                        }
                        else
                        {
                            Result = "absent";
                        }
                    }
                }
                else
                {
                    if (age == "57.0")
                    {
                        Result = "absent";
                    }
                    else
                    {
                        if (resting_blood_pressure == "142.0")
                        {
                            Result = "absent";
                        }
                        else
                        {
                            if (chest == "4.0")
                            {
                                Result = "present";
                            }
                            else
                            {
                                if (age == "40.0")
                                {
                                    Result = "absent";
                                }
                                else
                                {
                                    if (age == "58.0")
                                    {
                                        Result = "absent";
                                    }
                                    else
                                    {
                                        Result = "present";
                                    }
                                }
                            }
                        }
                    }
                }
            }
            else
            {
                if (resting_electrocardiographic_results == "2.0")
                {
                    Result = "present";
                }
                else
                {
                    if (chest == "3.0")
                    {
                        if (slope == "2.0")
                        {
                            if (serum_cholestoral == "231.0")
                            {
                                Result = "absent";
                            }
                            else
                            {
                                Result = "present";
                            }
                        }
                        else
                        {
                            Result = "absent";
                        }
                    }
                    else
                    {
                        if (age == "64.0")
                        {
                            Result = "absent";
                        }
                        else
                        {
                            if (resting_blood_pressure == "108.0")
                            {
                                Result = "absent";
                            }
                            else
                            {
                                Result = "present";
                            }
                        }
                    }
                }
            }
        }

    }

}