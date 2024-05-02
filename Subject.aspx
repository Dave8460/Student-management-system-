<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Subject.aspx.cs" Inherits="Attendance_System.Subject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <div style="background-image:url('Images/background1.jpg');width:1200px">
        <table algin="center" style="height:340px;width:391px">
            <tr>
                <td colspan="2" align="center" >
                    <h2>
                        Add Subject
                    </h2>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Course: &nbsp;&nbsp;&nbsp;</b>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" Height="40px" Width="197px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Year:&nbsp;&nbsp;&nbsp;</b>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" Height="40px" Width="197px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" >
                        <asp:ListItem Value="0">Select Year</asp:ListItem>
                        <asp:ListItem Value="1">First Year</asp:ListItem>
                        <asp:ListItem Value="2">Second Year</asp:ListItem>
                        <asp:ListItem Value="3">Thrid Year</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Semester: &nbsp;&nbsp;&nbsp;</b>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="true" Height="40px" Width="197px" >
                        <asp:ListItem Value="0">Select Semester</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Subject: &nbsp;&nbsp;&nbsp;</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="197px" Height="41px" CausesValidation="true" placeholder="Subject Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Subject Name" ControlToValidate="TextBox1" ForeColor="Red" ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Add" Font-Bold="true" Height="47px" Width="86px" Font-Size="Medium" OnClick="Button1_Click"></asp:Button>
                </td>
            </tr> 
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Fpnt-Bold="True"></asp:Label>
                </td>
            </tr>   
            <tr>
                <td colspan="2" align="center">
                    <asp:GridView ID="GridView1" runat="server" Width="283px" Height="180px" AllowCustomPaging="True" PageSize="5" >

                    </asp:GridView>
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
