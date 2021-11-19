<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApplyAlgoForDiabetesDisease.aspx.cs"
    Inherits="ApplyAlgoForDiabetesDisease" %>

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
                        Diabetes Disease Result</h3>
                    <p>
                        &nbsp;</p>
                    <table>
                        <tr>
                            <td class="style1">
                                Patinet Id:*
                            </td>
                            <td width="20%">
                                <asp:DropDownList ID="dllPatientId" runat="server" DataTextField="patient_id" DataValueField="patient_id"
                                    OnSelectedIndexChanged="dllPatientId_SelectedIndexChanged" AutoPostBack="True">
                                </asp:DropDownList>
                                <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:MDDSConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [patient_id] FROM [DiabetesDisease_Record]">
                                </asp:SqlDataSource>--%>
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
                        </tr>
                        <tr>
                            <td colspan="3">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                &nbsp;
                                <br />
                                &nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label6" runat="server" Text="Select The Algorithm"></asp:Label>
                                &nbsp;&nbsp;
                                <asp:DropDownList ID="cboselectalgo" runat="server" AutoPostBack="True">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem>ID3 Algorithm</asp:ListItem>
                                    <asp:ListItem>Naive Bayesian Algorithm</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                <asp:Button ID="Button3" runat="server" Text="Apply Algorithm" OnClick="Button3_Click" />
                                <br />
                                <br />
                                &nbsp;&nbsp;
                                <br />
                                <br />
                                &nbsp;
                                <br />
                                &nbsp;<asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                    Font-Size="X-Large" ForeColor="#33CC33" Text="ID3 Algorithms Result"></asp:Label>
                                <br />
                                <br/>
                                <asp:Label ID="Label9" runat="server" font-size="17px" Text=" " ></asp:Label>
                                <br />
                                <br/>
                                <asp:GridView ID="ID3AlgoResult" runat="server" Height="177px" Width="681px" AllowPaging="true"
                                    AllowSorting="true" PageSize="5" OnPageIndexChanging="ID3AlgoResult_PageIndexChanging"
                                    BackColor="Aqua">
                                </asp:GridView>
                                <br />
                                <br />
                                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                    Font-Size="X-Large" ForeColor="#33CC33" Text="Naive Algorithm Result"></asp:Label>
                                <br />
                                <br />
                                <br />
                                <asp:Label ID="lblData" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                    Font-Size="Large" ForeColor="Red"></asp:Label>
                                <br />
                                <br />
                                <%-- <asp:Label ID="Label9" runat="server" Font-Bold="True" 
                                    Font-Names="Times New Roman" Font-Size="Large" ForeColor="#663300" 
                                    Text="Attribute PlasmaGlucose Entropy:-"></asp:Label>
&nbsp;<asp:TextBox ID="txtPlasmaGlucoseEntropy" runat="server" Width="331px"></asp:TextBox>--%>
                                <br />
                                <br />
                                <asp:GridView ID="PlasmaGrid" runat="server" Height="185px" Width="690px" AllowPaging="true"
                                    AllowSorting="true" PageSize="5" OnPageIndexChanging="PlasmaGrid_PageIndexChanging">
                                </asp:GridView>
                                <br />
                                <asp:LinkButton ID="lnkGraph" runat="server" Font-Bold="True" Font-Size="X-Large"
                                    OnClick="lnkGraph_Click">Show Graph</asp:LinkButton>
                                <%-- <asp:Label ID="Label10" runat="server" Font-Bold="True" 
                                    Font-Names="Times New Roman" Font-Size="Large" ForeColor="#663300" 
                                    Text="Attribute DiastolicBloodPressure Entropy:-"></asp:Label>
&nbsp;<asp:TextBox ID="txtDiastolicBloodPressureEntropy" runat="server" Width="331px"></asp:TextBox>--%>
                                <br />
                                <%--  <asp:GridView ID="BloodPressureGrid" runat="server" Height="182px" 
                                    Width="708px" AllowPaging="true" AllowSorting="true" PageSize="5" 
                                    onpageindexchanging="BloodPressureGrid_PageIndexChanging">  
                                </asp:GridView>--%>
                                <br />
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
