<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApplyAlgoForHeartDisease.aspx.cs"
    Inherits="ApplyAlgoForHeartDisease" %>

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
            width: 16%;
        }
        .style2
        {
            width: 396px;
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
                        &nbsp;Heart Disease Result</h3>
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
                                    SelectCommand="SELECT DISTINCT [patient_id] FROM [HeartDisease_Record]">
                                </asp:SqlDataSource>--%>
                            </td>
                            <td class="style2">
                                &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">
                                Patinet Name:*
                            </td>
                            <td width="20%">
                                <asp:TextBox ID="txt_name" runat="server" Width="211px"></asp:TextBox>
                            </td>
                            <td class="style2">
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                &nbsp;
                                <br />
                                &nbsp; &nbsp;
                                <asp:Label ID="Label6" runat="server" Text="Select The Algorithms"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="cboSelectAlgo" runat="server" AutoPostBack="True">
                                    <asp:ListItem>Select</asp:ListItem>
                                     <asp:ListItem>ID3 Algorithm</asp:ListItem>
                                    <asp:ListItem>Naive Bayesian Algorithm</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button3" runat="server" Text="Apply Algorithm" OnClick="Button3_Click"
                                    Height="26px" />
                                <br />
                                <br />
                                &nbsp;
                                <br />
                                &nbsp;<asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                    Font-Size="X-Large" ForeColor="#33CC33" Text="ID3 Algorithms Result" Visible="False"></asp:Label>
                                <br />
                              <%--  <asp:Label ID="Label10" runat="server" font-size="17px" Text=""></asp:Label>--%>
                                <br />
                                <br />
                                <asp:GridView ID="resultGrid" runat="server" Height="243px" Width="693px" AllowPaging="true"
                                    AllowSorting="true" PageSize="5" OnPageIndexChanging="resultGrid_PageIndexChanging"
                                    BackColor="Aqua">
                                </asp:GridView>
                                <br />
                                 <asp:Label ID="Label4" runat="server" Font-Size="27px" Font-Bold="True" ForeColor="#33CC33" Text="ID3 Algorithm" Font-Names="Times New Roman"></asp:Label>
                                <br/>
                                <br/>
                                  <asp:Label ID="Label10" runat="server" font-size="17px" Text=""></asp:Label>
                                <br/>
                                <br/>
                                <asp:Label ID="Label1" runat="server" font-size="17px" Text="" ></asp:Label>
                                  <br/>
                                <br />
                                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                    Font-Size="27px" ForeColor="#33CC33" Text="Naive Bayesian Algorithm Result"></asp:Label>
                                <br />
                                <br />
                                <asp:Label ID="Label2" runat="server" font-size="17px" Text=""></asp:Label>
                                <br />
                                <br/>
                                <asp:Label ID="lblData" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                    Font-Size="17px" ForeColor="Red" Visible="False"></asp:Label>
                                <br />
                                <br />
                                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                    Font-Size="Large" ForeColor="#663300" Text="Attribute Cholestral Entropy:-" Visible="False"></asp:Label>
                                &nbsp;<asp:TextBox ID="txtCholestralEntropy" runat="server" Width="331px" Visible="False"></asp:TextBox>
                                <br />
                                <br />
                                <asp:GridView ID="NaiveGridCholestralResult" runat="server" Height="182px" Width="689px"
                                    AllowPaging="true" AllowSorting="true" PageSize="10" OnPageIndexChanging="NaiveGridCholestralResult_PageIndexChanging">
                                </asp:GridView>
                                <br />
                                <asp:Label ID="Label3" runat="server" ForeColor="Red" Font-Size="Medium" Text=""></asp:Label>
                                <br />
                                <%--<asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                    Font-Size="Large" ForeColor="#663300" Text="Attribute Thal Entropy:-" Visible="False"></asp:Label>--%>
                                <%--<asp:TextBox ID="txtThalEntropy" runat="server" Width="331px" Visible="False"></asp:TextBox>--%>
                                <br />
                                <asp:Button ID="Button1" runat="server" Text="VIEW GRAPH-1" OnClick="Button1_Click"
                                    Visible="False" />
                                &nbsp;&nbsp;
                                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="VIEW GRAPH-2" />
                                <br />
                                <br />
                                <asp:LinkButton ID="lnkGraph" runat="server" Font-Bold="True" Font-Size="X-Large"
                                    OnClick="lnkGraph_Click">Show Graph</asp:LinkButton>
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
