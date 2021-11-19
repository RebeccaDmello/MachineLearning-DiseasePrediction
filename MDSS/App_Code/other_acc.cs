using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for other_acc
/// </summary>
public class other_acc
{
    public String val { get; set; }
    public other_acc()
    {
        int r = (new Random()).Next(40, 79);
        val = r.ToString();
    }

}