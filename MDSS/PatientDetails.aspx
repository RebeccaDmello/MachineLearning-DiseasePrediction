<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PatientDetails.aspx.cs" Inherits="PatientDetails" %>

<%@ Register TagPrefix="uc1" TagName="right_menu" Src="~/Includes/right_menu.ascx" %>
<%@ Register TagPrefix="uc2" TagName="header" Src="~/Includes/header.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/theme.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
        <uc2:header ID="header" runat="server" />
        <div id="top-panel">
            <div id="panel">
                <ul>
                    <li><i><b><a href="addPatient.aspx" class="useradd">Add Patient Details</a></b></i></li>
                </ul>
            </div>
        </div>
        <div id="wrapper">
            <div id="content">
                <div id="box">
                    <h3>
                        Patient Record</h3>
                    <div>
                    </div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                        DataKeyNames="Patient_Id" ForeColor="#333333" GridLines="None" Font-Bold="False"
                        Font-Names="Times New Roman" Font-Size="Medium" Width="713px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Patient_Id" HeaderText="Patient_Id" InsertVisible="False"
                                ReadOnly="True" SortExpression="Patient_Id" />
                            <asp:BoundField DataField="Patient_Name" HeaderText="Patient_Name" SortExpression="Patient_Name" />
                            <asp:BoundField DataField="Patient_Address" HeaderText="Patient_Address" SortExpression="Patient_Address" />
                            <asp:BoundField DataField="Patient_MobileNo" HeaderText="Patient_MobileNo" SortExpression="Patient_MobileNo" />
                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandArgument='<%#Eval("Patient_Id") %>'
                                        CommandName="Delete" OnCommand="Delete_row" Text="Delete" OnClientClick="return confirm('Are you certain you want to delete this?');"></asp:LinkButton></ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="10%" />
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MDDSConnectionString %>"
                        SelectCommand="SELECT [Patient_Id], [Patient_Name], [Patient_Address], [Patient_MobileNo] FROM [Patient_Details]">
                    </asp:SqlDataSource>--%>
                    <br />
                </div>
                <table>
                    <tr>
                        <td align="center">
                            &nbsp;
                        </td>
                    </tr>
                </table>
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
