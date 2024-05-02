<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="Attendance_System.Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div style="background-image:url('Images/background1.jpg');width:1200px">
           <table align="center" style="height:340px;width:500px">
                <tr>
                    <td colspan="2" align="center">
                        <h2>
                            Add Student
                        </h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>First Name :&nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" width="197px" Height="41px" placeholder="Student's First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="First Name is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name Should be in Characters" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Last Name :&nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" width="197px" Height="41px" placeholder="Student's Last Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Last Name is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Name Should be in Characters" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Roll_No :&nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" width="197px" Height="41px" placeholder="Student's Roll_No"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Roll_No is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Phone Number" ForeColor="Red" ValidationExpression="[0-9]{7}">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Email :&nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" width="197px" Height="41px" placeholder="Student's Email_Id"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Email is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Contact_No :&nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" width="197px" Height="41px" TextMode="Number" placeholder="Student's Phone_No"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="Contact Number is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Phone Number" ForeColor="Red" ValidationExpression="[0-9]{10}">*</asp:RegularExpressionValidator>
                    </td>
                </tr>

                 <tr>
                    <td>
                        <b>Password :&nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" width="197px" Height="41px" placeholder="Student Password" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox6" ErrorMessage="Password is Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <b>Course :&nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" Height="40px" Width="197px"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Select Course" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Year :&nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                       <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="true" Height="40px" Width="197px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                           <asp:ListItem Value="0">Select Year</asp:ListItem>
                           <asp:ListItem Value="1">First Year</asp:ListItem>
                           <asp:ListItem Value="2">Second Year</asp:ListItem>
                           <asp:ListItem Value="3">Third Year</asp:ListItem>
                       </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Select Year" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Semester :&nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" Height="40px" Width="197px">
                            <asp:ListItem Value="0">Select Semester</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select Semester" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button1" runat="server" Text="Add" Font-Bold="true" Font-Size="Medium" Height="47px" Width="86px" OnClick="Button1_Click" ></asp:Button>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                       <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red"></asp:ValidationSummary>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                       <asp:GridView ID="GridView1" runat="server" Width="252px"></asp:GridView>
                    </td>
                </tr>
             </table>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </center>
</asp:Content>
