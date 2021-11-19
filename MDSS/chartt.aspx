<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chartt.aspx.cs" Inherits="chartt" %>

<%@ Register TagPrefix="uc1" TagName="right_menu" Src="~/Includes/right_menu.ascx" %>
<%@ Register TagPrefix="uc2" TagName="header" Src="~/Includes/header.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                        <tr>
                            <td>
                                SELECT ALGORITHM
                            </td>
                            <td>
                                :
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                                    <asp:ListItem Value="NAIVE">NAIVE BAYES</asp:ListItem>
                                   <%-- <asp:ListItem Value="ID3">ID3</asp:ListItem>--%>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"
                                    InitialValue="0" ControlToValidate="DropDownList1" ErrorMessage="SELECT ALGORITHM"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                <asp:Chart ID="Chart1" runat="server">
                                    <Series>
                                        <asp:Series Name="Series1" IsValueShownAsLabel="true" YValuesPerPoint="2">
                                        </asp:Series>
                                    </Series>
                                    <ChartAreas>
                                        <asp:ChartArea Name="ChartArea1">
                                        </asp:ChartArea>
                                    </ChartAreas>
                                </asp:Chart>
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
