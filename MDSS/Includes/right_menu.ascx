<%@ Control Language="C#" AutoEventWireup="true" CodeFile="right_menu.ascx.cs" Inherits="Includes_right_menu" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <link href="../css/theme.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div id="sidebar">
        <ul>
            <li>
                <h3>
                    <a href="#" class="application_add">Shortcut</a></h3>
                <ul>
                   <%-- <li><a href="../MDSS/WelcomeAdmin.aspx" class="house">Home</a></li>--%>
                     <li><a href="WelcomeAdmin.aspx" class="house">Home</a></li>
                    <li><a href="Login.aspx" class="arrow_left">Logout</a></li>
                </ul>
            </li>
            <li>
                <h3>
                    <a href="#" class="manage">Manage Patient</a></h3>
                <ul>
                    <li><a href="PatientDetails.aspx" class="user">Patient Details</a></li>
                    <li><a href="VisitDetails.aspx" class="magnifier">Visit Details</a></li>
                    <li><a href="#" class="user">Apply Algorithms</a></li>
                    <ul>
                        <li><a href="ApplyAlgoForHeartDisease.aspx" class="add">Heart Disease</a></li>
                        <li><a href="ApplyAlgoForDiabetesDisease.aspx" class="add">Diabetes Disease</a></li>
                    </ul>
                </ul>
            </li>
            <li>
                <h3>
                    <a href="#" class="manage">Result</a></h3>
                <ul>
                    <li><a href="HeartDiseaseChart.aspx" class="report">Heart Disease</a></li>
                        <li><a href="DiabetesDiseaseChart.aspx" class="report">DiabetesDisease</a></li>
                </ul>
            </li>
    </div>
</body>
</html>
