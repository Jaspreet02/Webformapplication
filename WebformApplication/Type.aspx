<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Type.aspx.cs" Inherits="WebformApplication.Type" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
            <asp:UpdatePanel ID="SCPanel" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
<ContentTemplate>

<asp:TextBox ID="txtStocked" runat="server" Width="75px" autopostback="true" OnTextChanged="Update_Text"></asp:TextBox>
<asp:TextBox ID="txtDFS" runat="server" Width="75px" ReadOnly="True"></asp:TextBox>

</ContentTemplate>
</asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
