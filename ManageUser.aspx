<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" EnableEventValidation="false" AutoEventWireup="true"
    CodeFile="ManageUser.aspx.cs"  Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="wrapper">
	<div class="form-w3layouts">
        <!-- page start-->
        <!-- page start-->
        <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Manage Users
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form role="form">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Fullname</label>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter fullname"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter email"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Password"></asp:TextBox>
                                </div>
                                <asp:Button ID="Button3" runat="server" Text="Update" class="btn btn-info" 
                                    onclick="Button3_Click"></asp:Button>
                                <div class="checkbox">
                                    <label>
                                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" 
                                        CellPadding="4" ForeColor="#333333" HorizontalAlign="Center" Width="535px">
                                        <AlternatingRowStyle BackColor="White" HorizontalAlign="Center" 
                                            VerticalAlign="Middle" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="Id">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("id") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Fullname">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("fullname") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Email">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("email") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Password">
                                                <ItemTemplate>
                                                    <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("password") %>'></asp:Literal>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Delete">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("id") %>' 
                                                        onclick="Button1_Click" Text="Delete" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Edit">
                                                <ItemTemplate>
                                                    <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("id") %>' 
                                                        onclick="Button2_Click" Text="Edit" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <EditRowStyle BackColor="#7C6F57" HorizontalAlign="Center" 
                                            VerticalAlign="Middle" />
                                        <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" 
                                            HorizontalAlign="Center" VerticalAlign="Middle" />
                                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#E3EAEB" BorderStyle="None" HorizontalAlign="Center" 
                                            VerticalAlign="Middle" />
                                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" 
                                            HorizontalAlign="Center" VerticalAlign="Middle" />
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
