<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Database.aspx.cs" Inherits="Contact_Form.Database" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gv" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="Email" HeaderText="Email"/>
                    <asp:BoundField DataField="Subject" HeaderText="Subject"/>
                    <asp:BoundField DataField="FirstName" HeaderText="First Name"/>
                    <asp:BoundField DataField="LastName" HeaderText="Last Name"/>
                    <asp:BoundField DataField="Message" HeaderText="Message"/>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
