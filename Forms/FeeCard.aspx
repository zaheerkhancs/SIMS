<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdmissionMaster.master" AutoEventWireup="true" CodeFile="FeeCard.aspx.cs" Inherits="Forms_FeeCard" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <table style="width: auto; position: relative;">
        <tr>
            <td colspan="12" class="td">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="12">
                <hr />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 88px">Session
            </td>
            <td style="width: 40px">&nbsp;</td>
            <td>Program Sought</td>
            <td>&nbsp;</td>
            <td>Enroll No</td>
            <td>&nbsp;</td>
            <td>Class Enrolled</td>
            <td>&nbsp;</td>
            <td>Year Month</td>
            <td>&nbsp;</td>
            <td>Flag</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
<td style="width: 88px">                <telerik:RadComboBox ID="cmbSession" runat="server" Skin="Default"
                    Width="150px">
                </telerik:RadComboBox>
            </td>
            <td class="style10" style="width: 40px">
                &nbsp;</td>
            <td class="style10" style="width: 104px">
                <telerik:RadComboBox ID="cmbProgram" runat="server" Skin="Default"
                    Width="150px">
                </telerik:RadComboBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <telerik:RadTextBox ID="txtEnrollNo" runat="server" Skin="Default"
                    Width="100px">
                </telerik:RadTextBox>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                <telerik:RadTextBox ID="txtClass" runat="server" Skin="Default"
                    Width="100px">
                </telerik:RadTextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <telerik:RadComboBox ID="cmbYear" runat="server" Skin="Default"
                    Width="80px">
                </telerik:RadComboBox>
                &nbsp;<telerik:RadComboBox ID="cmbMonth" runat="server" Skin="Default"
                    Width="60px">
                </telerik:RadComboBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <telerik:RadComboBox ID="cmbFlag" runat="server" Skin="Default"
                    Width="150px">
                </telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 88px">Fee Type
            </td>
            <td style="width: 40px">&nbsp;</td>
            <td>Due Amount
            </td>
            <td>&nbsp;</td>
            <td>Installment</td>
            <td>&nbsp;</td>
            <td>Credit Amount </td>
            <td>&nbsp;</td>
            <td>Voucher No </td>
            <td>&nbsp;</td>
            <td>Advance</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 88px">
                <telerik:RadComboBox ID="cmbFeeType" runat="server" Skin="Default"
                    Width="150px">
                </telerik:RadComboBox>
            </td>
            <td class="style10" style="width: 40px">
                &nbsp;</td>
            <td class="style10" style="width: 104px">
                <telerik:RadTextBox ID="txtDueAmount" runat="server" Skin="Default"
                    Width="100px">
                </telerik:RadTextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <telerik:RadTextBox ID="txtInstallment" runat="server"  Skin="Default"
                    Width="100px">
                </telerik:RadTextBox>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                <telerik:RadTextBox ID="txtCreditAmount" runat="server"  Skin="Default"
                    Width="100px">
                </telerik:RadTextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <telerik:RadTextBox ID="txtVNo" runat="server"  Skin="Default"
                    Width="100px">
                </telerik:RadTextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <telerik:RadTextBox ID="txtAdvance" runat="server"  Skin="Default"
                    Width="100px">
                </telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 88px">Description</td>
            <td class="style10" style="width: 40px">&nbsp;</td>
            <td class="style10" style="width: 104px">
                <telerik:RadTextBox ID="txtDescription" runat="server" Skin="Default"
                    Width="150px" Height="15px">
                </telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="style6">&nbsp;</td>
            <td class="style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 19px"></td>
            <td style="width: 88px; height: 19px">
                <asp:Button ID="btnSave0" runat="server"  Text="Add Row" OnClick="btnSave_Click" />
            </td>
            <td class="style10" style="width: 40px; height: 19px">
                </td>
            <td class="style10" colspan="3" style="height: 19px">
                <asp:Label ID="lblStID" runat="server" Visible="False"></asp:Label>
            </td>
            <td class="style6" style="height: 19px"></td>
            <td class="style6" style="height: 19px"></td>
            <td style="height: 19px"></td>
            <td style="height: 19px"></td>
            <td style="height: 19px"></td>
            <td style="height: 19px"></td>
        </tr>
        <tr>

            <td>&nbsp;</td>
            <td style="width: 88px">&nbsp;</td>
            <td class="style5" style="width: 40px">&nbsp;</td>
            <td class="style5" colspan="9">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="11">
                <asp:GridView ID="_gvList0" runat="server" AutoGenerateColumns="False" Font-Names="Arial" Font-Size="Smaller" Style="text-align: left" Width="100%" HorizontalAlign="Center" ShowFooter="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="SessionID" HeaderText="Session" Visible="False" />
                        <asp:BoundField DataField="ProgramID" HeaderText="Program" Visible="False" />
                        <asp:BoundField DataField="ClassID" HeaderText="Class" Visible="False"></asp:BoundField>
                        <asp:BoundField DataField="EnrollNo" HeaderText="Enroll No">
                            <ItemStyle Width="50px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Class" HeaderText="Fee Type">
                            <ItemStyle Width="50px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="StudentName" HeaderText="Due Amount">
                            <ItemStyle Width="120px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FatherName" HeaderText="Installment">
                            <ItemStyle Width="120px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MobileNo" HeaderText="Credit Amount" />
                        <asp:BoundField DataField="Gender" HeaderText="Voucher No" />
                        <asp:BoundField DataField="LastSchool" HeaderText="Advance">
                            <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:ImageButton ID="imgBtnDelete0" runat="server" CommandArgument='<%# Eval("GuestID") %>' Height="16px" ImageUrl="~/MasterPages/Delete.gif" Width="16px" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <EmptyDataTemplate>
                        No Records were Found!
                    </EmptyDataTemplate>
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <AlternatingRowStyle BackColor="White" BorderColor="Silver" Font-Size="Smaller" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 88px"></td>
            <td class="style5" style="width: 40px">
                &nbsp;</td>
            <td class="style5" colspan="9">
                <asp:Button ID="btnAdd" runat="server" Text="New"  />
                &nbsp;
                <asp:Button ID="btnSave" runat="server"  Text="Save" OnClick="btnSave_Click" />
                &nbsp;
                <asp:Button ID="btnUpdate" runat="server"  Text="Update" />
                &nbsp;
                <asp:Button ID="btnLoad" runat="server"  Text="Load" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 88px">&nbsp;</td>
            <td class="style5" style="width: 40px">
                &nbsp;</td>
            <td class="style5" colspan="9">
                <asp:Label ID="lblMessage" runat="server" Font-Names="Times New Roman"
                    Style="font-size: small; color: #FF0000; font-family: Time;"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="11">
                <asp:GridView ID="_gvList" runat="server" AutoGenerateColumns="False" Font-Names="Arial" Font-Size="Smaller" Style="text-align: left" Width="100%" HorizontalAlign="Center" ShowFooter="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:TemplateField HeaderText="Enroll">
                            <ItemTemplate>
                                <asp:ImageButton ID="imgBtnUpload" runat="server" Height="16px" Width="16px" CommandArgument='<%# Eval("GuestID") %>' ImageUrl="~/MasterPages/View.gif" />
                            </ItemTemplate>
                            <HeaderStyle Width="16px" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="GuestID" HeaderText="Form No" />
                        <asp:BoundField DataField="SessionID" HeaderText="Session" />
                        <asp:BoundField DataField="ProgramSought" HeaderText="Program Applied">
                            <ItemStyle Width="50px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Class" HeaderText="in Class">
                            <ItemStyle Width="50px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="StudentName" HeaderText="Name">
                            <ItemStyle Width="120px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FatherName" HeaderText="Father Name">
                            <ItemStyle Width="120px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MobileNo" HeaderText="Mobile No" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" />
                        <asp:BoundField DataField="LastSchool" HeaderText="Prev School">
                            <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Address" HeaderText="Adress">
                            <ItemStyle Width="170px" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:ImageButton ID="imgBtnDelete" runat="server" CommandArgument='<%# Eval("GuestID") %>' Height="16px" ImageUrl="~/MasterPages/Delete.gif" Width="16px" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <EmptyDataTemplate>
                        No Records were Found!
                    </EmptyDataTemplate>
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <AlternatingRowStyle BackColor="White" Font-Names="Arial" Font-Size="Smaller" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td colspan="5">&nbsp;</td>
            <td style="height: 20px">
                &nbsp;</td>
            <td colspan="5" style="height: 20px">
                <telerik:RadComboBox ID="cmbGridView" runat="server"  
                    Width="150px" AutoPostBack="True">
                </telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="11">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

