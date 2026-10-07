<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Practical_4.Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Event Registration Portal</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f1f5f9;
            margin: 0;
            padding: 40px 20px;
            display: flex;
            justify-content: center;
        }

        .form-card {
            background: #ffffff;
            width: 100%;
            max-width: 650px;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.08);
        }

        .portal-table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0 12px;
        }

        .header-title {
            text-align: center;
            font-size: 24px;
            font-weight: 700;
            color: #0f172a;
            padding-bottom: 15px;
            border-bottom: 2px solid #e2e8f0;
        }

        .label-cell {
            font-weight: 600;
            color: #334155;
            font-size: 14px;
            width: 110px;
            vertical-align: top;
            padding-top: 8px;
        }

        .input-cell {
            vertical-align: top;
        }

        .validator-cell {
            vertical-align: top;
            padding-top: 8px;
            padding-left: 8px;
            font-size: 12px;
            color: #ef4444;
        }

        /* Input Controls Styling */
        input[type="text"], input[type="date"], select, textarea {
            width: 100%;
            padding: 8px 12px;
            font-size: 14px;
            border: 1px solid #cbd5e1;
            border-radius: 6px;
            box-sizing: border-box;
            outline: none;
            transition: all 0.2s ease;
        }

        input[type="text"]:focus, input[type="date"]:focus, select:focus, textarea:focus {
            border-color: #2563eb;
            box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.15);
        }

        /* Radio & Checkbox Styling */
        table label {
            font-size: 14px;
            color: #475569;
            margin-left: 6px;
            cursor: pointer;
        }

        /* Register Button */
        .btn-register {
            width: 100%;
            background-color: #2563eb;
            color: #ffffff;
            border: none;
            padding: 12px;
            font-size: 16px;
            font-weight: 600;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.2s ease;
            margin-top: 10px;
        }

        .btn-register:hover {
            background-color: #1d4ed8;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-card">
            <table class="portal-table">
                <tr>
                    <td colspan="3" class="header-title">Event Registration Portal</td>
                </tr>
                <tr>
                    <td class="label-cell">Name:</td>
                    <td class="input-cell">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="validator-cell">
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name required" Display="Dynamic" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="label-cell">Gr no:</td>
                    <td class="input-cell">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="validator-cell">
                        <asp:RequiredFieldValidator ID="rfvGrNo" runat="server" ControlToValidate="TextBox2" ErrorMessage="GR No required" Display="Dynamic" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="label-cell">Class:</td>
                    <td class="input-cell">
                        <asp:ListBox ID="ListBox1" runat="server" Height="80px">
                            <asp:ListItem Value="">-Select Class-</asp:ListItem>
                            <asp:ListItem>5EV1</asp:ListItem>
                            <asp:ListItem>5EV2</asp:ListItem>
                            <asp:ListItem>5EV3</asp:ListItem>
                            <asp:ListItem>5EV4</asp:ListItem>
                            <asp:ListItem>5EV5</asp:ListItem>
                            <asp:ListItem>5EV6</asp:ListItem>
                            <asp:ListItem>5EV7</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td class="validator-cell">
                        <asp:RequiredFieldValidator ID="rfvClass" runat="server" ControlToValidate="ListBox1" ErrorMessage="Select class" Display="Dynamic" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="label-cell">Email:</td>
                    <td class="input-cell">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td class="validator-cell">
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="TextBox3" ErrorMessage="Email required" Display="Dynamic" ForeColor="Red" />
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="TextBox3" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" ErrorMessage="Invalid email" Display="Dynamic" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="label-cell">Enroll no:</td>
                    <td class="input-cell">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td class="validator-cell">
                        <asp:RequiredFieldValidator ID="rfvEnroll" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enrollment required" Display="Dynamic" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="label-cell">Mobile no:</td>
                    <td class="input-cell">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td class="validator-cell">
                        <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="TextBox5" ErrorMessage="Mobile required" Display="Dynamic" ForeColor="Red" />
                        <asp:RegularExpressionValidator ID="revMobile" runat="server" ControlToValidate="TextBox5" ValidationExpression="^[0-9]{10}$" ErrorMessage="10 digits required" Display="Dynamic" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="label-cell">DOB:</td>
                    <td class="input-cell">
                        <asp:TextBox ID="TextBox7" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td class="validator-cell">
                        <asp:RequiredFieldValidator ID="rfvDob" runat="server" ControlToValidate="TextBox7" ErrorMessage="DOB required" Display="Dynamic" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="label-cell">Gender:</td>
                    <td class="input-cell">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="validator-cell">
                        <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Select gender" Display="Dynamic" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="label-cell">Address:</td>
                    <td class="input-cell">
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
                    </td>
                    <td class="validator-cell">
                        <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="TextBox6" ErrorMessage="Address required" Display="Dynamic" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="label-cell">Events:</td>
                    <td class="input-cell">
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                            <asp:ListItem>SIHackathon</asp:ListItem>
                            <asp:ListItem>Game Design</asp:ListItem>
                            <asp:ListItem>Essay Writing</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td class="validator-cell">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn-register" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>