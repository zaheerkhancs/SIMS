<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdmissionMaster.master" AutoEventWireup="true" CodeFile="TransportDuesRec.aspx.cs" Inherits="Forms_TransportDuesRec" %>

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
                <asp:Label runat="server" Style="font-size: small" Text="Enroll No" ID="Label31"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadTextBox ID="txtEnrollNo" runat="server"  
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
            <td class="style6">&nbsp;</td>
            <td></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Vehicle Information" ID="Label37"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadTextBox ID="txtVInfo" runat="server"  
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Vehicle Type" ID="Label28"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadComboBox ID="cmbVType" runat="server"  
                    Width="200px">
                    <Items>
                        <telerik:RadComboBoxItem runat="server" Text="Suzuki" Value="Suzuki" />
                        <telerik:RadComboBoxItem runat="server" Text="Carry" Value="Carry" />
                        <telerik:RadComboBoxItem runat="server" Text="Bus" Value="Bus" />
                        <telerik:RadComboBoxItem runat="server" Text="Corolla" Value="Corolla" />
                        <telerik:RadComboBoxItem runat="server" Text="Datson" Value="Datson" />
                        <telerik:RadComboBoxItem runat="server" Text="Bike" Value="Bike" />
                        <telerik:RadComboBoxItem runat="server" Text="Bicycle" Value="Bicycle" />
                    </Items>
                </telerik:RadComboBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Driver Info" ID="Label33"></asp:Label>
            </td>
            <td>
                <telerik:RadTextBox ID="txtDriverInfo" runat="server"  
                    Width="150px">
                </telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label ID="Label1" runat="server" Text="Vehicle No"></asp:Label>
            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadTextBox ID="txtVNo" runat="server"  
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Route Description" ID="Label4"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadTextBox ID="txtRouteDescription" runat="server"  
                    Width="100px">
                </telerik:RadTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Driver Contact" ID="Label34"></asp:Label>
            </td>
            <td>
                <telerik:RadTextBox ID="txtDriverContact" runat="server"  
                    Width="150px">
                </telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label ID="Label27" runat="server" Text="No of Seats:"></asp:Label>
            </td>
            <td style="width: 143px">
                <telerik:RadComboBox ID="cmbNoofSeats" runat="server"  
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
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Year / Month" ID="Label38"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadComboBox ID="cmbYear" runat="server"  
                    Width="80px">
                </telerik:RadComboBox>
                &nbsp;<telerik:RadComboBox ID="cmbMonth" runat="server"  
                    Width="100px">
                </telerik:RadComboBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Driver Adress" ID="Label35"></asp:Label>
            </td>
            <td>
                <telerik:RadTextBox ID="txtDriverAddress" runat="server"  
                    Width="150px">
                </telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Text="Routing" Font-Size="Small" ID="Label8"></asp:Label>
                &nbsp;</td>
            <td style="width: 143px">
                <telerik:RadComboBox ID="cmbRoutingConfig" runat="server"  
                    Width="150px">
                    <Items>
                        <telerik:RadComboBoxItem runat="server" Text="One Way" Value="One Way" />
                        <telerik:RadComboBoxItem runat="server" Text="Double" Value="Double" />
                        <telerik:RadComboBoxItem runat="server" Text="Partial" Value="Partial" />
                        <telerik:RadComboBoxItem runat="server" Text="Full Session" Value="Full Session" />
                    </Items>
                </telerik:RadComboBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Charges" ID="Label32"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadTextBox ID="txtMonthlyCharges" runat="server"  
                    Width="100px">
                </telerik:RadTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Paid" ID="Label39"></asp:Label>
            </td>
            <td>
                <telerik:RadTextBox ID="txtPaidAmount" runat="server"  
                    Width="150px">
                </telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Date Payment" ID="Label40"></asp:Label>
            </td>
            <td style="width: 143px">
                <telerik:RadDatePicker ID="dtPaymentDate" Runat="server" Skin="Black">
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" ViewSelectorText="x" Skin="Black"></Calendar>

<DateInput DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy"></DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
                </telerik:RadDatePicker>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Voucher No" ID="Label41"></asp:Label>
            </td>
            <td class="style6">
                <telerik:RadTextBox ID="txtVoucherNo" runat="server"  
                    Width="100px">
                </telerik:RadTextBox>
            </td>
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="7">&nbsp;</td>
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
                                <asp:ImageButton ID="imgBtnView" runat="server" CommandArgument='<%# Eval("AdmNo") %>' Height="16px" ImageUrl="~/MasterPages/View.gif" Width="16px" OnCommand="imgBtnDelete_Command" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="imgBtnDelete" runat="server" CommandArgument='<%# Eval("AdmNo") %>' Height="16px" ImageUrl="~/MasterPages/Delete.gif" Width="16px" />
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
            <td style="margin: 1px; border: 1px solid #800000; padding: 1px; table-layout: auto; border-spacing: 2px; border-collapse: 1;">
                <asp:Label runat="server" Style="font-size: small" Text="Flag" ID="Label12"></asp:Label>
            </td>
            <td colspan="3" style="height: 20px">
                <telerik:RadComboBox ID="cmbGridView" runat="server"  
                    Width="150px" AutoPostBack="True" OnSelectedIndexChanged="cmbGridView_SelectedIndexChanged">
                </telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="6">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

