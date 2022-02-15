<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayRoll1.Master" AutoEventWireup="true" CodeBehind="EmployeePayRollForm.aspx.cs" Inherits="EmployeePayroll.WebForms.EmployeePayRollForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheet/EmployeePayRollForm.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="WebFormClass" style="border-color: #FFFFFF" >
    <div>
          <h2> Employee PayRoll Form </h2>
    </div>
    <br />
    <div class="NameClass">
          <asp:Label ID="Label4" runat="server" Text="Name"></asp:Label>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="TextBox1" type="text" name="Name" runat="server" required="required" Width="534px" Height="30px"></asp:TextBox>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Name Start With UppersCase Min 3 Chars" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="^[A-Z]{1}[a-z]{2,}$"></asp:RegularExpressionValidator>  
    </div>
    <div class="Profile">
         <asp:Label ID="Label3" runat="server" Text="Profile" required="required"></asp:Label>
         <asp:RadioButtonList ID="RadioButtonList2" runat="server" Width="512px" CellPadding="1" CellSpacing="1" Height="27px" RepeatDirection="Horizontal" RepeatLayout="Flow" style="margin-left: 50px">   
            
              <asp:ListItem><img src="../Assets/profile-images/Female.png" alt="" class="ListItem" /></asp:ListItem>
              <asp:ListItem><img src="../Assets/profile-images/Male2.png" alt="" class="ListItem" /></asp:ListItem>
              <asp:ListItem><img src="../Assets/profile-images/Female1.png" alt="" class="ListItem" /></asp:ListItem>
              <asp:ListItem><img src="../Assets/profile-images/Male.png" alt="" class="ListItem" /></asp:ListItem>
              </asp:RadioButtonList>
    </div>
    <br />
        
    <div class="Gender Class">
        <asp:Label ID="Label1" runat="server" Text="Gender" required="required" ></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:RadioButtonList ID="RadioButtonList1" runat="server"  CellPadding="1" CellSpacing="8" Width ="209px" RepeatDirection="Horizontal" RepeatLayout="Flow" style="margin-left: 24px">
            <asp:ListItem>Male&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
    </div>
    <br />
    <div>
         <asp:Label ID="Label2" runat="server" Text="Department" required="required"  ></asp:Label>
         <asp:CheckBoxList ID="CheckBoxList1" runat="server" Width ="494px" RepeatDirection="Horizontal" RepeatLayout="Flow" style="margin-left: 10px; margin-top: 0px;">
             <asp:ListItem>HR&nbsp;&nbsp;&nbsp;</asp:ListItem>
             <asp:ListItem>Sales&nbsp;&nbsp;&nbsp;</asp:ListItem>
             <asp:ListItem>Finance&nbsp;&nbsp;&nbsp;</asp:ListItem>
             <asp:ListItem>Engineer&nbsp;&nbsp;&nbsp;</asp:ListItem>
             <asp:ListItem>Others&nbsp;&nbsp;&nbsp;</asp:ListItem>
        </asp:CheckBoxList> 
    </div>
    <br />
    <div class="Salary">
        <asp:Label ID="Label7" runat="server" Text="Salary" ></asp:Label>
        &emsp;&nbsp;&nbsp;&emsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Width="358px" Height="30px">
              <asp:ListItem>Select Salary</asp:ListItem>
              <asp:ListItem Value="₹10,000">₹10,000</asp:ListItem>
              <asp:ListItem Value="₹12,000">₹12,000</asp:ListItem>
              <asp:ListItem Value="₹15,000">₹15,000</asp:ListItem>
              <asp:ListItem Value="₹18,000">₹18,000</asp:ListItem>
              <asp:ListItem Value="₹20,000">₹20,000</asp:ListItem>
              <asp:ListItem Value="₹22,000">₹22,000</asp:ListItem>
              <asp:ListItem Value="₹25,000">₹25,000</asp:ListItem>
         </asp:DropDownList>
    </div>
    <br />
    <div>
        <asp:Label ID="Label6" runat="server" Text="Start Date"></asp:Label>
            &emsp;&nbsp;
            <asp:DropDownList ID="ddlDay" runat="server" Height="36px" Width="90px">
            </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlMonth" runat="server" Height="36px" Width="90px" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged" AutoPostBack="true">
            </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlYear" runat="server" Height="36px" Width="90px" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged" AutoPostBack="true">              
            </asp:DropDownList>
    </div>
    <br />
    <div class="Notes">
        <asp:Label ID="Label5" runat="server" Text="Notes"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" type ="text" name ="Notes" runat="server" TextMode ="MultiLine" Width="534px" Height ="70px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
    </div>
    <br /> 
    <br />
    <br />
        <asp:Button ID="Button1" runat="server" class="btn btn-outline-secondary" Text="Cancel" Width="180px" Height="50px" BackColor="#E2E2E2" BorderColor="#969696" ForeColor="#42515F" />&emsp;&emsp;&emsp;&emsp;&ensp;
        <asp:Button ID="Button2" runat="server" class="btn btn-outline-secondary" Text="Submit" Width="180px" Height="50px" BackColor="#E2E2E2" BorderColor="#969696" ForeColor="#42515F" />&emsp;
        <asp:Button ID="Button3" runat="server" class="btn btn-outline-secondary" Text="Reset" Width="180px" Height="50px" BackColor="#E2E2E2" BorderColor="#969696" ForeColor="#42515F" />
    </div>
    <br />
        
</asp:Content>
