﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Add_Product.aspx.cs" Inherits="OnlineShoppingWebsite.Add_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="navbar" style="border-width: 3px; border-color: #333333; height: auto">
        <table style="width: 700px; height: 390px; background-color: #5f98f3;" align="center">
            <%--Header Text--%>
            <tr>
                <td align="center" width="50%" colspan="2">
                    <h1>
                        Adding Product</h1>
                    <hr />
                </td>
                
            </tr>

            <%--Category DropDwonList with Required Feild Validation--%>
            <tr>
                <td align="center" width="50%">
                    <h3>
                        Category:</h3>
                </td>
                <td width="50%">
                    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" 
                        DataSourceID="SqlDataSource1" DataTextField="CategoryName" 
                        DataValueField="CategoryId" Height="33px" Width="165px">
                        <asp:ListItem>Select</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="DropDownList1" Display="Dynamic" 
                        ErrorMessage="Category is Mandatory" ForeColor="Red" InitialValue="Select">*</asp:RequiredFieldValidator>
                </td>
            </tr>

            <%--Product Name with Required Feild Validation--%>
            <tr>
                <td align="center" width="50%">
                    <h3>
                        Product Name:</h3>
                </td>
                <td width="50%">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtName" Display="Dynamic" 
                        ErrorMessage="Product Name is Mandatory" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>

            <%--Product Desc with Required Feild Validation--%>
            <tr>
                <td align="center" width="50%">
                <h3>Product Desc:</h3>
                </td>
                <td width="50%">
                <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtDesc" Display="Dynamic" 
                        ErrorMessage="Product Desc is Mandatory" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>

            <%--Product Image Upload with Required Feild Validation--%>
            <tr>
                <td align="center" width="50%">
                <h3>Image:</h3>
                </td>
                <td width="50%">
                    <asp:FileUpload ID="imageUpload" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="imageUpload" Display="Dynamic" 
                        ErrorMessage="Image is Mandatory" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>

            <%--Product Price with Required Feild Validation--%>
            <tr>
                <td align="center" width="50%">
                <h3>
                        Product Price(₹):</h3>
                </td>
                <td width="50%">
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtPrice" Display="Dynamic" 
                        ErrorMessage="Price is Mandatory" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtPrice" Display="Dynamic" ErrorMessage="Price is Invalid" 
                        ForeColor="Red" ValidationExpression="[0-9]*">*</asp:RegularExpressionValidator>
                </td>
            </tr>

            <%--Product Quantity with Required Feild & Regular Expression Validation--%>
            <tr>
                <td align="center" width="50%">
                <h3>
                        Product Quantity:</h3>
                </td>
                <td width="50%">
                <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtQuantity" Display="Dynamic" 
                        ErrorMessage="Quantity is Mandatory" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtQuantity" Display="Dynamic" 
                        ErrorMessage="Quantity is Invalid" ForeColor="Red" 
                        ValidationExpression="[0-9]*">*</asp:RegularExpressionValidator>
                </td>
            </tr>

            <%--Button to Add Product Details--%>
            <tr>
                <td align="center" width="50%" colspan="2">
                    <asp:Button ID="btnSubmit" runat="server" Text="Add" Font-Bold="True" 
                        ForeColor="Black" Height="36px" Width="88px" onclick="btnSubmit_Click" />
                </td>
                
            </tr>

            <%--Label to Display message Product added or not--%>
            <tr>
                <td align="center" width="50%" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
                
            </tr>

            <%--Validation Summary to Display All Error msg--%>
            <tr>
                <td colspan="2" align="center">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" 
            HeaderText="Fix the following Error" />
                </td>
            </tr>
        </table>
        <br />
    </div>
   
    <%--DataSource to Populate DropDownlist of Product--%>
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ShoppingDBConnectionString2 %>" 
            SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
    </div>

</asp:Content>
