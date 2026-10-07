<script runat="server">

    Protected Sub RadioButton1_CheckedChanged(sender As Object, e As EventArgs)

    End Sub
</script>
<head>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="3">Event Registration Portal</td>
        </tr>
        <tr>
            <td>Name:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Gr no:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Class:</td>
            <td>
                <asp:ListBox ID="ListBox1" runat="server" Height="25px">
                    <asp:ListItem>-Select Class-</asp:ListItem>
                    <asp:ListItem>5EV1</asp:ListItem>
                    <asp:ListItem>5EV2</asp:ListItem>
                    <asp:ListItem>5EV3</asp:ListItem>
                    <asp:ListItem>5EV4</asp:ListItem>
                    <asp:ListItem>5EV5</asp:ListItem>
                    <asp:ListItem>5EV6</asp:ListItem>
                    <asp:ListItem>5EV7</asp:ListItem>
                </asp:ListBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Enroll no:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Mobile no:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>DOB:</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Gender:</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" Width="172px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Address:</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Height="71px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Events:</td>
            <td>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="16px" Width="167px">
                    <asp:ListItem>SIHackathon</asp:ListItem>
                    <asp:ListItem>Game Design</asp:ListItem>
                    <asp:ListItem>Essay Writing</asp:ListItem>
                </asp:CheckBoxList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="Button1" runat="server" Text="Button" />
            </td>
        </tr>
    </table>
</form>
