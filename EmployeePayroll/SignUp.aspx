<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayRoll1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="EmployeePayroll.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet/SignUp.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="sec4">
    <div>
        <h5 style="font-size: large; font-weight: bolder; font-style: normal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Create An Account</h5>
    </div>
    <div>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to continue to Employee Payroll</p>
    </div>
    <div>
        <%--<input id="Text1" placeholder="First name" type="text" name="firstname" required/>--%>
<asp:TextBox ID="TextBox3" runat="server" Name="FirstName" placeholder="FirstName"></asp:TextBox>

       <asp:TextBox ID="TextBox4" runat="server" Name="LastName" placeholder="LastName"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="FirstName required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="LastName required" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:TextBox ID="TextBox1" placeholder="Enter Email" type="text" name="username" runat="server" Width="438px"></asp:TextBox>
    </div>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Email required" ForeColor="Red"></asp:RequiredFieldValidator>

          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid username" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

    <div>
        <asp:TextBox ID="TextBox5" runat="server" Name="Password" placeholder="Password"></asp:TextBox>
<asp:TextBox ID="TextBox6" runat="server" Name="Confirm Password" placeholder="Confirm Password"></asp:TextBox>   
</div><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password and confirm password must be same" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ForeColor="Red"></asp:CompareValidator>
    <div>
<asp:CheckBox ID="CheckBox2" runat="server"  /><asp:Label ID="Label1" runat="server" Text="Show Password"></asp:Label>
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Min 8 char, at least 1 letter and 1 number" ControlToValidate="TextBox5" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"></asp:RegularExpressionValidator>
    </div>
    <br />
     <div>
        <asp:TextBox ID="TextBox2" placeholder="Mobile Number" type="text" name="Number" runat="server" Width="438px"></asp:TextBox>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid Number" ForeColor="Red" ValidationExpression="^[1-9][0-9]{1,2}[ ][0-9]{10}$"></asp:RegularExpressionValidator>
    </div>    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Number required" ForeColor="Red"></asp:RequiredFieldValidator>

          <br />
          <br />
         
    <div >
          <asp:Button ID="Button2" runat="server" Text="Sign in instead" OnClick="Button2_Click" />
   
   &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button3" runat="server" class="btn btn-primary" Text="Next"  Width="123px" />
        
    </div>
    </div>
</asp:Content>

