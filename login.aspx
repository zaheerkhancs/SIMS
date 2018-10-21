<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Login.Master" CodeFile="login.aspx.cs" Inherits="login" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <table border="0" style="padding: 2px; margin: 1px; border-width: thin; border-style: none; white-space: normal; border-collapse: separate; text-align: left; line-height: normal; vertical-align: middle;">
        <tr>
            <td class="td">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <hr />
            </td>
        </tr>
        <table style="width: 360px; position: relative; top: 0px; left: 0px;">
            <tr>
                <td>Campus</td>
                <td>
                    <telerik:RadComboBox ID="cmbRole0" Runat="server">
                        <Items>
                            <telerik:RadComboBoxItem runat="server" Selected="True" Text="Fazal Abad Campus" Value="Fazal Abad Campus" />
                        </Items>
                    </telerik:RadComboBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Role</td>
                <td>
                    <telerik:RadComboBox ID="cmbRole" Runat="server">
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
                <td>User Name</td>
                <td>
                    <telerik:RadTextBox ID="txtUserName" Runat="server" Width="200px">
                    </telerik:RadTextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <telerik:RadTextBox ID="txtPasswrod" Runat="server" Width="200px">
                    </telerik:RadTextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="login" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server">Sign Up..</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server">Forget Password</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </table>
</asp:Content>


