<%@ Page Title="Fruits" Language="C#" 
    MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="Fruits.aspx.cs" Inherits="WebFormsExample.Fruits" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h4>All fruits</h4>
    <ul>
        <asp:ListView runat="server" ID="FruitsLV" SelectMethod="FruitsLV_GetData">
            <ItemTemplate>
                <li>
                    <%# Eval("Title") %>
                    <%# Eval("Price") %> AZN

                    <asp:LinkButton ID="deleteFruit" 
                        OnClick="deleteFruit_Click" 
                        CommandArgument ='<%# Eval("Id") %>'
                        runat="server">delete
                    </asp:LinkButton>
                </li>
            </ItemTemplate>
        </asp:ListView>
    </ul>

    <br />

    <h4>New fruit</h4>
    <asp:FormView runat="server" ID="fruitForm"
        SelectMethod="fruitForm_GetItem"
        InsertMethod="fruitForm_InsertItem"
        DefaultMode="Insert">
        <InsertItemTemplate>
            <label>Title:</label>
            <asp:TextBox ID="Title" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
            <br />
            <label>Price:</label>
            <asp:TextBox ID="Price" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
            <br />
            <asp:Button ID="InsertButton" Text="Insert" CommandName="Insert" runat="server" />
        </InsertItemTemplate>
    </asp:FormView>

</asp:Content>
