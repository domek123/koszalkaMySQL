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
            text-align: center;
        }
        .auto-style5 {
            text-align: left;
            height: 293px;
        }
        .auto-style7 {
            margin-bottom: 0px;
            position: relative;
            left: -1px;
            top: 0px;
        }
        .nowyStyl1 {
            top: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="All" class="auto-style5">
        <div class="auto-style4">
            <asp:Label ID="lTitle" runat="server" BackColor="#990033" Width="100%"></asp:Label>
        </div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id"
                                OnRowDeleting="GridView1_RowDeleting"
                                OnRowEditing="GridView1_RowEditing"
                                OnRowUpdating="GridView1_RowUpdating"
                                OnRowCancelingEdit="GridView1_RowCancelingEdit"
                                HeaderStyle-BackColor="Blue"
                                BackColor="Green"
                                Width="100%"
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
                                            <asp:TextBox ID="Pages" runat="server" Text='<%# Eval("Pages")%>'></asp:TextBox> 
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
            <div>
            <asp:Button ID="bAdd" runat="server" OnClick="bAdd_Click" Text="Add" Width="100px" />
                <asp:Label ID="Label1" runat="server" Height="19px" Text="Id" Width="110px"></asp:Label>
                <asp:Label ID="Label2" runat="server" Height="19px" Text="Authors" Width="110px"></asp:Label>
                <asp:Label ID="Label3" runat="server" Height="19px" Text="Title" Width="110px"></asp:Label>
                <asp:Label ID="Label4" runat="server" Height="19px" Text="ISBN" Width="110px"></asp:Label>
                <asp:Label ID="Label5" runat="server" Height="19px" Text="Format" Width="110px"></asp:Label>
                <asp:Label ID="Label6" runat="server" Height="19px" Text="Pages" Width="110px"></asp:Label>
            </div>
            <div>
                <div aria-multiline="True">
                        <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" Width="100px" />
                        <asp:TextBox ID="Id" runat="server" Width="100px"></asp:TextBox>
                        <asp:TextBox ID="Authors" runat="server" CssClass="auto-style7" Width="100px"></asp:TextBox>
                        <asp:TextBox ID="Title" runat="server" Width="100px"></asp:TextBox>
                        <asp:TextBox ID="ISBN" runat="server" Width="100px"></asp:TextBox>
                        <asp:TextBox ID="Format" runat="server" Width="100px"></asp:TextBox>
                        <asp:TextBox ID="Pages" runat="server" Width="100px"></asp:TextBox>
                        <br />
                        <asp:Button ID="btnShow" runat="server" OnClick="btnShow_Click" Text="Show All" Width="100px" />
                    </div>
            </div>
        </div>
    </form>
</body>
</html>
