<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="Attendance_System.Course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center>
    <div style="background-image:url('Images/background1.jpg');width:1200px;height:477px;">
        <table align="center" style="width:386px">
            <tr>
                <td colspan="2" align="center">
                    <h2> Add Course</h2>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Course:&nbsp;&nbsp;&nbsp;</b>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="44px" Width="230px" CausesValidation="true" placeholder="Course Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="Red" ErrorMessage="Enter Course Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center" >
                    <asp:Button ID="Button1" runat="server" Text="Add" Height="44px" OnClientClick="Button_Click" Width="80px" Font-Bold="true" OnClick="Button1_Click"></asp:Button>
                </td>
            </tr>
             <tr>
                <td colspan="2">
                   &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2">
                   <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        
         <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CID" Height="202px" PageSize="4" Width="257px" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
             <Columns>
                 <asp:TemplateField HeaderText="Course">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("CourseName") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label2" runat="server" Text='<%# Eval("CourseName") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>
                 <asp:CommandField CausesValidation="False" HeaderText="Operation" ShowDeleteButton="True" ShowEditButton="True" />
             </Columns>
            </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <br />    
        <br />
         <br />
         <br />
         <br />
     
    </div>
</center>
</asp:Content>
