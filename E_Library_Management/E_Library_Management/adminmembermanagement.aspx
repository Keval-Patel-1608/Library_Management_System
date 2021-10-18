<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="E_Library_Management.adminusermanagement" %>
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
                                    <img width="100px" src="imgs/profile.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                    <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label>Member ID :</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:LinkButton ID="LinkButton4" class="btn btn-primary ml-1" runat="server"><i class="fas fa-search "></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-md-4">
                                <label>Full Name :</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Name" ViewStateMode="Inherit" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-5">
                                <label>Account Status :</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Status" ReadOnly="True"></asp:TextBox>
                                        <asp:LinkButton ID="LinkButton1" class="btn btn-success ml-1" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        <asp:LinkButton ID="LinkButton2" class="btn btn-warning ml-1" runat="server"><i class="fas fa-pause-circle"></i></asp:LinkButton>
                                        <asp:LinkButton ID="LinkButton3" class="btn btn-danger ml-1" runat="server"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>

                            
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Date Of Birth :</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Date" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Contact Number :</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact Number" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            
                            <div class="col-md-4">
                                <label>Email ID :</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-md-4">
                                <label>State :</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="State" ReadOnly="True"></asp:TextBox>                                    
                                </div>
                            </div>
                            
                            <div class="col-md-4">
                                <label>City :</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="City" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Pin Code :</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="Pin Code" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Full Address :</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                
                                <div class="form-group">
                                        <asp:Button class="btn btn-danger btn-block btn-lg" id="Button2" runat="server" Text="Delete User Permantly" />
                                </div>

                            </div>  
                        </div>

                    </div>
                </div>
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
                                    <h4>Members List</h4>
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
         
    <br /><br /><br /><br /><br /><br /><br />
    </section>

</asp:Content>
