﻿<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMaster.Master" AutoEventWireup="true" CodeBehind="Teacher_Lectures.aspx.cs" Inherits="Attendance_System.Teacher_Lectures" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center>
   <div style="background-image:url('Images/background1.jpg');width:1200px;">
       <table algin="center" style="width: 1200px; height: 366px">
            <tr style="widht:1200px">
                <td>
                    <b>Course: </b>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="115px" AutoPostBack="true"></asp:DropDownList>
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    <b>Year :</b>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="40px" Width="125px" AutoPostBack="true">
                        <asp:ListItem>Select Year</asp:ListItem>
                        <asp:ListItem>First Year</asp:ListItem>
                        <asp:ListItem>Second Year</asp:ListItem>
                        <asp:ListItem>Third Year</asp:ListItem>
                    </asp:DropDownList>
                </td>
                     &nbsp;
                <td>
                    <b>Semester :</b>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList5" runat="server" Height="40px" Width="125px" AutoPostBack="true" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
                        <asp:ListItem>Select Semester</asp:ListItem>
                        <asp:ListItem>Sem I</asp:ListItem>
                        <asp:ListItem>Sem II</asp:ListItem>
                        <asp:ListItem>Sem III</asp:ListItem>
                        <asp:ListItem>Sem IV</asp:ListItem>
                        <asp:ListItem>Sem V</asp:ListItem>
                        <asp:ListItem>Sem VI</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    <b>Subject :</b>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="40px" Width="125px" AutoPostBack="true" >
                    </asp:DropDownList>
                </td>
            </tr>
            <tr style="width: 1200px;" align="center">
               <td colspan="11" algin="center">
                   <b>Date:</b>
                   <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" placeholder="Select Date"></asp:TextBox>
               </td>
           </tr>
            <tr align="center">
               <td colspan="11" algin="center">
                   <asp:Button ID="Button1" runat="server" Text="Select" Font-Bold="true" Height="40px" Width="92px" OnClick="Button1_Click" />
               </td>
           </tr>
            <tr align="center">
               <td colspan="11" align="center">
                   <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
               </td>
           </tr>
            <tr align="center">
               <td colspan="11" align="center">
                   <asp:GridView ID="GridView1" runat="server" EmptyDateText="No Such Records Found">
                   </asp:GridView>
               </td>
           </tr>
       </table>
   </div>
</center>
</asp:Content>
