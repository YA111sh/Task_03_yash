<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataLIst.aspx.cs" Inherits="ImageTask03.DataLIst" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            

        </div>
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("ProductPrice") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img height="100px" width="100px" src="<%#"data:image/jpg;base64," +Convert.ToBase64String((byte[])Eval("UploadImage")) %>"
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ProductMaster]"></asp:SqlDataSource>
    </form>
</body>
</html>
