<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="E_Library_Management.adminbookissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>                                 
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Book ID :</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="Book ID"></asp:TextBox> 
                                        <input class="btn btn-secondary" id="Button1" type="button" value="GO" />                                                                                                             
                                    </div>
                                </div>
                            </div>
                        </div>                     

                        <div class="row">
                            <div class="col-md-6">
                                <label>Member Name :</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Member Name" ReadOnly="True"></asp:TextBox>
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
                                    <input class="btn btn-primary btn-block btn-lg" id="Button2" type="button" value="Issue" />
                                </div>
                            </div>  

                            <div class="col-md-6">
                                <div class="form-group">
                                    <input class="btn btn-success btn-block btn-lg" id="Button3" type="button" value="Return" />
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
                           <div class="col">
                               <asp:GridView class="table table-dark table-hover" ID="GridView1" runat="server"></asp:GridView>
                               <%--<asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server"></asp:GridView>--%>
                           </div>
                       </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
         
    <br /><br /><br /><br /><br />
    </section>

</asp:Content>
