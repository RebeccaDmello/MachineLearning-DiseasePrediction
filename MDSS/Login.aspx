<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/theme.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div id="container">
        <div id="header">
            <table border="0">
                <tr>
                    <td>
                        <asp:Image ID="Image1" ImageUrl="~/logo/heart.jpg" Width="70px" Height="70px"
                            runat="server" />
                    </td>
                    <td>
                        <h2>
                           <%-- Heart--%> Disease
                            <%--& Diabetes--%>
                            Prediction System&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Welcome&nbsp;
                        </h2>
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <br />
        <br />
        <div id="wrapper">
            <div id="content" style="width: 100%">
                <br />
                <div id="box">
                    <h3 id="adduser">
                        Admin Login</h3>
                    <form id="form" method="post" runat="server">
                    <fieldset id="personal">
                        <legend>Login Information</legend>
                        <div>
                            <asp:Label ID="lblshow" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label></div>
                        <table width="50%" border="0">
                            <tr style="height: 20px; width: 100px">
                                <td width="10%">
                                    <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
                                </td>
                                <td width="18%">
                                    <asp:TextBox ID="txtUsername" runat="server" Height="20px" Width="160px" ValidationGroup="bb"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username can not be blank"
                                        ControlToValidate="txtUsername" SetFocusOnError="True" Width="181%" ValidationGroup="bb"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr style="height: 20px; width: 100px">
                                <td width="10%">
                                    <asp:Label ID="lblPassword" runat="server" Text="Password "></asp:Label>
                                </td>
                                <td width="18%">
                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Height="20px" Width="160px"
                                        ValidationGroup="bb"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password can not be blank"
                                        ControlToValidate="txtPassword" SetFocusOnError="True" Width="181%" ValidationGroup="bb"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr style="height: 20px; width: 100px">
                                <td colspan="3" valign="bottom">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnLogin" runat="server" Text="Login"
                                        Width="150px" Height="25px" OnClick="btnLogin_Click" ValidationGroup="bb" />&nbsp;&nbsp;
                                    <asp:Button ID="btnReset" runat="server" Text="Reset" Width="150px" Height="25px"
                                        OnClick="btnReset_Click" CausesValidation="False" ValidationGroup="bb" />
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                    <br />
                <%--    <fieldset id="personal">
                        <legend>Login Information</legend>
                        <div>
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label></div>
                        <table width="50%" border="0">
                            <tr style="height: 20px; width: 100px">
                                <td width="10%">
                                    <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label>
                                </td>
                                <td width="18%">
                                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="160px" ValidationGroup="aa"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Username can not be blank"
                                        ControlToValidate="TextBox1" SetFocusOnError="True" Width="181%" ValidationGroup="aa"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr style="height: 20px; width: 100px">
                                <td width="10%">
                                    <asp:Label ID="Label3" runat="server" Text="Password :"></asp:Label>
                                </td>
                                <td width="18%">
                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="20px" Width="160px"
                                        ValidationGroup="aa"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password can not be blank"
                                        ControlToValidate="TextBox2" SetFocusOnError="True" Width="181%" ValidationGroup="aa"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr style="height: 20px; width: 100px">
                                <td colspan="3" valign="bottom">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Login"
                                        Width="150px" Height="25px" ValidationGroup="aa" />&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" Text="Reset" Width="150px" Height="25px"
                                        CausesValidation="False" OnClick="Button2_Click" ValidationGroup="aa" />
                                </td>
                            </tr>
                    </fieldset>--%>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
