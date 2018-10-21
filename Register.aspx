<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <table style="width: 360px; position: relative; top: 0px; left: 0px;">
        <tr>
            <td>Gen Identity</td>
            <td>
                <telerik:RadTextBox ID="txtGenID" runat="server" Width="200px">
                </telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>User Name</td>
            <td>
                <telerik:RadTextBox ID="txtUserID" runat="server" Width="200px">
                </telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Full Name</td>
            <td>
                <telerik:RadTextBox ID="txtFullName" runat="server" Width="200px">
                </telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <telerik:RadTextBox ID="txtEmail" runat="server" Width="200px">
                </telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Role</td>
            <td>
                <telerik:RadComboBox ID="cmbRole0" runat="server">
                    <Items>
                        <telerik:RadComboBoxItem runat="server" Selected="True" Text="Fazal Abad Campus" Value="Fazal Abad Campus" />
                    </Items>
                </telerik:RadComboBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Campus</td>
            <td>
                <telerik:RadComboBox ID="cmbCampus" runat="server">
                    <Items>
                        <telerik:RadComboBoxItem runat="server" Text="Accountant" Value="Accountant" />
                        <telerik:RadComboBoxItem runat="server" Text="Admin" Value="Admin" />
                        <telerik:RadComboBoxItem runat="server" Text="Report User" Value="Report User" />
                        <telerik:RadComboBoxItem runat="server" Text="Examination Clerk" Value="Examination Clerk" />
                        <telerik:RadComboBoxItem runat="server" Text="Admission Clerk" Value="Admission Clerk" />
                    </Items>
                </telerik:RadComboBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <telerik:RadTextBox ID="txtPass" runat="server" Width="200px">
                </telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Re Enter Password</td>
            <td>
                <telerik:RadTextBox ID="txtReEnterPass" runat="server" Width="200px">
                </telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Password Hint</td>
            <td>
                <telerik:RadTextBox ID="txtPasshints" runat="server" Width="200px">
                </telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnRegister" runat="server" Text="Sign Up" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:LinkButton ID="btnSignIn" runat="server">Sign In</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="btnForgetPass" runat="server">Forget Password</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

