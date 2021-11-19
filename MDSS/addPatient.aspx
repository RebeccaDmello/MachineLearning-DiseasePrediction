<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addPatient.aspx.cs" Inherits="addPatient" %>

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
                    <li><a href="#adduser" class="useradd">Add/Update Patient</a></li>
                </ul>
            </div>
        </div>
        <div id="wrapper">
            <div id="content">
                <div id="box">
                    <h3>
                        Patient Details
                    </h3>
                    <table>
                        <tr>
                            <td width="12%">
                                Patinet Name:*
                            </td>
                            <td width="20%">
                                <asp:TextBox ID="txt_name" runat="server" Width="211px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name"
                                    ErrorMessage=" Enter Paitent Name" ForeColor="red"></asp:RequiredFieldValidator>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td width="20%" valign="top">
                                Address:*
                            </td>
                            <td>
                                <asp:TextBox ID="txt_address" runat="server" Height="94px" Width="209px" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_address"
                                    ErrorMessage=" Enter  Address" ForeColor="red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td width="12%">
                                Mobile No:*
                            </td>
                            <td width="20%">
                                <asp:TextBox ID="txt_mobileno" runat="server" Width="211px" MaxLength="10"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_mobileno"
                                    ErrorMessage=" Enter  Mobile No" ForeColor="red"></asp:RequiredFieldValidator>
                                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                    ControlToValidate="txt_mobileno" ErrorMessage="Invaild Mobile No" ForeColor="red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td width="12%">
                                Email Id:*
                            </td>
                            <td width="20%">
                                <asp:TextBox ID="TextBox1" runat="server" Width="211px" MaxLength="30"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1"
                                    ErrorMessage=" Enter Email" ForeColor="red"></asp:RequiredFieldValidator>
                                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                    ControlToValidate="TextBox1" ErrorMessage="Invaild Mobile No" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" />&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button
                                    ID="btn_reset" runat="server" Text="Reset" OnClientClick="Button2_Click" OnClick="btn_reset_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lblText" runat="server"></asp:Label>
                                &nbsp;
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
