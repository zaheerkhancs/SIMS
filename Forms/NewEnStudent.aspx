<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdmissionMaster.master" AutoEventWireup="true" CodeFile="NewEnStudent.aspx.cs" Inherits="Forms_NewEnStudent" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <table border="0" style="padding: 2px; margin: 1px; border-width: thin; border-style: none; white-space: normal; border-collapse: separate; text-align: left; line-height: normal; vertical-align: middle;">
        <tr>
            <td   colspan="7" class="td">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="7">
                <hr />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td   style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Program" ID="Label14"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadComboBox ID="cmbProgram" runat="server" Skin="Web20"
                    Width="150px">
                </telerik:RadComboBox>
            </td>
            <td   style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Session" ID="Label20"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadComboBox ID="cmbSession" runat="server" Skin="Web20"
                    Width="150px">
                </telerik:RadComboBox>
            </td>
            <td  >
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td   style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Form No:" ID="Label21"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadTextBox ID="txtFormNo" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;"  >
                <asp:Label runat="server" Style="font-size: small" Text="Date of Adm:" ID="Label22"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadDatePicker ID="dtDoa" runat="server" Skin="Black">
                    <Calendar Skin="Black" UseColumnHeadersAsSelectors="False"
                        UseRowHeadersAsSelectors="False" ViewSelectorText="x">
                    </Calendar>
                    <DatePopupButton HoverImageUrl="" ImageUrl="" />
                    <DateInput DateFormat="M/d/yyyy" DisplayDateFormat="M/d/yyyy">
                    </DateInput>
                </telerik:RadDatePicker>
            </td>
            <td </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td   style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;" colspan="6">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td   style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Text="Student Name:" Font-Size="Small"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadTextBox ID="txtStudentNme" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;"  >
                <asp:Label runat="server" Text="Father Name:" Font-Size="Small"></asp:Label></td>
            <td class="style6">
                <telerik:RadTextBox ID="txtFathername" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;"  >
                <asp:Label ID="Label10" runat="server" Style="font-size: small"
                    Text="Gaurdian Name:"></asp:Label>
            </td>
            <td>
                <telerik:RadTextBox ID="txtGaurdianName" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td   style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Date of Birth:"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadDatePicker ID="dtDob" runat="server" Skin="Black">
                    <Calendar Skin="Black" UseColumnHeadersAsSelectors="False"
                        UseRowHeadersAsSelectors="False" ViewSelectorText="x">
                    </Calendar>
                    <DatePopupButton HoverImageUrl="" ImageUrl="" />
                    <DateInput DateFormat="M/d/yyyy" DisplayDateFormat="M/d/yyyy">
                    </DateInput>
                </telerik:RadDatePicker>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;"  >
                <asp:Label runat="server" Style="font-size: small" Text="Gender:" ID="Label18"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadComboBox ID="cmbGender" runat="server"
                    ErrorMessage="Error. Rendering" Skin="Web20" Width="150px">
                    <Items>
                        <telerik:RadComboBoxItem runat="server" Selected="True" Text="Male" Value="Male" />
                        <telerik:RadComboBoxItem runat="server" Text="Female" Value="Female" />
                        <telerik:RadComboBoxItem runat="server" Text="Others" Value="Others" />
                    </Items>
                </telerik:RadComboBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;"  >
                <asp:Label runat="server" Style="font-size: small" Text="Religion:" ID="Label19"></asp:Label>
            </td>
            <td>
                <telerik:RadComboBox ID="cmbReligion" runat="server" Skin="Web20"
                    Width="150px">
                    <Items>
                        <telerik:RadComboBoxItem runat="server" Selected="True" Text="Islam" Value="Islam" />
                        <telerik:RadComboBoxItem runat="server" Text="Hindu" Value="Hindu" />
                        <telerik:RadComboBoxItem runat="server" Text="Crestian" Value="Crestian" />
                    </Items>
                </telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td   style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Father Occp:" ID="Label23"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadTextBox ID="txtFatherOccupation" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;"  >
                <asp:Label runat="server" Font-Size="Small" Text="Form B/CNIC:" ID="Label24"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadNumericTextBox ID="txtCNIC" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadNumericTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;"  >
                <asp:Label runat="server" Text="Caste:" Font-Size="Small" ID="Label25"></asp:Label>
            </td>
            <td>
                <telerik:RadComboBox ID="cmbCast" runat="server" Skin="Web20" Width="150px">
                    <Items>
                        <telerik:RadComboBoxItem runat="server" Text="Muhmand" Value="Muhmand" />
                        <telerik:RadComboBoxItem runat="server" Text="Orakzai" Value="Orakzai" />
                        <telerik:RadComboBoxItem runat="server" Text="Kuram" Value="Kuram" />
                        <telerik:RadComboBoxItem runat="server" Text="Bajwar" Value="Bajwar" />
                    </Items>
                </telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td   style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Is Armed Force" ID="Label15"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadComboBox ID="cmbIsArmForce" runat="server" Skin="Web20"
                    Width="150px">
                    <Items>
                        <telerik:RadComboBoxItem runat="server" Selected="True" Text="Select Option" Value="Select Option" />
                        <telerik:RadComboBoxItem runat="server" Text="Yes" Value="Yes" />
                        <telerik:RadComboBoxItem runat="server" Text="No" Value="No" />
                    </Items>
                </telerik:RadComboBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;"  >
                <asp:Label runat="server" Style="font-size: small" Text="Emerg Contact Person" ID="Label16"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadTextBox ID="txtEmergencyContactPerson" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;"  >
                <asp:Label runat="server" Style="font-size: small" Text="Emerg Contact No" ID="Label17"></asp:Label>
            </td>
            <td>
                <telerik:RadTextBox ID="txtEmergencyContactNo" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td   style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Per Address:"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadTextBox ID="txtPerAddress" runat="server" Skin="Forest" Width="150px">
                </telerik:RadTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;"  >
                <asp:Label runat="server" Style="font-size: small" Text="Post Address:"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadTextBox ID="txtPostAddress" runat="server" Skin="Forest" Width="150px">
                </telerik:RadTextBox>
            </td>
            <td  >
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td   style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Telephone No:"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadMaskedTextBox ID="txtTelephoneNo" runat="server"
                    Mask="####-###-######" Skin="Forest" Width="150px">
                </telerik:RadMaskedTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;"  >
                <asp:Label runat="server" Style="font-size: small" Text="Mobile No:"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadMaskedTextBox ID="txtMobileNo" runat="server"
                    Mask="#### #######" Skin="Forest" Width="150px">
                </telerik:RadMaskedTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;"  >
                <asp:Label runat="server" Style="font-size: small" Text="Mobile No:" ID="Label26"></asp:Label>
            </td>
            <td class="style15">
                <telerik:RadMaskedTextBox ID="txtMobileNo0" runat="server"
                    Mask="#### #######" Skin="Forest" Width="150px">
                </telerik:RadMaskedTextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td   style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;" colspan="6">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td   style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Class Sought"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadComboBox ID="cmbClassSectionABC" runat="server" Skin="Web20"
                    Width="150px">
                </telerik:RadComboBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;"  >
                <asp:Label ID="Label3" runat="server" Style="font-size: small"
                    Text="Last School:"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadComboBox ID="cmbSchoolLast" runat="server" Skin="Web20"
                    Width="150px">
                </telerik:RadComboBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;"  >
                <asp:Label ID="Label7" runat="server" Style="font-size: small"
                    Text="Withdrawl NO:"></asp:Label>
            </td>
            <td class="style15">
                <telerik:RadTextBox ID="txtAdw" runat="server" Skin="Forest"
                    Width="150px">
                </telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td   style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label ID="Label4" runat="server" Style="font-size: small"
                    Text="Typeographics:"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadComboBox ID="cmbtypography" runat="server" Skin="Web20"
                    Width="150px">
                    <Items>
                        <telerik:RadComboBoxItem runat="server" Selected="True" Text="Right Handed" Value="Right Handed" />
                        <telerik:RadComboBoxItem runat="server" Text="Left Handed" Value="Left Handed" />
                    </Items>
                </telerik:RadComboBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;"  >
                <asp:Label ID="Label12" runat="server" Style="font-size: small"
                    Text="Mood of"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadComboBox ID="cmbMood" runat="server" Skin="Web20"
                    Width="150px">
                    <Items>
                        <telerik:RadComboBoxItem runat="server" Selected="True" Text="Urdu Medium" Value="Urdu Medium" />
                        <telerik:RadComboBoxItem runat="server" Text="English" Value="English" />
                        <telerik:RadComboBoxItem runat="server" Text="Maddrassa" Value="Maddrassa" />
                    </Items>
                </telerik:RadComboBox>
            </td>
            <td </td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td   style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label ID="Label13" runat="server" Style="font-size: small"
                    Text="Is Hostel"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadComboBox ID="cmbIsHostel" runat="server" Skin="Web20"
                    Width="150px">
                    <Items>
                        <telerik:RadComboBoxItem runat="server" Text="Yes" Value="Yes" />
                        <telerik:RadComboBoxItem runat="server" Text="No" Value="No" Selected="True" />
                    </Items>
                </telerik:RadComboBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;"  >
                <asp:Label ID="Label6" runat="server" Style="font-size: small"
                    Text="Is Transport"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadComboBox ID="cmbIsTransport" runat="server" Skin="Web20"
                    Width="150px">
                    <Items>
                        <telerik:RadComboBoxItem runat="server" Text="Yes" Value="Yes" />
                        <telerik:RadComboBoxItem runat="server" Text="No" Value="No" Selected="True" />
                        <telerik:RadComboBoxItem runat="server" Text="One Way" Value="One Way" />
                        <telerik:RadComboBoxItem runat="server" Text="Partial" Value="Partial" />
                    </Items>
                </telerik:RadComboBox>
            </td>
            <td </td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td   style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;" colspan="6">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td   style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Flag" ID="Label11"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadComboBox ID="cmbFlag" runat="server" Skin="Web20"
                    Width="150px">
                </telerik:RadComboBox>
            </td>
            <td </td>
            <td class="style6">
                &nbsp;</td>
            <td </td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 128px;">&nbsp;</td>
            <td class="style5" colspan="5">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 128px"></td>
            <td class="style5" colspan="5">
                <asp:Label ID="lblMessage" runat="server" Font-Names="Times New Roman"
                    Style="font-size: small; color: #FF0000; font-family: Time;"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 128px"></td>
            <td class="style5" colspan="5">
                <asp:Button ID="btnAdd" runat="server" BorderStyle="Solid" Height="30px" Text="New" Width="100px" />
&nbsp;<asp:Button ID="btnAdd0" runat="server" BorderStyle="Solid" Height="30px" Text="Save/Update" Width="100px" OnClick="btnAdd0_Click" />
&nbsp;<asp:Button ID="btnSave" runat="server" BorderStyle="Solid" Height="30px" Text="Cancel" Width="100px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td class="style5" colspan="5">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="6">
                <asp:GridView ID="_gvList" runat="server" AutoGenerateColumns="False" Font-Names="Tahoma" Font-Size="Small" Style="text-align: left" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:TemplateField HeaderText="View">
                            <ItemTemplate>
                                <asp:ImageButton ID="btnImgViewDetail" runat="server" Height="16px" Width="16px" CommandArgument='<%# Eval("STID") %>' ImageUrl="~/MasterPages/View.gif" />
                            </ItemTemplate>
                            <HeaderStyle Width="16px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fee">
                            <ItemTemplate>
                                <asp:ImageButton ID="btnImgFee" runat="server" ImageUrl="~/MasterPages/Fee.jpg" CommandArgument='<%# Eval("STID") %>' OnCommand="btnImgFee_Command" />
                            </ItemTemplate>
                            <HeaderStyle Width="10px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Atch">
                            <ItemTemplate>
                                <asp:ImageButton ID="btnUpload" runat="server" ImageUrl="~/MasterPages/UploadFiles.png" CommandArgument='<%# Eval("STID") %>' />
                            </ItemTemplate>
                            <HeaderStyle Width="10px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="STID" Visible="False" />
                        <asp:BoundField DataField="Program_Applied" HeaderText="Program" />
                        <asp:BoundField DataField="Class_Sought" HeaderText="Class Sought" />
                        <asp:BoundField DataField="AdmNo" HeaderText="AdmNo" />
                        <asp:BoundField DataField="SessionName" HeaderText="Session" />
                        <asp:BoundField DataField="Student_Name" HeaderText="Name" />
                        <asp:BoundField DataField="FatherName" HeaderText="Father Name" />
                        <asp:BoundField DataField="DOB" HeaderText="DOB" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                        <asp:BoundField DataField="Is_ArmdForces" HeaderText="Is_Armd Forces" />
                        <asp:BoundField DataField="Is_Hostel" HeaderText="Is_Hostel" />
                        <asp:BoundField DataField="Is_Transport" HeaderText="Is_Transport" />
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:ImageButton ID="imgbtnDelete" runat="server" CommandArgument='<%# Eval("STID") %>' Height="16px" ImageUrl="~/MasterPages/Delete.gif" Width="16px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <EmptyDataTemplate>
                        No Records were Found!
                    </EmptyDataTemplate>
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
