<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="E_Library_Management.adminauthormanagement" %>
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
                                    <img width="100px" src="imgs/writer.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Author Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                    <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <label>Author ID :</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>                                 
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input class="btn btn-secondary btn-block" id="Button1" type="button" value="GO" />                                                                     
                                </div>
                            </div>
                       </div>

                        <div class="row">
                            <div class="col-md-12">
                                <label>Author Name :</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <br />

                        <div class="row">

                            <div class="col-md-4">
                                <div class="form-group">
                                    <input class="btn btn-success btn-block btn-lg" id="Button2" type="button" value="Add" />
                                </div>
                            </div>  

                            <div class="col-md-4">
                                <div class="form-group">
                                    <input class="btn btn-primary btn-block btn-lg" id="Button3" type="button" value="Upadate" />
                                </div>
                            </div> 

                            <div class="col-md-4">
                                <div class="form-group">
                                    <input class="btn btn-danger btn-block btn-lg" id="Button4" type="button" value="Delete" />
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
                                    <h4>Author List</h4>
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
         
    <br />
    </section>

</asp:Content>
