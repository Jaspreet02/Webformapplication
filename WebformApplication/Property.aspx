<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Property.aspx.cs" Inherits="WebformApplication.Property" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="frmProperty" runat="server">
        <div style="height: 343px">
            <asp:Panel ID="pnlfirst" runat="server" Height="162%" Width="100%">
                 <asp:GridView ID="grvProperty" runat="server" AutoGenerateColumns="False" ShowFooter="True" 
                      BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                          CellPadding="3" DataKeyNames="PropertyId" CellSpacing="2" OnRowCancelingEdit="grvProperty_RowCancelingEdit" OnRowDeleting="grvProperty_RowDeleting" OnRowEditing="grvProperty_RowEditing" OnRowUpdating="grvProperty_RowUpdating" AllowPaging="True" AllowSorting="True" Height="100%" Width="100%" OnRowDataBound="grvProperty_RowDataBound" OnPageIndexChanging="grvProperty_PageIndexChanging" OnRowCommand="grvProperty_RowCommand" OnSorting="grvProperty_Sorting"> 
<Columns> 
    <asp:TemplateField HeaderText="Operations">
        <EditItemTemplate>
    <asp:Button ID="Button3" runat="server" CommandName="Update" Text="Update" />
    <asp:Button ID="Button4" runat="server" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <ItemTemplate>
    <asp:Button ID="Button1" runat="server" CommandName="Edit" Text="Edit" />
    <asp:Button ID="Button2" runat="server" CommandName="Delete" Text="Delete" />
    </ItemTemplate>
    <FooterTemplate>
    <asp:Button ID="addnew" runat="server" CommandName="Add New" Text="Add New" />
    </FooterTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="User"> 
    <EditItemTemplate> 
    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("UserId") %>'></asp:TextBox> 
    </EditItemTemplate> 
    <ItemTemplate> 
    <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserId") %>'></asp:Label> 
    </ItemTemplate> 
    <FooterTemplate>
    <asp:TextBox ID="addname" runat="server" ></asp:TextBox>
    </FooterTemplate>
    </asp:TemplateField> 
    <asp:TemplateField HeaderText="Description"> 
    <EditItemTemplate> 
    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox> 
    </EditItemTemplate> 
    <ItemTemplate> 
    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Description") %>'></asp:Label> 
    </ItemTemplate> 
    <FooterTemplate>
    <asp:TextBox ID="Description" runat="server" ></asp:TextBox>
    </FooterTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Prize" SortExpression="Prize">
        <EditItemTemplate>
            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Prize")  %>'></asp:TextBox>
        </EditItemTemplate>
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Prize")  %>'></asp:Label>
        </ItemTemplate>
        <FooterTemplate>
            <asp:TextBox ID="Prize" runat="server" ></asp:TextBox>
        </FooterTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Room" SortExpression="Room">
        <EditItemTemplate>
            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Room")  %>'></asp:TextBox>
        </EditItemTemplate>
        <ItemTemplate>
            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Room")  %>'></asp:Label>
        </ItemTemplate>
        <FooterTemplate>
            <asp:TextBox ID="Room" runat="server" ></asp:TextBox>
        </FooterTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Type">
        <EditItemTemplate>  
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
        </EditItemTemplate>
        <FooterTemplate>
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
        </FooterTemplate>
        <ItemTemplate>
            <asp:DropDownList ID="ddlType" runat="server">
            </asp:DropDownList>
        </ItemTemplate>
    </asp:TemplateField>
    <asp:BoundField DataField="TypeId" HeaderText="TypeId" Visible="False" />
</Columns> 
<FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" /> 
<HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" /> 
<PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" /> 
<RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" /> 
<SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" /> 
<SortedAscendingCellStyle BackColor="#FFF1D4" /> 
<SortedAscendingHeaderStyle BackColor="#B95C30" /> 
<SortedDescendingCellStyle BackColor="#F1E5CE" /> 
<SortedDescendingHeaderStyle BackColor="#93451F" /> 
</asp:GridView> 
            </asp:Panel>
        </div>
    </form>
</body>
</html>
