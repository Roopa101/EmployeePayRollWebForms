<%@ Page Title="Login Page" Language="C#" MasterPageFile="~/EmployeePayRoll1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmployeePayroll.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet/Login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div
     class="Form">
     <div class="center" style="border-color: #000000; background-color: #CCCCCC; height: 478px; width: 347px;">
        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sign In </h2>  
        
        <div class="text_field">
         
         <p1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;to continue to Employee Payroll</p1>
     </div>
         <br />
    <div class="box1">
        <asp:TextBox ID="TextBox1" runat="server" name="Email" placeholder="Email" Width="252px"></asp:TextBox>
     
      </div>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email Required" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
         &nbsp;&nbsp;&nbsp;
         <div>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid EmailId" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

         </div>

         
     <div class="box2">    
        <asp:TextBox ID="TextBox2" placeholder ="Password" runat="server" Width="256px" TextMode="Password"  ></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Required" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Min 8 char, at least 1 letter and 1 number" ForeColor="#FF3300" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"></asp:RegularExpressionValidator>

   </div>              
    <div class="check_box">
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" />&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" Width="30px">ForgetPassword?</asp:LinkButton>
      </div>
         <div class="CreateAccount">
             <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Create instead</asp:LinkButton>
             
             &nbsp;<asp:Button ID="Button1" runat="server" Text="Login" Height="30px" Width="107px" />
             </div>&nbsp;&nbsp;
         </div>
 </div>
     
    </asp:Content>