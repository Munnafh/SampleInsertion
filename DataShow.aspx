<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataShow.aspx.cs" Inherits="DataShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <p>
        <br />
    </p>
    <form id="form1" runat="server">
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Registration_Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Registration_Id" HeaderText="Registration_Id" InsertVisible="False" ReadOnly="True" SortExpression="Registration_Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Phone_No" HeaderText="Phone_No" SortExpression="Phone_No" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="User_Name" HeaderText="User_Name" SortExpression="User_Name" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PracticeConnectionString %>" DeleteCommand="DELETE FROM [Registration] WHERE [Registration_Id] = @Registration_Id" InsertCommand="INSERT INTO [Registration] ([Name], [Phone_No], [Address], [User_Name], [Password]) VALUES (@Name, @Phone_No, @Address, @User_Name, @Password)" SelectCommand="SELECT * FROM [Registration]" UpdateCommand="UPDATE [Registration] SET [Name] = @Name, [Phone_No] = @Phone_No, [Address] = @Address, [User_Name] = @User_Name, [Password] = @Password WHERE [Registration_Id] = @Registration_Id">
                <DeleteParameters>
                    <asp:Parameter Name="Registration_Id" Type="Int64" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Phone_No" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="User_Name" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Phone_No" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="User_Name" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Registration_Id" Type="Int64" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    <div>
    
    </div>
    </form>
</body>
</html>
