<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="Attendance_System.Teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
     <div  style="background-image:url('Images/background1.jpg');width:1200px">
         <table align="center" style="height:340px;width:392px"> 
         <tr>
             <td colspan="2" align="center">
                 <h2>
                     Add Teacher
                 </h2>
             </td>
         </tr>
          <tr>
              <td>
                  <b>Frist Name: &nbsp;&nbsp;&nbsp;</b>
              </td>
              <td>
                  <asp:TextBox ID="TextBox2" runat="server" Width="197px" Height="41px" CausesValidation="true" placeholder="Teacher's Frist Name"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="The First Name is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Name should be in characters" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
              </td>
          </tr>
           <tr>
               <td>
                   <b>Last Name: &nbsp;&nbsp;&nbsp;</b>
               </td>
               <td>
                   <asp:TextBox ID="TextBox4" runat="server" Width="197px" Height="41px" CausesValidation="true" placeholder="Teacher's last Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="The Last Name is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Name should be in characters" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator> 
              </td>
           </tr>
           <tr>
                <td>
                    <b>Email ID: &nbsp;&nbsp;&nbsp;</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="197px" Height="41px" CausesValidation="true" placeholder="Teacher's Email_Id"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Email ID is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Password: &nbsp;&nbsp;&nbsp;</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="197px" Height="41px" CausesValidation="true" placeholder="Teacher's Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="Password is empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button1" runat="server" Text="Add" Font-Bold="true" Height="46px" Width="96px" Font-Size="Medium" OnClick="Button1_Click"></asp:Button>
                    </td>
             </tr>
             <tr>
                 <td colspan="2" align="center">
                     <asp:Label ID="Label1" runat="server" Font-Bold="true"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td colspan="2"  align="center">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server">

                    </asp:ValidationSummary>/>
                 </td>
             </tr>
             <tr>
                 <td colspan="2" align="center"> 
                     <asp:GridView ID="GridView1" runat="server">

                     </asp:GridView>
                 </td>
             </tr>
         </table>
     </div>
 </center>
</asp:Content>
