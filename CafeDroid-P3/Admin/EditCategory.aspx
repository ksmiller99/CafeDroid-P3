<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditCategory.aspx.cs" Inherits="CafeDroid_P3.Admin.EditCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Administration</h1>
    <hr />
    <h3>Add Category:</h3>
    <table>
       
        <tr>
            <td><asp:Label ID="LabelAddCategoryName" runat="server">Name:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddCategoryName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="* Category name required." ControlToValidate="AddCategoryName" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="LabelAddDescription" runat="server">Description:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddCategoryDescription" runat="server"></asp:TextBox>
            </td>
        </tr>
       
    </table>
    <p></p>
    <p></p>
    <asp:Button ID="AddCategoryButton" runat="server" Text="Add Category" OnClick="AddCategoryButton_Click"  CausesValidation="true"/>
    <asp:Label ID="LabelAddStatus" runat="server" Text=""></asp:Label>
    <p></p>
    <h3>Remove Category:</h3>
    <table>
        <tr>
            <td><asp:Label ID="LabelRemoveCateogry" runat="server">Category</asp:Label></td>
            <td><asp:DropDownList ID="DropDownRemoveCategory" runat="server" ItemType="CafeDroid_P3.Models.Category" 
                    SelectMethod="GetCategories" AppendDataBoundItems="true" 
                    DataTextField="CategoryName" DataValueField="CategoryID" >
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <p></p>
    <asp:Button ID="RemoveCategoryButton" runat="server" Text="Remove Category" OnClick="RemoveCategoryButton_Click" CausesValidation="false"/>
    <asp:Label ID="LabelRemoveStatus" runat="server" Text=""></asp:Label>
</asp:Content>