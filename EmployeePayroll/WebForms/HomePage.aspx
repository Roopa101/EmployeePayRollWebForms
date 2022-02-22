<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayRoll1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="EmployeePayroll.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheet/HomePage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="Emp">
 <asp:Label ID="Label1" runat="server" Text="Employee Details" Font-Bold="True" ForeColor="#42515F" Width="200px"></asp:Label>
        <asp:Button ID="Button1" class="btn btn-btn1" runat="server" Text="+ Add User" OnClick="Button1_Click" />
    </div>
    <div class="AddUser">
    </div>
    <br />
    <asp:GridView ID="GridView1" runat="server">
        
    </asp:GridView>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
             <asp:TemplateField HeaderText="Profile_Image" SortExpression="Profile_Image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Profile_Image") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Profile_Image") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
            <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
            <asp:BoundField DataField="Start_date" HeaderText="Start_date" SortExpression="Start_date" />
            <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
            <asp:BoundField DataField="RegisteredDate" HeaderText="RegisteredDate" SortExpression="RegisteredDate" />
           <%-- <asp:TemplateField HeaderText="Profile_Image" SortExpression="Profile_Image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Profile_Image") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Profile_Image") %>' />
                </ItemTemplate>
            </asp:TemplateField>--%>
            <asp:TemplateField HeaderText="Actions">
                <ItemTemplate>
                    <asp:ImageButton  ImageUrl="~/Assets/images/edit-icon-png-3607 (1) (1) (1).png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
                    <asp:ImageButton  ImageUrl="~/Assets/images/delete-button-png-28580 (1) (1).png"  runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/> 
                </ItemTemplate>
                
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <div>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT [Name], [Gender], [Department], [Salary], [Start_date], [Notes], [Profile_Image], [id] FROM [EmployeeWebForm]" DeleteCommand="DELETE FROM [EmployeeWebForm] WHERE [id] = @id" InsertCommand="INSERT INTO [EmployeeWebForm] ([Name], [Gender], [Department], [Salary], [Start_date], [Notes], [Profile_Image]) VALUES (@Name, @Gender, @Department, @Salary, @Start_Date, @Notes, @Profile_Image)" UpdateCommand="UPDATE [EmployeeWebForm] SET [Name] = @Name, [Gender] = @Gender, [Department] = @Department, [Salary] = @Salary, [Start_date] = @Start_Date, [Notes] = @Notes, [Profile_Image] = @Profile_Image WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="Salary" Type="String" />
            <asp:Parameter DbType="Date" Name="Start_date"  />
            <asp:Parameter Name="Notes" Type="String" />
            <asp:Parameter Name="Profile_Image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="Salary" Type="String" />
            <asp:Parameter DbType="Date" Name="Start_date" />
            <asp:Parameter Name="Notes" Type="String" />
            <asp:Parameter Name="Profile_Image" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
     </div>   
<%--    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT * FROM [EmployeeWebForm]"></asp:SqlDataSource>--%>
   
    
</asp:Content>
