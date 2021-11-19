<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WelcomeAdmin.aspx.cs" Inherits="WelcomeAdmin" %>

<%@ Register TagPrefix="uc1" TagName="right_menu" Src="~/Includes/right_menu.ascx" %>
<%@ Register TagPrefix="uc2" TagName="header" Src="~/Includes/header.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/theme.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
        <uc2:header ID="header" runat="server"></uc2:header>
        <div id="top-panel">
            <div id="panel">
            </div>
        </div>
        <div id="wrapper">
            <div id="content">
                <asp:Image ID="Image1" runat="server" Height="357px" ImageUrl="~/img/121900825.jpg"
                    Width="721px" />
            </div>
            <div>
                <uc1:right_menu ID="right_menu" runat="server"></uc1:right_menu>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
