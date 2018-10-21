<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdmissionMaster.master" AutoEventWireup="true" CodeFile="StudentAttReg.aspx.cs" Inherits="Forms_StudentAttReg" %>

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
<td>
    Session        </td>
            <td class="style10" style="width: 143px">
                <telerik:RadComboBox ID="cmbSession" runat="server" Skin="Web20"
                    Width="150px">
                    <Items>
                        <telerik:RadComboBoxItem runat="server" Text="2" Value="2" />
                        <telerik:RadComboBoxItem runat="server" Text="4" Value="4" />
                        <telerik:RadComboBoxItem runat="server" Text="8" Value="8" />
                        <telerik:RadComboBoxItem runat="server" Text="16" Value="16" />
                        <telerik:RadComboBoxItem runat="server" Text="32" Value="32" />
                        <telerik:RadComboBoxItem runat="server" Text="64" Value="64" />
                        <telerik:RadComboBoxItem runat="server" Text="128" Value="128" />
                    </Items>
                </telerik:RadComboBox>
            </td>
<td>                <asp:Label runat="server" Style="font-size: small" Text="Program" ID="Label39"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadComboBox ID="cmbProgram" runat="server" Skin="Web20"
                    Width="150px">
                    <Items>
                        <telerik:RadComboBoxItem runat="server" Text="2" Value="2" />
                        <telerik:RadComboBoxItem runat="server" Text="4" Value="4" />
                        <telerik:RadComboBoxItem runat="server" Text="8" Value="8" />
                        <telerik:RadComboBoxItem runat="server" Text="16" Value="16" />
                        <telerik:RadComboBoxItem runat="server" Text="32" Value="32" />
                        <telerik:RadComboBoxItem runat="server" Text="64" Value="64" />
                        <telerik:RadComboBoxItem runat="server" Text="128" Value="128" />
                    </Items>
                </telerik:RadComboBox>
            </td>
<td>Class Section        </td>
            <td>
                <telerik:RadComboBox ID="cmbClassSection" runat="server" Skin="Web20"
                    Width="150px">
                    <Items>
                        <telerik:RadComboBoxItem runat="server" Text="2" Value="2" />
                        <telerik:RadComboBoxItem runat="server" Text="4" Value="4" />
                        <telerik:RadComboBoxItem runat="server" Text="8" Value="8" />
                        <telerik:RadComboBoxItem runat="server" Text="16" Value="16" />
                        <telerik:RadComboBoxItem runat="server" Text="32" Value="32" />
                        <telerik:RadComboBoxItem runat="server" Text="64" Value="64" />
                        <telerik:RadComboBoxItem runat="server" Text="128" Value="128" />
                    </Items>
                </telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
<td>Year / Month
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadComboBox ID="cmbYear" runat="server" Skin="Web20"
                    Width="60px">
                </telerik:RadComboBox>
                &nbsp;<telerik:RadComboBox ID="cmbMonth" runat="server" Skin="Web20"
                    Width="80px">
                </telerik:RadComboBox>
            </td>
<td>                DD:MM:YY</td>
            <td class="style6">
                <telerik:RadTextBox ID="txtVNo0" runat="server" Skin="Forest"
                    Width="50px">
                </telerik:RadTextBox>
            &nbsp;<telerik:RadDateInput ID="RadDateInput1" Runat="server" Skin="Black">
                </telerik:RadDateInput>
            </td>
     <td>           DD:MM:YY</td>
            <td>
                <telerik:RadComboBox ID="cmFlagAttandance" runat="server" Skin="Web20"
                    Width="150px">
                    <Items>
                        <telerik:RadComboBoxItem runat="server" Text="2" Value="2" />
                        <telerik:RadComboBoxItem runat="server" Text="4" Value="4" />
                        <telerik:RadComboBoxItem runat="server" Text="8" Value="8" />
                        <telerik:RadComboBoxItem runat="server" Text="16" Value="16" />
                        <telerik:RadComboBoxItem runat="server" Text="32" Value="32" />
                        <telerik:RadComboBoxItem runat="server" Text="64" Value="64" />
                        <telerik:RadComboBoxItem runat="server" Text="128" Value="128" />
                    </Items>
                </telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td colspan="7">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 128px"></td>
            <td class="style5" colspan="5">
                         &nbsp;<asp:Button ID="btnAttandance" runat="server" Text="Attandance 1st Half"/>
                &nbsp;<asp:Button ID="btnUpdate" runat="server"  Text="Attandance 2nd Half" />
                &nbsp;&nbsp;<asp:Button ID="btnLoad" runat="server"  Text="Attandance "  />
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
                                <asp:ImageButton ID="imgBtnView" runat="server" CommandArgument='<%# Eval("") %>' Height="16px" ImageUrl="~/MasterPages/View.gif" Width="16px" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="imgBtnDelete" runat="server" CommandArgument='<%# Eval("") %>' Height="16px" ImageUrl="~/MasterPages/Delete.gif" Width="16px" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>

                        <asp:BoundField DataField="TransRecID" Visible="True"></asp:BoundField>
                        <asp:BoundField DataField="AdmNo" HeaderText="Traspt Enr" />
                        <asp:BoundField DataField="clsSec_Description" HeaderText="Class" />
                        <asp:BoundField DataField="Student_Name" HeaderText="Name" />
                        <asp:BoundField DataField="FatherName" HeaderText="F Name" />
                        <asp:BoundField DataField="Mobile1" HeaderText="CellNo" />
                        <asp:BoundField DataField="Month_Year" HeaderText="Month-Year" />
                        <asp:BoundField DataField="Charges" HeaderText="Total Charges" />
                        <asp:BoundField DataField="Paid" HeaderText="Paid" />
                        <asp:BoundField DataField="Date_Payment" HeaderText="Paid Date" />
                        <asp:BoundField DataField="VoucherNo" HeaderText="Via Voucher NO" />
                        <asp:BoundField DataField="V_Type" HeaderText="Vehicle Type" />
                        <asp:BoundField DataField="V_No" HeaderText="Vehicle No" />
                        <asp:BoundField DataField="Drive_Info" HeaderText="Driver Name" />
                        <asp:BoundField DataField="Driver_Contact_No" HeaderText="Driver Cell" />
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
 <td>
     Flag ID       </td>
            <td colspan="3" style="height: 20px">
                <telerik:RadComboBox ID="cmbGridView" runat="server" Skin="Web20"
                    Width="150px" AutoPostBack="True" >
                </telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="6">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

