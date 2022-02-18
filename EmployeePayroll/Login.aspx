<%@ Page Title="Login Page" Language="C#" MasterPageFile="~/EmployeePayRoll1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmployeePayroll.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet/Login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="sec2">
    <div>
        <h4>&emsp;&emsp;&emsp; Sign in</h4>
    </div>
    <div>
        <p>&ensp; to continue to Employee Payroll</p>
    </div>
    <div>
       <asp:TextBox ID="TextBox1" type="text" placeholder="Email or Phone" runat="server" name="email"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
         &nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Correct Email" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="[a-z0-9]+(.[a-z0-9]+)?@[a-z]+[.][a-z]{3}"></asp:RegularExpressionValidator>
    </div>
    <div>
        <asp:TextBox ID="TextBox2" type="password" placeholder="Password" runat="server" name="password" TextMode="Password"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Required" ForeColor="Red" Display="Dynamic" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
       &nbsp;&nbsp;
       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Correct Password" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"></asp:RegularExpressionValidator> 
    </div>
    <div>
        <asp:LinkButton ID="LinkButton1" style="text-decoration:none" runat="server">Forgot Password?</asp:LinkButton>
    </div>
    <div>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me"/>
    </div>
    <br />
    <div>
        <asp:Button ID="Button2" runat="server" class="btn login" OnClick="Button1_Click" Text="Create Account" />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Login" Width="71px" OnClick="Button1_Click1" />
<%--        <asp:GridView ID="GridView1" runat="server"></asp:GridView>   </div>--%>
    </div>
</asp:Content>