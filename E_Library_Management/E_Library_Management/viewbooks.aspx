<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewbooks.aspx.cs" Inherits="E_Library_Management.viewbooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        
                        <%--<div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/list.png" />
                                </center>
                            </div>
                        </div>--%>

                        <%--<div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Inventory List</h4>
                                </center>
                            </div>
                        </div>--%>

                        <%--<div class="row">
                            <div class="col">
                                    <hr />
                            </div>
                        </div>--%>
                        <br /><br />
                       <div class="row">

                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>

                           <div class="col">
                               <asp:GridView class="table table-hover table-borderless " ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                                   <Columns>
                                       <%--<asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id" >
                                       
                                       <ItemStyle Font-Bold="True" />
                                       </asp:BoundField>--%>
                                       
                                       <asp:TemplateField HeaderText="BOOK INVENTORY" HeaderStyle-CssClass="text-center">
                                           <ItemTemplate>
                                               <div class="container-fluid">
                                                   <div class="row">

                                                       <div class="col-lg-2">
                                                           <asp:Image ID="Image1" class="img-fluid p-2" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                           
                                                       </div>

                                                       <div class="col-lg-10">
                                                           <div class="row">
                                                               <div class="col-lg-12">
                                                                   <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                                                               </div>
                                                           </div>

                                                           <div class="row">
                                                               <div class="col-lg-12">
                                                               
                                                                   <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="#666666" Text='<%# Eval("book_description") %>'></asp:Label>
                                                                    <br /><br />
                                                               </div>
                                                           </div>

                                                           <div class="row">
                                                               <div class="col-lg-12">
                                                               
                                                                   Author -
                                                                   <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                                   &nbsp;| Publisher -
                                                                   <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                   &nbsp;| Language -
                                                                   <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>
                                                               
                                                               </div>
                                                           </div>

                                                           <div class="row">
                                                               <div class="col-lg-12">
                                                               
                                                                   Genre -
                                                                   <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                   &nbsp;| Publish Date -
                                                                   <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                                   &nbsp;| Edition -                                                                   
                                                                   <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>

                                                                   <br /><br />
                                                               </div>
                                                           </div>

                                                           <div class="row">
                                                               <div class="col-lg-12">
                                                               
                                                                   <b>₹</b>
                                                                   <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                                   &nbsp;| Actual Stock -
                                                                   <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                                   &nbsp;| Available -&nbsp;<asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>
                                                                   &nbsp;| Pages -
                                                                   <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>

                                                               </div>
                                                           </div>
                                                           
                                                       </div>

                                                       <%--<div class="col-lg-2">
                                                           <asp:Image ID="Image1" class="img-fluid p-2" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                           <hr />
                                                       </div>--%>
                                                   </div> <hr />
                                               </div>
                                           </ItemTemplate>
                                           <HeaderStyle Font-Names="Arial" HorizontalAlign="Center" Wrap="True" />
                                       </asp:TemplateField>
                                   </Columns>
                                   <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                   <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                   <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                   <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                   <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                   <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                   <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                   <SortedDescendingHeaderStyle BackColor="#242121" />
                               </asp:GridView>
                               <%--<asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server"></asp:GridView>--%>
                           </div>
                       </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
