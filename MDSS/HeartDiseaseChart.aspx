<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HeartDiseaseChart.aspx.cs"
    Inherits="HeartDiseaseChart" %>

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
            width: 23%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
        <uc2:header ID="header" runat="server" />
        <div id="wrapper">
            <div id="content">
                <div id="box">
                    <h3>
                        Heart&nbsp; Disease Result</h3>
                    <p>
                        &nbsp;</p>
                    <table>
                        <%-- <tr>
                            <td class="style1">
                                Patinet Id:*
                            </td>
                            <td width="20%">
                                <asp:DropDownList ID="dllPatientId" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
                                    DataTextField="patient_id" DataValueField="patient_id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MedicalDecisionSupportSystemConnectionString6 %>"
                                    SelectCommand="SELECT DISTINCT [patient_id] FROM [HeartDisease_Record]"></asp:SqlDataSource>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                Patinet Name:*
                            </td>
                            <td width="20%">
                                <asp:TextBox ID="txt_name" runat="server" Width="211px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>--%>
                        <tr>
                            <td colspan="3">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                       <%-- <tr>
                            <td colspan="3">
                                <br />
                                <asp:Label ID="Label1" runat="server" Text="ID3 Result"></asp:Label>
                                <br />
                                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<br />
                                &nbsp;&nbsp;
                                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource2" Width="300px">
                                    <Series>
                                        <asp:Series Name="Series1" XValueMember="Status" YValueMembers="ResCount">
                                        </asp:Series>
                                    </Series>
                                    <ChartAreas>
                                        <asp:ChartArea Name="ChartArea1">
                                        </asp:ChartArea>
                                    </ChartAreas>
                                </asp:Chart>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MedicalDecisionSupportSystemConnectionString6 %>"
                                    SelectCommand="select COUNT(status)as ResCount,Status from HeartDiseaseStatus group by Status">
                                </asp:SqlDataSource>
                            </td>
                        </tr>--%>
                        <tr>
                            <td colspan="3">
                             <br />
                                <asp:Label ID="Label2" runat="server" Text="Naive Result"></asp:Label>
                                <br />
                                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<br />
                                &nbsp;&nbsp;
                                <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource1" Width="300px">
                                    <Series>
                                        <asp:Series Name="Series1" XValueMember="Status" YValueMembers="ResCount">
                                        </asp:Series>
                                    </Series>
                                    <ChartAreas>
                                        <asp:ChartArea Name="ChartArea1">
                                        </asp:ChartArea>
                                    </ChartAreas>
                                </asp:Chart>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\ProjectsV13;Initial Catalog=Disease_Db_new;Integrated Security=TRUE"
                                    
                                    SelectCommand="select COUNT(status)as ResCount,Status from HeartDiseaseCholestral group by Status">
                                </asp:SqlDataSource>
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
