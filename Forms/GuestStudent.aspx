<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdmissionMaster.master" AutoEventWireup="true" CodeFile="GuestStudent.aspx.cs" Inherits="Forms_GuestStudent" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <table style="position: relative; width: auto" >
        <tr>
            <td colspan="9" class="td">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="9">
                <hr />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Session            </td>
            <td class="style10" style="width: 143px">
                <telerik:RadComboBox ID="cmbSession" runat="server"  
                    Width="150px" AutoPostBack="True" OnSelectedIndexChanged="cmbSession_SelectedIndexChanged">
                </telerik:RadComboBox>
            </td>
            <td>&nbsp;&nbsp; &nbsp;</td>
            <td>Program Sought     </td>
            <td class="style6">
                <telerik:RadComboBox ID="cmbProgram" runat="server"
                    Width="150px">
                </telerik:RadComboBox>
            </td>
            <td>&nbsp;</td>
            <td>Class</td>
            <td>
                <telerik:RadComboBox ID="cmbClass" runat="server"  
                    Width="150px">
                </telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td> &nbsp;Form No       &nbsp;</td>
            <td style="width: 143px">
                <telerik:RadTextBox ID="txtFormNo" runat="server"  
                    Width="130px">
                </telerik:RadTextBox>
            </td>
            <td>&nbsp;</td>
            <td>Student Name    </td>
            <td class="style6">
                <telerik:RadTextBox ID="txtStudentNme" runat="server"  
                    Width="150px">
                </telerik:RadTextBox>
            </td>
            <td>&nbsp;&nbsp; &nbsp;</td>
            <td>Father Name            </td>
            <td>
                <telerik:RadTextBox ID="txtFathername" runat="server"  
                    Width="150px">
                </telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
           <td>Gender </td>
            <td>
                <telerik:RadComboBox ID="cmbGender" runat="server"
                    ErrorMessage="Error. Rendering"   Width="150px">
                    <Items>
                        <telerik:RadComboBoxItem runat="server" Selected="True" Text="Male" Value="Male" />
                        <telerik:RadComboBoxItem runat="server" Text="Female" Value="Female" />
                        <telerik:RadComboBoxItem runat="server" Text="Other" Value="Other" />
                    </Items>
                </telerik:RadComboBox>
            </td>
           <td>&nbsp;</td>
           <td>Last School  </td>
            <td class="style6">
                <telerik:RadComboBox ID="cmbSchoolLast" runat="server"  
                    Width="150px">
                </telerik:RadComboBox>
            </td>
        <td>        &nbsp;</td>
        <td>        <asp:Button ID="btnAddPrevSchool" runat="server" Text="Add" OnClick="btnAddPrevSchool_Click" />
            </td>
            <td>
                <telerik:RadTextBox ID="txtPrevSchool" runat="server"  
                    Width="150px">
                </telerik:RadTextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Per Address</td>
 <td>               <telerik:RadTextBox ID="txtaddress" runat="server"  
                    Width="150px">
                </telerik:RadTextBox>
            </td>
     <td>&nbsp;</td>
     <td>Mobile      </td>
            <td class="style6">
                <telerik:RadMaskedTextBox ID="txtMobileNo" runat="server"
                    Mask="#### #######"   Width="150px">
                </telerik:RadMaskedTextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
         <td>Flag      </td>
            <td>
                <telerik:RadComboBox ID="cmbFlag" runat="server"  
                    Width="150px">
                </telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td class="style5" colspan="7">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 128px"></td>
            <td class="style5" colspan="7">
                <asp:Button ID="btnAdd" runat="server" Text="New" OnClick="btnAdd_Click" />
                &nbsp;<asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                &nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" />
                &nbsp;&nbsp;<asp:Button ID="btnLoad" runat="server" Text="Load" OnClick="btnLoad_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td class="style5" colspan="7">
                <asp:Label ID="lblMessage" runat="server" Font-Names="Times New Roman"
                    Style="font-size: small; color: #FF0000; font-family: Time;"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="8">
                <asp:GridView ID="_gvList" runat="server" AutoGenerateColumns="False" Font-Names="Tahoma" Font-Size="Small" Style="text-align: left" Width="100%" HorizontalAlign="Center" ShowFooter="True" CellPadding="2" ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:TemplateField HeaderText="Enroll">
                            <ItemTemplate>
                                <asp:ImageButton ID="imgBtnUpload" runat="server" Height="16px" Width="16px" CommandArgument='<%# Eval("GuestID") %>' ImageUrl="~/MasterPages/View.gif" OnCommand="imgBtnUpload_Command" />
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
                                <asp:ImageButton ID="imgBtnDelete" runat="server" CommandArgument='<%# Eval("GuestID") %>' Height="16px" ImageUrl="~/MasterPages/Delete.gif" OnCommand="imgBtnDelete_Command" Width="16px" />
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
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="Smaller" />
                    <AlternatingRowStyle BackColor="White" BorderColor="#CCCCCC" />
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
            <td >
                &nbsp;</td>
            <td >
                <asp:Label runat="server" Style="font-size: small" Text="Flag" ID="Label12"></asp:Label>
            </td>
            <td colspan="4" style="height: 20px">
                <telerik:RadComboBox ID="cmbGridView" runat="server"  
                    Width="150px" AutoPostBack="True" OnSelectedIndexChanged="cmbGridView_SelectedIndexChanged">
                </telerik:RadComboBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="8">123</td>
        </tr>
    </table>

</asp:Content>

