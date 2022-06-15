<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SalesReport.aspx.cs" Inherits="OnlineShoppingWebsite.SalesReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
    <div class="navbar" style="border-width: 3px; border-color: #333333; height:460px">
    <table>
        <tr>
            <td>
                <h3>Sales Reoprt</h3> <br />
            </td>
        </tr>
        <tr>
            <td>

            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" PageSize="8" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="orderid" HeaderText="orderid" SortExpression="orderid" />
                        <asp:BoundField DataField="productname" HeaderText="productname" SortExpression="productname" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="orderdate" HeaderText="orderdate" SortExpression="orderdate" />
                        <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingDBConnectionString %>" SelectCommand="SELECT [orderid], [productname], [price], [quantity], [email], [orderdate], [status] FROM [OrderDetails]"></asp:SqlDataSource>
            </td>
        </tr>

    </table>
        </div>
        </center>

</asp:Content>
