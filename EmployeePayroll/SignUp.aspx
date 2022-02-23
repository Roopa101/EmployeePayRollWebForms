<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayRoll1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="EmployeePayroll.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet/SignUp.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="sec4">
    <div>
        <h5 style="font-size: large; font-weight: bolder; font-style: normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Create An Account</h5>
    </div>
    <div>
        <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to continue to Employee Payroll</p>
    </div>
    <div>
        <asp:TextBox ID="TextFN" runat="server" required="required" Name="FirstName" placeholder="FirstName"></asp:TextBox>&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextLN" runat="server" required="required" Name="LastName" placeholder="LastName"></asp:TextBox>
    <div class ="regex">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Name Start With UppersCase Min 3 Chars" ControlToValidate="TextFN" ForeColor="Red" ValidationExpression="^[A-Z]{1}[a-z]{2,}$"></asp:RegularExpressionValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Name Start With UppersCase Min 3 Chars" ControlToValidate="TextLN" ForeColor="Red" ValidationExpression="^[A-Z]{1}[a-z]{2,}$"></asp:RegularExpressionValidator>
    </div>
    </div>
    <div>
        <asp:TextBox ID="TextID" placeholder="Enter Email" type="text" name="username" runat="server" required="required" Width="421px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextID" ErrorMessage="Invalid username" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </div>
    <div>
        <asp:TextBox ID="TextPW" runat="server" Name="Password" placeholder="Password" required="required" ></asp:TextBox>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextCpw" runat="server" Name="Confirm Password" placeholder="Confirm Password" required="required" ></asp:TextBox>   
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords does not match" ControlToCompare="TextPW" ControlToValidate="TextCpw" ForeColor="Red"></asp:CompareValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Min 8 char, at least 1 letter and 1 number" ControlToValidate="TextPW" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"></asp:RegularExpressionValidator>
    &nbsp;
    </div>
    <div>
        <asp:CheckBox ID="CheckBox2" runat="server"  /><asp:Label ID="Label1" runat="server" Text="Show Password"/>

    </div>
    <br />
    <div>
        <asp:TextBox ID="TextMN" placeholder="Mobile Number" type="text" name="Number" runat="server" required="required" Width="421px"></asp:TextBox>
<%--        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextMN" ErrorMessage="Invalid Number" ForeColor="Red" ValidationExpression="^[1-9][0-9]{1,2}[ ][0-9]{10}$"></asp:RegularExpressionValidator>--%>
    </div>
        <br />
        <br />
    <div >
        <asp:Button ID="Button1" runat="server"  class="btn signin" Text="Sign instead"  Width ="123px" OnClick="Button1_Click"/>
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" class="btn btn-primary" Text="Next"  Width="105px" OnClick="Button3_Click" />
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </div>
    </div>
</asp:Content>

