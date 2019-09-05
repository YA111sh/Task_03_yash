<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadImage03.aspx.cs" Inherits="ImageTask03.UploadImage03" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>
                     Product Name
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>

                </td>
                <tr>
                    <td>
                        Product Price
                    </td>
                    <td>
                        <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Upload Image
                    </td>
                    <td>
                        <asp:FileUpload ID="UploadImage" runat="server" />

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Btn" runat="server" Text="Upload&Save" OnClick="Btn_Click" />

                    </td>
                </tr>
               

                

           
        </table>
    </form>
</body>
</html>
