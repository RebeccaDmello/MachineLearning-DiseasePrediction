using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ID3Diabetes
/// </summary>
public class ID3Diabetes
{
    public String Number_of_times_pregnant { get; set; }
    public String Plasma_Glucose_Concentration { get; set; }
    public String Diastolic_blood_pressure { get; set; }
    public String Triceps_Skin_Fold_Thickness { get; set; }
    public String Hour_serum_insulin { get; set; }
    public String Body_Mass_Index { get; set; }
    public String Diabetes_Pedigree_Function { get; set; }
    public String Age { get; set; }
    public String Result { get; set; }

    public ID3Diabetes(String number_of_times_pregnant, String plasma_glucose_concentration, String diastolic_blood_pressure, String triceps_skin_fold_thickness, String hour_serum_insulin, String body_mass_index, String diabetes_pedigree_function, String age)
    {
        Number_of_times_pregnant = number_of_times_pregnant;
        Plasma_Glucose_Concentration = plasma_glucose_concentration;
        Diastolic_blood_pressure = diastolic_blood_pressure;
        Triceps_Skin_Fold_Thickness = triceps_skin_fold_thickness;
        Hour_serum_insulin = hour_serum_insulin;
        Body_Mass_Index = body_mass_index;
        Diabetes_Pedigree_Function = diabetes_pedigree_function;
        Age = age;
    }

    public void CheckRuleDiabetes()
    {
        //this.Number_of_times_pregnant = number_of_times_pregnant;
        //this.Plasma_Glucose_Concentration = plasma_glucose_concentration;
        //this.Diastolic_blood_pressure = diastolic_blood_pressure;
        if (Age == "21")
        {
            if (Triceps_Skin_Fold_Thickness == "35")
            {
                Result = "yes";
            }
            else
            {
                if (Plasma_Glucose_Concentration == "177")
                {
                    Result = "yes";
                }
                else
                {
                    Result = "no";
                }
            }
        }
        else
        {
            if (Age == "22")
            {
                if (Number_of_times_pregnant == "1")
                {
                    Result = "no";
                }
                else
                {
                    if (Plasma_Glucose_Concentration == "139")
                    {
                        Result = "yes";
                    }
                    else
                    {
                        if (Plasma_Glucose_Concentration == "131")
                        {
                            Result = "yes";
                        }
                        else
                        {
                            if (Plasma_Glucose_Concentration == "142")
                            {
                                Result = "yes";
                            }
                            else
                            {
                                if (Plasma_Glucose_Concentration == "173")
                                {
                                    Result = "yes";
                                }
                                else
                                {
                                    if (Plasma_Glucose_Concentration == "104")
                                    {
                                        Result = "yes";
                                    }
                                    else
                                    {
                                        Result = "no";
                                    }
                                }
                            }
                        }
                    }
                }
            }
            else
            {
                if (Body_Mass_Index == "32.9")
                {
                    Result = "yes";
                }
                else
                {
                    if (Plasma_Glucose_Concentration == "99")
                    {
                        Result = "no";
                    }
                    else
                    {
                        if (Age == "24")
                        {
                            if (Number_of_times_pregnant == "3")
                            {
                                Result = "yes";
                            }
                            else
                            {
                                if (Number_of_times_pregnant == "0")
                                {
                                    if (Plasma_Glucose_Concentration == "126")
                                    {
                                        Result = "no";
                                    }
                                    else
                                    {
                                        if (Plasma_Glucose_Concentration == "147")
                                        {
                                            Result = "no";
                                        }
                                        else
                                        {
                                            if (Plasma_Glucose_Concentration == "117")
                                            {
                                                Result = "no";
                                            }
                                            else
                                            {
                                                Result = "yes";
                                            }
                                        }
                                    }
                                }
                                else
                                {
                                    if (Diastolic_blood_pressure == "48")
                                    {
                                        Result = "yes";
                                    }
                                    else
                                    {
                                        Result = "no";
                                    }
                                }
                            }
                        }
                        else
                        {
                            if (Plasma_Glucose_Concentration == "96")
                            {
                                Result = "no";
                            }
                            else
                            {
                                if (Age == "43")
                                {
                                    Result = "yes";
                                }
                                else
                                {
                                    if (Plasma_Glucose_Concentration == "148")
                                    {
                                        Result = "yes";
                                    }
                                    else
                                    {
                                        if (Plasma_Glucose_Concentration == "189")
                                        {
                                            Result = "yes";
                                        }
                                        else
                                        {
                                            if (Plasma_Glucose_Concentration == "196")
                                            {
                                                Result = "yes";
                                            }
                                            else
                                            {
                                                if (Plasma_Glucose_Concentration == "181")
                                                {
                                                    Result = "yes";
                                                }
                                                else
                                                {
                                                    if (Plasma_Glucose_Concentration == "184")
                                                    {
                                                        Result = "yes";
                                                    }
                                                    else
                                                    {
                                                        if (Triceps_Skin_Fold_Thickness == "15")
                                                        {
                                                            Result = "no";
                                                        }
                                                        else
                                                        {
                                                            if (Hour_serum_insulin == "175")
                                                            {
                                                                Result = "yes";
                                                            }
                                                            else
                                                            {
                                                                if (Hour_serum_insulin == "130")
                                                                {
                                                                    Result = "yes";
                                                                }
                                                                else
                                                                {
                                                                    if (Plasma_Glucose_Concentration == "110")
                                                                    {
                                                                        Result = "no";
                                                                    }
                                                                    else
                                                                    {
                                                                        if (Hour_serum_insulin == "94")
                                                                        {
                                                                            Result = "no";
                                                                        }
                                                                        else
                                                                        {
                                                                            if (Body_Mass_Index == "33.3")
                                                                            {
                                                                                Result = "yes";
                                                                            }
                                                                            else
                                                                            {
                                                                                if (Hour_serum_insulin == "110")
                                                                                {
                                                                                    Result = "no";
                                                                                }
                                                                                else
                                                                                {
                                                                                    if (Age == "23")
                                                                                    {
                                                                                        if (Number_of_times_pregnant == "2")
                                                                                        {
                                                                                            if (Plasma_Glucose_Concentration == "107")
                                                                                            {
                                                                                                Result = "no";
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                Result = "yes";
                                                                                            }
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if (Plasma_Glucose_Concentration == "107")
                                                                                            {
                                                                                                Result = "yes";
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if (Plasma_Glucose_Concentration == "179")
                                                                                                {
                                                                                                    Result = "yes";
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    Result = "no";
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if (Diastolic_blood_pressure == "0")
                                                                                        {
                                                                                            if (Plasma_Glucose_Concentration == "119")
                                                                                            {
                                                                                                Result = "no";
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if (Age == "25")
                                                                                                {
                                                                                                    if (Plasma_Glucose_Concentration == "138")
                                                                                                    {
                                                                                                        Result = "yes";
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        Result = "no";
                                                                                                    }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if (Number_of_times_pregnant == "10")
                                                                                                    {
                                                                                                        Result = "no";
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if (Plasma_Glucose_Concentration == "117")
                                                                                                        {
                                                                                                            Result = "no";
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            Result = "yes";
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if (Plasma_Glucose_Concentration == "120")
                                                                                            {
                                                                                                Result = "no";
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if (Body_Mass_Index == "31.6")
                                                                                                {
                                                                                                    if (Number_of_times_pregnant == "9")
                                                                                                    {
                                                                                                        Result = "no";
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if (Plasma_Glucose_Concentration == "100")
                                                                                                        {
                                                                                                            Result = "no";
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            Result = "yes";
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if (Diastolic_blood_pressure == "58")
                                                                                                    {
                                                                                                        Result = "no";
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if (Number_of_times_pregnant == "14")
                                                                                                        {
                                                                                                            Result = "yes";
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            if (Plasma_Glucose_Concentration == "100")
                                                                                                            {
                                                                                                                Result = "no";
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                if (Body_Mass_Index == "32")
                                                                                                                {
                                                                                                                    Result = "yes";
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    if (Plasma_Glucose_Concentration == "95")
                                                                                                                    {
                                                                                                                        Result = "no";
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        if (Diastolic_blood_pressure == "70")
                                                                                                                        {
                                                                                                                            if (Age == "37")
                                                                                                                            {
                                                                                                                                Result = "no";
                                                                                                                            }
                                                                                                                            else
                                                                                                                            {
                                                                                                                                if (Number_of_times_pregnant == "5")
                                                                                                                                {
                                                                                                                                    Result = "no";
                                                                                                                                }
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    if (Number_of_times_pregnant == "9")
                                                                                                                                    {
                                                                                                                                        Result = "no";
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        if (Number_of_times_pregnant == "13")
                                                                                                                                        {
                                                                                                                                            Result = "no";
                                                                                                                                        }
                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                            if (Plasma_Glucose_Concentration == "74")
                                                                                                                                            {
                                                                                                                                                Result = "no";
                                                                                                                                            }
                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                                if (Plasma_Glucose_Concentration == "82")
                                                                                                                                                {
                                                                                                                                                    Result = "no";
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                    if (Triceps_Skin_Fold_Thickness == "39")
                                                                                                                                                    {
                                                                                                                                                        Result = "no";
                                                                                                                                                    }
                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                        Result = "yes";
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
                                                                                                                            if (Triceps_Skin_Fold_Thickness == "31")
                                                                                                                            {
                                                                                                                                Result = "no";
                                                                                                                            }
                                                                                                                            else
                                                                                                                            {
                                                                                                                                if (Triceps_Skin_Fold_Thickness == "40")
                                                                                                                                {
                                                                                                                                    Result = "no";
                                                                                                                                }
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    if (Plasma_Glucose_Concentration == "171")
                                                                                                                                    {
                                                                                                                                        Result = "yes";
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        if (Plasma_Glucose_Concentration == "163")
                                                                                                                                        {
                                                                                                                                            Result = "yes";
                                                                                                                                        }
                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                            if (Plasma_Glucose_Concentration == "124")
                                                                                                                                            {
                                                                                                                                                Result = "yes";
                                                                                                                                            }
                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                                if (Plasma_Glucose_Concentration == "162")
                                                                                                                                                {
                                                                                                                                                    Result = "yes";
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                    if (Plasma_Glucose_Concentration == "156")
                                                                                                                                                    {
                                                                                                                                                        Result = "yes";
                                                                                                                                                    }
                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                        if (Plasma_Glucose_Concentration == "152")
                                                                                                                                                        {
                                                                                                                                                            Result = "yes";
                                                                                                                                                        }
                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                            if (Triceps_Skin_Fold_Thickness == "47")
                                                                                                                                                            {
                                                                                                                                                                Result = "yes";
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                                if (Hour_serum_insulin == "88")
                                                                                                                                                                {
                                                                                                                                                                    Result = "yes";
                                                                                                                                                                }
                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                    if (Hour_serum_insulin == "220")
                                                                                                                                                                    {
                                                                                                                                                                        Result = "yes";
                                                                                                                                                                    }
                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                        if (Hour_serum_insulin == "99")
                                                                                                                                                                        {
                                                                                                                                                                            Result = "yes";
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                            if (Age == "26")
                                                                                                                                                                            {
                                                                                                                                                                                Result = "no";
                                                                                                                                                                            }
                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                                if (Plasma_Glucose_Concentration == "119")
                                                                                                                                                                                {
                                                                                                                                                                                    Result = "yes";
                                                                                                                                                                                }
                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                    if (Plasma_Glucose_Concentration == "180")
                                                                                                                                                                                    {
                                                                                                                                                                                        Result = "yes";
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                        if (Hour_serum_insulin == "156")
                                                                                                                                                                                        {
                                                                                                                                                                                            Result = "yes";
                                                                                                                                                                                        }
                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                            if (Plasma_Glucose_Concentration == "122")
                                                                                                                                                                                            {
                                                                                                                                                                                                Result = "no";
                                                                                                                                                                                            }
                                                                                                                                                                                            else
                                                                                                                                                                                            {
                                                                                                                                                                                                if (Diastolic_blood_pressure == "86")
                                                                                                                                                                                                {
                                                                                                                                                                                                    Result = "yes";
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                    if (Body_Mass_Index == "39.1")
                                                                                                                                                                                                    {
                                                                                                                                                                                                        Result = "yes";
                                                                                                                                                                                                    }
                                                                                                                                                                                                    else
                                                                                                                                                                                                    {
                                                                                                                                                                                                        if (Body_Mass_Index == "34.5")
                                                                                                                                                                                                        {
                                                                                                                                                                                                            Result = "yes";
                                                                                                                                                                                                        }
                                                                                                                                                                                                        else
                                                                                                                                                                                                        {
                                                                                                                                                                                                            if (Body_Mass_Index == "27.9")
                                                                                                                                                                                                            {
                                                                                                                                                                                                                Result = "yes";
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                                if (Body_Mass_Index == "30.8")
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    Result = "yes";
                                                                                                                                                                                                                }
                                                                                                                                                                                                                else
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    if (Diabetes_Pedigree_Function == "1.224")
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                        Result = "yes";
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                    else
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                        if (Diabetes_Pedigree_Function == "0.254")
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            if (Number_of_times_pregnant == "0")
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                Result = "no";
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                            else
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                Result = "yes";
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            if (Number_of_times_pregnant == "8")
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                if (Plasma_Glucose_Concentration == "126")
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    Result = "no";
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    if (Diastolic_blood_pressure == "72")
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                        Result = "no";
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                        if (Plasma_Glucose_Concentration == "85")
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            Result = "no";
                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            if (Plasma_Glucose_Concentration == "194")
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                Result = "no";
                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                Result = "yes";
                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                            else
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                if (Plasma_Glucose_Concentration == "194")
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    Result = "yes";
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    if (Body_Mass_Index == "38.5")
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                        Result = "yes";
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                        if (Diastolic_blood_pressure == "78")
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            Result = "no";
                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                            if (Number_of_times_pregnant == "6")
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                if (Plasma_Glucose_Concentration == "134")
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                    Result = "yes";
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                    Result = "no";
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                if (Triceps_Skin_Fold_Thickness == "33")
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                    Result = "no";
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                    if (Plasma_Glucose_Concentration == "168")
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                        Result = "yes";
                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                        if (Plasma_Glucose_Concentration == "166")
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                            Result = "yes";
                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                            if (Plasma_Glucose_Concentration == "107")
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                Result = "yes";
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                if (Plasma_Glucose_Concentration == "158")
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                    Result = "yes";
                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                    if (Plasma_Glucose_Concentration == "0")
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                        Result = "yes";
                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                        if (Plasma_Glucose_Concentration == "134")
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                            Result = "yes";
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                            if (Plasma_Glucose_Concentration == "173")
                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                Result = "yes";
                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                if (Plasma_Glucose_Concentration == "128")
                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                    Result = "yes";
                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                    if (Age == "25")
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                        if (Plasma_Glucose_Concentration == "109")
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                            Result = "yes";
                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                            Result = "no";
                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                        if (Plasma_Glucose_Concentration == "112")
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                            Result = "yes";
                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                            if (Plasma_Glucose_Concentration == "140")
                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                Result = "yes";
                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                if (Diastolic_blood_pressure == "82")
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                    Result = "no";
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                    if (Plasma_Glucose_Concentration == "165")
                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                        Result = "yes";
                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                        if (Plasma_Glucose_Concentration == "161")
                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                            Result = "yes";
                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                            if (Plasma_Glucose_Concentration == "182")
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                Result = "yes";
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                if (Plasma_Glucose_Concentration == "178")
                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                    Result = "yes";
                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                    if (Diastolic_blood_pressure == "84")
                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                        Result = "no";
                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                        if (Plasma_Glucose_Concentration == "137")
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                            Result = "yes";
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                            if (Plasma_Glucose_Concentration == "115")
                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                if (Number_of_times_pregnant == "5")
                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                    Result = "yes";
                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                    if (Number_of_times_pregnant == "4")
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                        Result = "yes";
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                        Result = "no";
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                if (Plasma_Glucose_Concentration == "133")
                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                    Result = "yes";
                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                    if (Plasma_Glucose_Concentration == "155")
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                        Result = "yes";
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                        if (Plasma_Glucose_Concentration == "172")
                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                            Result = "yes";
                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                            if (Diastolic_blood_pressure == "62")
                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                if (Number_of_times_pregnant == "5")
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                    Result = "no";
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                    Result = "yes";
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                if (Diastolic_blood_pressure == "66")
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                    if (Triceps_Skin_Fold_Thickness == "0")
                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                        Result = "yes";
                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                        Result = "no";
                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                    if (Triceps_Skin_Fold_Thickness == "29")
                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                        if (Plasma_Glucose_Concentration == "105")
                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                            Result = "no";
                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                            Result = "yes";
                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                        if (Plasma_Glucose_Concentration == "105")
                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                            Result = "yes";
                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                            if (Triceps_Skin_Fold_Thickness == "42")
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                Result = "yes";
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                if (Body_Mass_Index == "32.5")
                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                    Result = "yes";
                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                    if (Body_Mass_Index == "26.5")
                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                        Result = "yes";
                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                        if (Body_Mass_Index == "27")
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                            Result = "yes";
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                            if (Diabetes_Pedigree_Function == "0.583")
                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                Result = "yes";
                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                if (Diabetes_Pedigree_Function == "0.539")
                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                    Result = "yes";
                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                    Result = "no";
                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                }
                                                                                                                                                                                                            }
                                                                                                                                                                                                        }
                                                                                                                                                                                                    }
                                                                                                                                                                                                }
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                    }
                                                                                                                                                                                }
                                                                                                                                                                            }
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

    }

}