<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayRoll1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="EmployeePayroll.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheet/HomePage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
  <div class="Emp">
        <asp:Label ID="Label1" runat="server" Text="Employee Details" Height="50px" Width="220px" Font-Bold="True" ForeColor="#42515F" Font-Size="Larger"></asp:Label>
      </div>
    <div class="AddUser">
        
        <asp:Button ID="Button1" class="btn btn-btn1" runat="server" Text="+ Add User" OnClick="Button1_Click" Width="148px" />
      </div>   
       <div >
        <asp:GridView ID="GridView3" CssClass="Gridview1" runat="server" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="1097px" HorizontalAlign="Center" OnRowDeleting="GridView3_RowDeleting" DataKeyNames="id">
        <AlternatingRowStyle BackColor="White" />
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
<%--            <asp:BoundField DataField="RegisteredDate" HeaderText="RegisteredDate" SortExpression="RegisteredDate" />--%>
          <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Image" DeleteImageUrl="~/Assets/images/delete-button-png-28580 (1) (1).png" EditImageUrl="~/Assets/images/edit-icon-png-3607 (1) (1) (1).png" HeaderText="Actions" />

        </Columns>  
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    </div>
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
            <asp:Parameter DbType="Date" Name="Start_date" />
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
</asp:Content>
