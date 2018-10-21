<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdmissionMaster.master" AutoEventWireup="true" CodeFile="StudentDuesRegisterForm.aspx.cs" Inherits="Forms_StudentDuesRegisterForm" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <table border="0" style="padding: 2px; margin: 1px; border-width: thin; border-style: none; white-space: normal; border-collapse: separate; text-align: left; line-height: normal; vertical-align: middle;">
        <tr>
            <td colspan="7" class="td">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="7">
                <hr />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Session"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadComboBox ID="cmbSession" runat="server" Skin="Web20"
                    Width="150px">
                </telerik:RadComboBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Program" ID="Label4"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadComboBox ID="cmbProgram" runat="server" Skin="Web20"
                    Width="150px">
                </telerik:RadComboBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Class" ID="Label28"></asp:Label>
            </td>
            <td>
                <telerik:RadComboBox ID="cmbClassEnrolled" runat="server" Skin="Web20"
                    Width="150px" AutoPostBack="True" OnSelectedIndexChanged="cmbClassEnrolled_SelectedIndexChanged">
                </telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label ID="Label1" runat="server" Text="Student Info"></asp:Label>
            </td>
            <td style="width: 143px">
                <telerik:RadComboBox ID="cmbStudent" runat="server" Skin="Web20"
                    Width="150px" AutoPostBack="True" OnSelectedIndexChanged="cmbStudent_SelectedIndexChanged">
                </telerik:RadComboBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label ID="Label27" runat="server" Text="Father Name"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadTextBox ID="txtFatherName" runat="server" Skin="Forest"
                    Width="200px">
                </telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Text="Enroll No" Font-Size="Small" ID="Label8"></asp:Label>
                &nbsp;</td>
            <td style="width: 143px">
                <telerik:RadTextBox ID="txtEnrollNo" runat="server" Skin="Forest"
                    Width="100px" AutoCompleteType="FirstName" AutoPostBack="True" EmptyMessage="Can not Empty!">
                </telerik:RadTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Text="Year / Month" Font-Size="Small" ID="Label9"></asp:Label>
            </td>
            <td class="style6">&nbsp;<telerik:RadComboBox ID="cmbYear" runat="server" Skin="Web20"
                Width="80px">
            </telerik:RadComboBox>
                &nbsp;<telerik:RadComboBox ID="cmbMonth" runat="server" Skin="Web20"
                    Width="100px">
                </telerik:RadComboBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 143px">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="7">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Fee Structure" ID="Label2"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadComboBox ID="cmbFeeStructure" runat="server" Skin="Web20"
                    Width="150px" AutoPostBack="True" OnSelectedIndexChanged="cmbFeeStructure_SelectedIndexChanged">
                </telerik:RadComboBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Total Dues" ID="Label3"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadTextBox ID="txtTotalDues" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Paid In:" ID="Label29"></asp:Label>
            </td>
            <td>
                <telerik:RadTextBox ID="txtPaidAmount" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Paid Via Voucher No" ID="Label5"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadTextBox ID="txtVoucherNo" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Dated Transaction" ID="Label6"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadDatePicker ID="DateTransaction" runat="server" Skin="Black">
                    <Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" ViewSelectorText="x" Skin="Black"></Calendar>

                    <DateInput DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy"></DateInput>

                    <DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
                </telerik:RadDatePicker>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Payment Medium" ID="Label30"></asp:Label>
            </td>
            <td>
                <telerik:RadComboBox ID="cmbPaymentMed" runat="server" Skin="Web20"
                    Width="150px" AutoPostBack="True" OnSelectedIndexChanged="cmbFeeStructure_SelectedIndexChanged">
                    <Items>
                        <telerik:RadComboBoxItem runat="server" Selected="True" Text="Cash" Value="Cash" />
                        <telerik:RadComboBoxItem runat="server" Text="Cheque &amp; Chk No" Value="Cheque &amp; Chk No" />
                    </Items>
                </telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style10" style="width: 143px">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td class="style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="7">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="style5" colspan="5">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td class="style5" colspan="5">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 128px"></td>
            <td class="style5" colspan="5">
                <asp:Button ID="btnAdd" runat="server" BorderStyle="Solid" Height="30px" Text="New" Width="100px" />
                &nbsp;<asp:Button ID="btnSave" runat="server" BorderStyle="Solid" Height="30px" Text="Save" Width="100px" OnClick="btnSave_Click" />
                &nbsp;<asp:Button ID="btnUpdate" runat="server" BorderStyle="Solid" Height="30px" Text="Update" Width="100px" />
                &nbsp;&nbsp;<asp:Button ID="btnLoad" runat="server" BorderStyle="Solid" Height="30px" Text="Load" Width="100px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td class="style5" colspan="5">
                <asp:Label ID="lblMessage" runat="server" Font-Names="Times New Roman"
                    Style="font-size: small; color: #FF0000; font-family: Time;"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="6">
                <asp:GridView ID="_gvList" runat="server" AutoGenerateColumns="False" Font-Names="Tahoma" Font-Size="Small" Style="text-align: left" Width="100%" HorizontalAlign="Center" ShowFooter="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="imgBtnUpload" runat="server" Height="16px" Width="16px" CommandArgument='<%# Eval("DueID") %>' ImageUrl="~/MasterPages/Edit.gif" />
                            </ItemTemplate>
                            <HeaderStyle Width="16px" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="imgBtnDelete" runat="server" CommandArgument='<%# Eval("DueID") %>' Height="16px" ImageUrl="~/MasterPages/Delete.gif" Width="16px" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="DueID" Visible="False"></asp:BoundField>
                        <asp:BoundField DataField="StID" Visible="False"></asp:BoundField>
                        <asp:BoundField DataField="EnrollNo" HeaderText="Enroll No" />
                        <asp:BoundField DataField="Student_Name" HeaderText="Name" />
                        <asp:BoundField DataField="FatherName" HeaderText="Father Name" />
                        <asp:BoundField DataField="Session" HeaderText="Session" />
                        <asp:BoundField DataField="ProgramName" HeaderText="Program" />
                        <asp:BoundField DataField="ClassDesc" HeaderText="Class" />
                        <asp:BoundField DataField="Month" HeaderText="Month" />
                        <asp:BoundField DataField="Year" HeaderText="Year" />
                        <asp:BoundField DataField="Dues" HeaderText="Dues" />
                        <asp:BoundField DataField="Paid" HeaderText="Paid" />
                        <asp:BoundField DataField="PaymentMed" HeaderText="Payment Medium" />
                        <asp:BoundField DataField="Date_Paid" HeaderText="Date Paid" />
                        <asp:BoundField DataField="PaidViaVoucherNo" HeaderText="Voucher No" />
                        <asp:BoundField DataField="Transaction_Date" HeaderText="Transaction Date" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <EmptyDataTemplate>
                        No Records were Found!
                    </EmptyDataTemplate>
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <AlternatingRowStyle BackColor="White" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td colspan="2" style="height: 20px">&nbsp;</td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Flag" ID="Label12"></asp:Label>
            </td>
            <td colspan="3" style="height: 20px">
                <telerik:RadComboBox ID="cmbGridView" runat="server" Skin="Web20"
                    Width="150px" AutoPostBack="True">
                </telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="6">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

