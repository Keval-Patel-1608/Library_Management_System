<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="E_Library_Management.adminbookissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section style="background-color: #D6E4ED">
    <br /><br /><br />
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/book_icon.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Issuing</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                    <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Member ID :</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Member ID"></asp:TextBox>                                 
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Book ID :</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Book ID"></asp:TextBox> 
                                        <asp:LinkButton class="btn btn-secondary ml-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" >GO</asp:LinkButton>                                                                                        
                                    </div>
                                </div>
                            </div>
                        </div>                     

                        <div class="row">
                            <div class="col-md-6">
                                <label>Member Name :</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="Member Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Book Name :</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Book Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Start Date :</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox5" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>End Date :</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <br />

                        <div class="row">

                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:LinkButton class="btn btn-primary btn-block btn-lg" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >Issue</asp:LinkButton>
                                </div>
                            </div>  

                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:LinkButton class="btn btn-success btn-block btn-lg" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" >Return</asp:LinkButton>
                                </div>
                            </div> 

                        </div>

                    </div>
                </div>
                <br /><br />
                <%--<center>
                    <a href="homepage.aspx"><< Back To Home</a>
                </center>--%>
            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/list.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Issued Book List</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                    <hr />
                            </div>
                        </div>

                       <div class="row">
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" SelectCommand="SELECT * FROM [book_issue_table]"></asp:SqlDataSource>
                           <div class="col">
                               <asp:GridView class="table table-hover" ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                                   <AlternatingRowStyle BackColor="#CCCCCC" />
                                   <Columns>
                                       <asp:BoundField DataField="member_id" HeaderText="Member ID" SortExpression="member_id" />
                                       <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
                                       <asp:BoundField DataField="book_id" HeaderText="Book ID" SortExpression="book_id" />
                                       <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                                       <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date" />
                                       <asp:BoundField DataField="due_date" HeaderText="Due Date" SortExpression="due_date" />
                                   </Columns>
                                   <FooterStyle BackColor="#CCCCCC" />
                                   <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                   <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                   <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                   <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                   <SortedAscendingHeaderStyle BackColor="#808080" />
                                   <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                   <SortedDescendingHeaderStyle BackColor="#383838" />
                               </asp:GridView>
                               <%--<asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server"></asp:GridView>--%>
                           </div>
                       </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
         
    
    </section>

</asp:Content>
