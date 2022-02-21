<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayRoll1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="EmployeePayroll.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheet/HomePage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="Emp">
 <asp:Label ID="Label1" runat="server" Text="Employee Details" Font-Bold="True" ForeColor="#42515F" Width="200px"></asp:Label>
    </div>
    <div class="AddUser">
        <asp:Button ID="Button1" class="btn btn-btn1" runat="server" Text="+ Add User" OnClick="Button1_Click" />
    </div>
    <br />
    <asp:GridView ID="GridView1" runat="server">
        
    </asp:GridView>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
            <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
            <asp:BoundField DataField="Start_date" HeaderText="Start_date" SortExpression="Start_date" />
            <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
            <asp:BoundField DataField="RegisteredDate" HeaderText="RegisteredDate" SortExpression="RegisteredDate" />
            <asp:TemplateField HeaderText="Profile_Image" SortExpression="Profile_Image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Profile_Image") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("Profile_Image") %>' Width="150px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT * FROM [EmployeeWebForm]"></asp:SqlDataSource>
    </asp:Content>
