<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdmissionMaster.master" AutoEventWireup="true" CodeFile="StdFeeStructure.aspx.cs" Inherits="Forms_StdFeeStructure" %>

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
                    Width="150px" AutoPostBack="True" DataSourceID="SqlDataSource1">
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
                    Width="100px" AutoCompleteType="FirstName" AutoPostBack="True" EmptyMessage="Can not Empty!" OnTextChanged="txtEnrollNo_TextChanged">
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
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label ID="Label1" runat="server" Text="Student Info"></asp:Label>
            </td>
            <td style="width: 143px">
                <telerik:RadTextBox ID="txtStudentName" runat="server" Skin="Forest"
                    Width="200px">
                </telerik:RadTextBox>
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
                <asp:Label runat="server" Style="font-size: small" Text="Admission Fee" ID="Label3"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadTextBox ID="txtAdmissionFee" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Admission Processing Fee" ID="Label5"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadTextBox ID="txtAdmissionProcessingFee" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Online Fee" ID="Label6"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadTextBox ID="txtOnlineFee" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Tution Fee" ID="Label10"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadTextBox ID="txtTutionFee" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Library Fee" ID="Label22"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadTextBox ID="txtLibraryFee" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Building Fee" ID="Label23"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadTextBox ID="txtBuildingFee" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="CS Lab Fee" ID="Label24"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadTextBox ID="txtCSLabFee" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Science Lab Fee" ID="Label25"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadTextBox ID="txtScienceLabFee" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Examination Fee" ID="Label26"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadTextBox ID="txtExaminationFee" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Certificate Issuance Fee" ID="Label7"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadTextBox ID="txtCertificateIssuanceFee" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Other Anual Charges" ID="Label11"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadTextBox ID="txtOtherAnualCharges" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Mics Fee Structure" ID="Label19"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadTextBox ID="txtMicsFeeStructure" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Other Inclusour Fee" ID="Label14"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadTextBox ID="txtOtherFee" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Comments" ID="Label17"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadTextBox ID="txtComments_" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Note" ID="Label15"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadTextBox ID="txtNote" runat="server" Skin="Forest"
                    Width="200px">
                </telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Mood of Payment" ID="Label18"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadComboBox ID="cmbMoodofPayment" runat="server" Skin="Web20"
                    Width="150px" AutoPostBack="True">
                    <Items>
                        <telerik:RadComboBoxItem runat="server" Text="Cash" Value="Cash" />
                        <telerik:RadComboBoxItem runat="server" Text="Bank Cheque Payment" Value="Bank Cheque Payment" />
                        <telerik:RadComboBoxItem runat="server" Text="Omani" Value="Omani" />
                        <telerik:RadComboBoxItem runat="server" Text="Easy Paisa" Value="Easy Paisa" />
                    </Items>
                </telerik:RadComboBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Cheque/Other No" ID="Label16"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadTextBox ID="txtChequeOtherNo" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Bank Details" ID="Label20"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadTextBox ID="txtBankDetail" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Comments" ID="Label21"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadTextBox ID="txtCommentsDesc" runat="server" Skin="Forest"
                    Width="200px">
                </telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Flag" ID="Label13"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadComboBox ID="cmbFlag" runat="server" Skin="Web20"
                    Width="150px">
                </telerik:RadComboBox>
            </td>
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
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
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
                                <asp:ImageButton ID="imgBtnUpload" runat="server" Height="16px" Width="16px" CommandArgument='<%# Eval("FeeGenID") %>' ImageUrl="~/MasterPages/Edit.gif" />
                            </ItemTemplate>
                            <HeaderStyle Width="16px" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="imgBtnDelete" runat="server" CommandArgument='<%# Eval("FeeGenID") %>' Height="16px" ImageUrl="~/MasterPages/Delete.gif" Width="16px" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="imgBtnTransportDetails" runat="server" Height="16px" Width="16px" CommandArgument='<%# Eval("EnrollNo") %>' ImageUrl="~/MasterPages/Fee.jpg" OnCommand="imgBtnTransportDetails_Command" ToolTip="Record Transport Dues and Payment Details" />
                            </ItemTemplate>
                            <HeaderStyle Width="16px" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="FeeGenID" Visible="False"></asp:BoundField>
                        <asp:BoundField DataField="SessionName" HeaderText="Session" />
                        <asp:BoundField DataField="ProgramDesc" HeaderText="Program" />
                        <asp:BoundField DataField="EnrollNo" HeaderText="Enrollment" />
                        <asp:BoundField DataField="StudentName" HeaderText="Name" />
                        <asp:BoundField DataField="FatherName" HeaderText="Father" />
                        <asp:BoundField DataField="Month_Year" HeaderText="Year Month" />
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

