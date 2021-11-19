<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HeartDisease.aspx.cs" Inherits="HeartDisease" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register TagPrefix="uc1" TagName="right_menu" Src="~/Includes/right_menu.ascx" %>
<%@ Register TagPrefix="uc2" TagName="header" Src="~/Includes/header.ascx" %>
<%@ Register Assembly="BasicFrame.WebControls.BasicDatePicker" Namespace="BasicFrame.WebControls"
    TagPrefix="BDP" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/theme.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 16%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
        <uc2:header ID="header" runat="server" />
        <div id="top-panel">
            <div id="panel">
                <ul>
                    <li>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </li>
                </ul>
            </div>
        </div>
        <div id="wrapper">
            <div id="content">
                <div id="box">
                    <br />
                    <h3>
                        &nbsp;&nbsp; Heart Disease Patient Details
                    </h3>
                    <table>
                        <tr style="height: 50px">
                            <td class="style1">
                                Patinet Id:*
                            </td>
                            <td width="20%">
                                <asp:DropDownList ID="ddl_PatientId" runat="server" DataTextField="Patient_Id" DataValueField="Patient_Id"
                                    AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                                    Height="23px" Width="81px">
                                    <asp:ListItem Value="0">Select</asp:ListItem>
                                </asp:DropDownList>
                                <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDDSConnectionString %>"
                                    SelectCommand="SELECT [Patient_Id] FROM [Patient_Details]"></asp:SqlDataSource>--%>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr style="height: 50px">
                            <td class="style1">
                                Patinet Name:*
                            </td>
                            <td width="20%">
                                <asp:TextBox ID="txt_name" runat="server" Width="211px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr style="height: 50px">
                            <td class="style1">
                                Date:*
                            </td>
                            <td>
                                <asp:ToolkitScriptManager ID="toolScriptManageer1" runat="server">
                                </asp:ToolkitScriptManager>
                                <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
                                <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtdate"
                                    Format="yyyy-MM-dd">
                                </asp:CalendarExtender>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red"
                                    ControlToValidate="txtdate" ErrorMessage="SELECT DATE"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr style="height: 40px">
                            <td class="style1" style="width: auto">
                                Add Disease Record
                            </td>
                        </tr>
                        <tr style="height: 80px">
                            <td class="style1">
                                Sex:*
                            </td>
                            <td width="20%">
                                <asp:DropDownList ID="ddl_sex" runat="server" Height="29px" Width="202px">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem Value="1">Male</asp:ListItem>
                                    <asp:ListItem Value="0">Female</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr style="height: 80px">
                            <td class="style1">
                                Age:*
                            </td>
                            <td width="20%">
                                <asp:TextBox ID="txt_Age" runat="server" Width="211px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_Age"
                                    ErrorMessage=" Enter Age" ForeColor="red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr style="height: 80px">
                            <td class="style1">
                                Chest Paint:*
                            </td>
                            <td width="20%">
                                <asp:DropDownList ID="ddlChestPaint" runat="server">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem Value="1">Typical Angina</asp:ListItem>
                                    <asp:ListItem Value="2">ATypical Angina</asp:ListItem>
                                    <asp:ListItem Value="3">Non Angina Pain</asp:ListItem>
                                    <asp:ListItem Value="4">Asymptomatic</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;
                                <asp:Label ID="Label2" runat="server" Text="Chest pain type (1 = typical angina; 2 = atypical angina ; 3 = non-anginal pain; 4 = asymptomatic)"
                                    Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red"></asp:Label>
                                <br />
                            </td>
                        </tr>
                        <tr style="height: 80px">
                            <td class="style1">
                                Trestbps:*
                            </td>
                            <td width="20%">
                                <asp:TextBox ID="txtTrestbps" runat="server" Width="215px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                                <asp:Label ID="Label3" runat="server" Text="Resting blood pressure(in mm Hg on admission to the hospital)  "
                                    Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red"></asp:Label>
                                <br />
                                &nbsp;&nbsp;
                                <asp:Label ID="Label12" runat="server" Text="Values in float" Font-Bold="False" Font-Names="Times New Roman"
                                    Font-Size="Medium" ForeColor="#00CC99"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 80px">
                            <td class="style1">
                                Cholestral:*
                            </td>
                            <td width="20%">
                                <asp:TextBox ID="txtCholestral" runat="server" Width="215px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                                <asp:Label ID="Label4" runat="server" Text="Serum cholestoral in mg/dl" Font-Bold="False"
                                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red"></asp:Label>
                                <br />
                                <asp:Label ID="Label13" runat="server" Text="Values in int" Font-Bold="False" Font-Names="Times New Roman"
                                    Font-Size="Medium" ForeColor="#00CC99"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 80px">
                            <td class="style1">
                                Fasting Blood Sugar:
                            </td>
                            <td width="20%">
                                <asp:DropDownList ID="ddlFbs" runat="server">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem Value="1">True</asp:ListItem>
                                    <asp:ListItem Value="0">False</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;
                                <asp:Label ID="Label5" runat="server" Text="(Fasting blood sugar &gt; 120 mg/dl) (1 = true; 0 = false)"
                                    Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Restecg :*
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlRestecg" runat="server" Height="25px" Width="66px">
                                    <asp:ListItem Value="0">Select</asp:ListItem>
                                    <asp:ListItem Value="1" Text="0">0</asp:ListItem>
                                    <asp:ListItem Value="2" Text="1">1</asp:ListItem>
                                    <asp:ListItem Value="3" Text="2">2</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:Label ID="Label17" runat="server" Text="(0=Noraml;1=ST-T wave;2=left ventricular)"
                                    Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 80px">
                            <td class="style1">
                                Thalach:
                            </td>
                            <td width="20%">
                                <asp:TextBox ID="txtThalach" runat="server" Width="215px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                                <asp:Label ID="Label6" runat="server" Text="Maximum heart rate achieved" Font-Bold="False"
                                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red"></asp:Label>
                                <br />
                                <asp:Label ID="Label14" runat="server" Text="Values in float" Font-Bold="False" Font-Names="Times New Roman"
                                    Font-Size="Medium" ForeColor="#00CC99"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 80px">
                            <td class="style1">
                                Exang:*
                            </td>
                            <td width="20%">
                                <asp:DropDownList ID="ddlExang" runat="server">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                    <asp:ListItem Value="0">No</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;
                                <asp:Label ID="Label7" runat="server" Text="Exercise induced angina (1 = yes; 0 = no)"
                                    Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 80px">
                            <td class="style1">
                                OldPeak:*
                            </td>
                            <td width="20%">
                                <asp:TextBox ID="txtOldPeak" runat="server" Width="215px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                                <asp:Label ID="Label8" runat="server" Text="ST depression induced by exercise relative to rest"
                                    Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red"></asp:Label>
                                <br />
                                <asp:Label ID="Label15" runat="server" Text="Values in float" Font-Bold="False" Font-Names="Times New Roman"
                                    Font-Size="Medium" ForeColor="#00CC99"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 80px">
                            <td class="style1">
                                Slop:*
                            </td>
                            <td width="20%">
                                <asp:DropDownList ID="ddlSlop" runat="server">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem Value="1">Upsloping</asp:ListItem>
                                    <asp:ListItem Value="2">Dlat</asp:ListItem>
                                    <asp:ListItem Value="3">Downstoping</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;
                                <asp:Label ID="Label9" runat="server" Text="The slope of the peak exercise ST segment ( 1 = upsloping; 2 = flat ; 3= downsloping)"
                                    Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 80px">
                            <td class="style1">
                                Colored By Flourspoy:*
                            </td>
                            <td width="20%">
                                <asp:TextBox ID="txtColoredByFlourspoy" runat="server" Width="215px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                                <asp:Label ID="Label10" runat="server" Text="Number of major vessels (0-3) colored by flourosopy"
                                    Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red"></asp:Label>
                                <br />
                                <asp:Label ID="Label16" runat="server" Text="Values in int" Font-Bold="False" Font-Names="Times New Roman"
                                    Font-Size="Medium" ForeColor="#00CC99"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 80px">
                            <td class="style1">
                                Thal:*
                            </td>
                            <td width="20%">
                                <asp:DropDownList ID="ddlThal" runat="server">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem Value="3">Normal</asp:ListItem>
                                    <asp:ListItem Value="6">Fixed Defect</asp:ListItem>
                                    <asp:ListItem Value="7">Reversible Defect</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;
                                <asp:Label ID="Label11" runat="server" Text="( 3 = normal; 6 = fixed defect; 7 = reversible defect)"
                                    Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 50px">
                            <td colspan="3">
                                <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" Width="179px"
                                    BackColor="White" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large"
                                    ForeColor="#00CC00" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="btn_reset" runat="server"
                                        Text="Reset" OnClientClick="Button2_Click" Width="149px" BackColor="White" Font-Bold="True"
                                        Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#00CC00" OnClick="btn_reset_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </div>
                &nbsp;&nbsp;&nbsp;
                <br />
            </div>
            <div>
                <uc1:right_menu ID="right_menu" runat="server"></uc1:right_menu>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
