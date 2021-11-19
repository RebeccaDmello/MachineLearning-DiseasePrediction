<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VisitDetails.aspx.cs" Inherits="VisitDetails" %>

<%@ Register TagPrefix="uc1" TagName="right_menu" Src="~/Includes/right_menu.ascx" %>
<%@ Register TagPrefix="uc2" TagName="header" Src="~/Includes/header.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/theme.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            background: gold;
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
                    <li><i><b style="font-size: xx-large; color: #808000">Visiting Details</b></i></li>
                </ul>
            </div>
        </div>
        </br>
        <div id="wrapper">
            <div id="content">
                <div id="box">
                    <h3>
                        Add Patient Record</h3>
                    <div>
                        <asp:Label ID="lblshow" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:Label></div>
                </div>
                <table style="font-family: 'Arial Black'; font-size: xx-large; color: #000000; background-color: #C0C0C0">
                    <tr>
                        <td class="style1">
                            <a href="HeartDisease.aspx">Heart Disease</a>
                        </td>
                        <td style="background: darkseagreen;">
                            &nbsp; <a href="DiabetesDisease.aspx">Diabetes Disease</a>
                        </td>
                    </tr>
                </table>
                <div>
                    <h5 id="box" style="font-size: x-large">
                        Patient Record</h5>
                    <p>
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                            Font-Size="Large" Text="Select  Patient" ForeColor="#660033"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:DropDownList ID="cbmUsername" runat="server" AutoPostBack="True" DataTextField="Patient_Name"
                            DataValueField="patient_id">
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                            Font-Size="Large" Text="Select  Disease" ForeColor="#660033"></asp:Label>
                        &nbsp;<asp:DropDownList ID="cboDiseaseName" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                            <asp:ListItem>Select Item</asp:ListItem>
                            <asp:ListItem>Heart Disease</asp:ListItem>
                            <asp:ListItem>Diabetes</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDDSConnectionString2 %>"
                            SelectCommand="SELECT [Patient_Name] FROM [Patient_Details]"></asp:SqlDataSource>
                        <br />
                    </p>
                    <div>
                        <asp:GridView ID="GridView1" runat="server" Width="734px" AutoGenerateColumns="true"
                            HeaderStyle-Wrap="true">
                            <%-- <Columns>
                                <asp:BoundField HeaderText="Date" DataField="Date" />
                                <asp:BoundField HeaderText="Pregnent" DataField="number_of_times_pregnant" />
                                <asp:BoundField HeaderText="PGlucose" DataField="plasma_glucose_concentration" />
                                <asp:BoundField HeaderText="BP" DataField="diastolic_blood_pressure" />
                                <asp:BoundField HeaderText="Skin Thickness" DataField="triceps_skin_fold_thickness" />
                                <asp:BoundField HeaderText="Insulin" DataField="hour_serum_insulin" />
                                <asp:BoundField HeaderText="Body Mass" DataField="body_mass_index" />
                            </Columns>--%>
                        </asp:GridView>
                    </div>
                    <br />
                    <br />
                </div>
            </div>
            <div>
                <uc1:right_menu ID="right_menu" runat="server"></uc1:right_menu>
            </div>
        </div>
        <div id="footer">
            <br />
        </div>
    </div>
    </form>
</body>
</html>
