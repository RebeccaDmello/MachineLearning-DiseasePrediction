<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DiabetesDisease.aspx.cs"
    Inherits="DiabetesDisease" %>

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
            height: 66px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
        <uc2:header ID="header" runat="server" />
        <div id="top-panel">
            <div id="panel">
            </div>
        </div>
        <div id="wrapper">
            <div id="content">
                <div id="box">
                    <h3>
                        Diabetes Disease Patient Details
                    </h3>
                    <table>
                        <tr style="height: 50px">
                            <td width="12%">
                                Patinet Id:*
                            </td>
                            <td>
                                <asp:DropDownList ID="ddl_PatientId" runat="server" DataTextField="Patient_Id" DataValueField="Patient_Id"
                                    AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                                    Height="25px" Width="107px">
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
                            <td width="12%">
                                Patinet Name:*
                            </td>
                            <td>
                                <asp:TextBox ID="txt_PatientName" runat="server" Width="211px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr style="height: 50px">
                            <td width="12%">
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
                        <tr style="height: 50px">
                            <td>
                                Add Disease Record
                            </td>
                        </tr>
                        <tr style="height: 80px">
                            <td width="12%">
                                Age:*
                            </td>
                            <td>
                                <asp:TextBox ID="txt_Age" runat="server" Width="211px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="Label22" runat="server" Text="Values in int" Font-Bold="False" Font-Names="Times New Roman"
                                    Font-Size="Medium" ForeColor="#00CC99"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Number of times pregnant :*
                            </td>
                            <td>
                                <asp:TextBox ID="txtNumberpregnent" runat="server" Width="211px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="Label21" runat="server" Text="Values in int" Font-Bold="False" Font-Names="Times New Roman"
                                    Font-Size="Medium" ForeColor="#00CC99"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 80px">
                            <td width="20%">
                                Plasma Glucose:*
                            </td>
                            <td>
                                <asp:TextBox ID="txt_PlasmaGlucose" runat="server" Width="211px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                                <asp:Label ID="Label4" runat="server" Text="Glucose concentration in a 2 hours in an oral glucose tolerance test"
                                    Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red"></asp:Label>
                                <br />
                                <asp:Label ID="Label17" runat="server" Text="Values in int" Font-Bold="False" Font-Names="Times New Roman"
                                    Font-Size="Medium" ForeColor="#00CC99"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 80px">
                            <td width="30%">
                                Diastolic Blood Pressure:*
                            </td>
                            <td>
                                <asp:TextBox ID="txt_DiastolicBloodPressure" runat="server" Width="211px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                                <asp:Label ID="Label5" runat="server" Text="In mm Hg" Font-Bold="False" Font-Names="Times New Roman"
                                    Font-Size="Medium" ForeColor="Red"></asp:Label>
                                <br />
                                <asp:Label ID="Label18" runat="server" Text="Values in int" Font-Bold="False" Font-Names="Times New Roman"
                                    Font-Size="Medium" ForeColor="#00CC99"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 80px">
                            <td width="12%">
                                Triceps Skin Fold Thickness:*
                            </td>
                            <td>
                                <asp:TextBox ID="txt_TricepsSkinFoldThickness" runat="server" Width="211px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                                <asp:Label ID="Label3" runat="server" Text="Thickness of skin in mm" Font-Bold="False"
                                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red"></asp:Label>
                                <br />
                                &nbsp;&nbsp;<asp:Label ID="Label12" runat="server" Text="Values in int" Font-Bold="False"
                                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="#00CC99"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 80px">
                            <td width="12%">
                                2- Houre Serum Insulin:*
                            </td>
                            <td>
                                <asp:TextBox ID="txt_TwoHoureSerumInsulin" runat="server" Width="211px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                                <asp:Label ID="Label6" runat="server" Text="Insulin (mu U/ml)" Font-Bold="False"
                                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red"></asp:Label>
                                <br />
                                <asp:Label ID="Label19" runat="server" Text="Values in int" Font-Bold="False" Font-Names="Times New Roman"
                                    Font-Size="Medium" ForeColor="#00CC99"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 80px">
                            <td width="12%">
                                Body Mass index:*
                            </td>
                            <td>
                                <asp:TextBox ID="txt_BodyMassindex" runat="server" Width="211px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                                <asp:Label ID="Label7" runat="server" Text="(weight in kg/(height in m)^2)" Font-Bold="False"
                                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red"></asp:Label>
                                <br />
                                <asp:Label ID="Label20" runat="server" Text="Values in int" Font-Bold="False" Font-Names="Times New Roman"
                                    Font-Size="Medium" ForeColor="#00CC99"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Diabetes pedigree function:*
                            </td>
                            <td>
                                <asp:TextBox ID="txtDiabetesPedigree" runat="server" Width="211px"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr style="height: 50px">
                            <td colspan="3" class="style1">
                                &nbsp;<asp:Button ID="btnSave" runat="server" Text="Save" Width="169px" OnClick="btnSave_Click"
                                    BackColor="White" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#00CC00" />
                                &nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" BackColor="White" Font-Names="Times New Roman"
                                    Font-Size="Large" ForeColor="#00CC00" Height="34px" Text="Reset" Width="173px" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </div>
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
