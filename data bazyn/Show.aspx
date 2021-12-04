<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Show.aspx.cs" Inherits="data_bazyn.Show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 22px;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            text-align: left;
            height: 283px;
        }
        .auto-style6 {
            width: 65px;
        }
        .auto-style7 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="All" class="auto-style5">
        <div class="auto-style4">
            <asp:Label ID="lTitle" runat="server"></asp:Label>
        </div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id"
                                OnRowDeleting="GridView1_RowDeleting"
                                OnRowEditing="GridView1_RowEditing"
                                OnRowUpdating="GridView1_RowUpdating"
                                OnRowCancelingEdit="GridView1_RowCancelingEdit"
                                >
                                <Columns>
                                    <asp:TemplateField HeaderText="Id">
                                        <ItemTemplate>
                                            <asp:Label runat="server" Text='<%# Eval("Id") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                
                                    <asp:TemplateField HeaderText="Authors">
                                        <ItemTemplate>
                                            <asp:Label runat="server" Text='<%# Eval("Authors")%>' />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="Authors" runat="server" Text='<%# Eval("Authors")%>'  ></asp:TextBox> 
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Title">
                                        <ItemTemplate>
                                            <asp:Label runat="server" Text='<%# Eval("Title")%>' />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="Title" runat="server" Text='<%# Eval("Title")%>'  ></asp:TextBox> 
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                      <asp:TemplateField HeaderText="Release_date">
                                        <ItemTemplate>
                                            <asp:Label runat="server" Text='<%# Eval("Release_date")%>' />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="Release_date" runat="server" Text='<%# Eval("Release_date")%>'  ></asp:TextBox> 
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="ISBN">
                                        <ItemTemplate>
                                            <asp:Label runat="server" Text='<%# Eval("ISBN")%>' />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="ISBN" runat="server" Text='<%# Eval("ISBN")%>' ></asp:TextBox> 
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Format">
                                        <ItemTemplate>
                                            <asp:Label runat="server" Text='<%# Eval("Format")%>'/>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="Format" runat="server" Text='<%# Eval("Format")%>'></asp:TextBox> 
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Pages">
                                        <ItemTemplate>
                                            <asp:Label runat="server" Text='<%# Eval("Pages")%>' />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="Pages" runat="server" Text='<%# Eval("Pages")%>' ></asp:TextBox> 
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Descrition">
                                        <ItemTemplate>
                                            <asp:Label runat="server" Text='<%# Eval("Description")%>' />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:TextBox ID="Description" runat="server" Text='<%# Eval("Description")%>'  ></asp:TextBox> 
                                        </EditItemTemplate>
                                    </asp:TemplateField>

                                    <asp:ButtonField buttontype="Button" runat="server" CommandName="Delete" HeaderText="Delete" Text="Delete"/>
                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:Button runat="server" CommandName="Edit" ToolTip="Edit" Text="Edit"/>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:Button runat="server" CommandName="Update" ToolTip="Update" Text="Save"/>
                                            <asp:Button runat="server" CommandName="Cancel" ToolTip="Cancel" Text="Cancel"/>
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                    </td>
                </tr>
            </table>
            <asp:Button ID="bAdd" runat="server" OnClick="bAdd_Click" Text="Add" />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Search by Title"></asp:Label>
                        <asp:TextBox ID="tbSearch" runat="server" CssClass="auto-style7"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
