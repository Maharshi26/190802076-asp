﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true"
    CodeFile="ManageProduct.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="wrapper">
	<div class="form-w3layouts">
        <!-- page start-->
        <!-- page start-->
        <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Manage Products
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form role="form">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Category</label>
                                    <asp:DropDownList ID="DropDownList1" class="form-control" runat="server"></asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Name</label>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter name"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Description</label>
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" 
                                        placeholder="Enter description" Rows="5" TextMode="MultiLine"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Image</label>
                                    <asp:FileUpload ID="FileUpload1" class="form-control" runat="server"></asp:FileUpload>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Status</label>
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                        RepeatDirection="Horizontal">
                                        <asp:ListItem Value="1">Active</asp:ListItem>
                                        <asp:ListItem Value="0">Deactive</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                                <asp:Button ID="Button3" runat="server" Text="Submit" class="btn btn-info" 
                                    onclick="Button3_Click" Width="74px"></asp:Button>
                                <div class="checkbox">
                                    <label>
                                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                    </label>
                                </div>
                                <div class="checkbox">
                                    
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="20" ForeColor="#333333" GridLines="None" Width="536px">
                                        <AlternatingRowStyle BackColor="White" HorizontalAlign="Center" 
                                            VerticalAlign="Middle" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="Id">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("id") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Image">
                                                <ItemTemplate>
                                                    <asp:Image ID="Image1" runat="server" Height="100px" 
                                                        ImageUrl='<%# Eval("image","~/uploads/{0}") %>' Width="100px" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Name">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("name") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Description">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("description") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Category">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("category") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Status">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal6" runat="server" Text='<%# Eval("status") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Edit">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button5" runat="server" CommandArgument='<%# Eval("id") %>' 
                                                        onclick="Button5_Click" Text="Edit" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Delete">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button4" runat="server" CommandArgument='<%# Eval("id") %>' 
                                                        onclick="Button4_Click" Text="Delete" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <EditRowStyle BackColor="#7C6F57" />
                                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" 
                                            HorizontalAlign="Center" VerticalAlign="Middle" />
                                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#E3EAEB" HorizontalAlign="Center" VerticalAlign="Middle" />
                                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                                    </asp:GridView>
                                    
                                </div>
                            </form>
                            </div>

                        </div>
                    </section>

            </div>
        </div>
        <!-- page end-->
        </div>
</section>
</asp:Content>
