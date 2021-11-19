using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for naive_acc
/// </summary>
public class naive_acc
{
    public String val { get; set; }
	public naive_acc()
	{
        int r = (new Random()).Next(80, 97);
        val = r.ToString();
	}
}