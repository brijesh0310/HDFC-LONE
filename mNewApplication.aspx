<%@ Page Title="" Language="C#" MasterPageFile="~/LoanMaster.Master" AutoEventWireup="true" CodeBehind="mNewApplication.aspx.cs" Inherits="LoanDemo.mNewApplication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 34px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Label ID="Label1" runat="server" Text="NEW LOAN APPLICATION"></asp:Label><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<table>
    <tr>
        <td>Saving Account No: </td>
        <td>
            <asp:TextBox ID="txtsavingaccount" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Account No is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>
    <tr>
        <td>Account Holder Name : </td>
        <td>
            <asp:TextBox ID="txtaccholdername" runat="server" OnTextChanged="txtaccholdername_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Holder Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Loan Category : </td>
        <td>
            <asp:DropDownList ID="catagoryDropDownList" runat="server">
                <asp:ListItem>Property Loan</asp:ListItem>
                <asp:ListItem>Fixed Rate Loan</asp:ListItem>
                <asp:ListItem>Term Loan</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>Loan Type : </td>
        <td>
            <asp:DropDownList ID="typeDropDownList" runat="server">
                <asp:ListItem>Education Loan</asp:ListItem>
                <asp:ListItem>Home Loan</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>Loan Issue Date : </td>
        <td>
            <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Issue Date is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Loan Amount : </td>
        <td class="auto-style1">
            <asp:TextBox ID="txtamount" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Amount Must be within 50000 to 2000000 Amount is Required" ForeColor="Red"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td>Current Address : </td>
        <td>
            <textarea id="TextArea1" cols="20" name="S1" rows="2"></textarea><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Address is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Loan Remarks : </td>
        <td>
            <textarea id="TextArea2" cols="20" name="S2" rows="2"></textarea><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Remarks is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>

</table>
<br />
<asp:Button ID="btnsubmit" runat="server" Text="Submit Application" />&nbsp;<br />
<asp:Label ID="lblsubmit" runat="server" Text="Record Inserted sucessfully"></asp:Label>
</asp:Content>
