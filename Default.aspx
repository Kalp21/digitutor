<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
    <table>
    <tr>
    <td rowspan="2">
        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("stu_pic") %>'/>
        </td>
    <td>
        <asp:Label ID="Label14" runat="server" Text='<%# Eval("stu_name") %>'></asp:Label>
        </td>
    <td>
        <asp:Label ID="Label2" runat="server" Text='<%# Eval("stu_name") %>'></asp:Label>
        </td>
    <td>
        <asp:Label ID="Label3" runat="server" Text='<%# Eval("stu_name") %>'></asp:Label>
        </td>
    <td>
        <asp:Label ID="Label4" runat="server" Text='<%# Eval("stu_name") %>'></asp:Label>
        </td>
    </tr>
    <tr>
    <td colspan="4">
        <asp:Label ID="Label5" runat="server" Text='<%# Eval("stu_name") %>'></asp:Label>
        </td>
    </tr></table>
    </ItemTemplate>
    </asp:DataList>
    </div>
    </form>
</body>
</html>
