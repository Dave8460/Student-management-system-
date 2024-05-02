t<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Attendance_System.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" >
<div style="height:450px" >
    <table style="width:565px;height:421px;background-image:url(Images/background1.jpg);margin:0 auto">
        <tr>
            <td colspan="2" align="center">
                &nbsp;<img id="Img1"   src="Images/login.png" alt="" runat="server" style="height:190px;width:199px"/></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <h2>Teacher, Admin &amp; Student Login</h2>
            </td>
        </tr>
        <tr>
            <td align="center"  style="height:50%;" >
                <b>Email Id/User ID:</b>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" Width="166px" Font-Bold="true" placeholder="Enter Email_ID/User ID"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Email_ID" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" style="width:50%">
                <b>Password</b>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" BackColor="Transparent" Height="29px" Width="166px" TextMode="Password" Font-Bold="true" placeholder="Enter Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
          </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="true" Height="46px" Width="201px" OnClick="Button1_Click" BackColor="#3333CC" BorderColor="#000066" />
            </td>
        </tr>
        <tr>
           <td>
               <asp:Label ID="Label1" runat="server" forecolor="Red" Font-Bold="true" ></asp:Label>
           </td>
           <td align="rigth">        
           </td>
       </tr>
    </table>
    </div>
    </form>
</body>
</html>
