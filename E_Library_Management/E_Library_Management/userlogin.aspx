<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="E_Library_Management.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--<section style="background-color: #D6E4ED ; background-image: url('imgs/bg_lib_1.jpg'); background-repeat: no-repeat; background-attachment: fixed ; background-size: 100% 100%;">--%>
    <section style="background-color: #D6E4ED ; background-image: url('imgs/bg_lib_2.jpg'); background-repeat: no-repeat; background-attachment: fixed ; background-size: 100% 100%;">
    
        <%--<section style="background-color: #D6E4ED ;">--%>
    <br /><br /><br />
    <div class="container">
        <div class="row">
            <div class="col-md-5 mx-auto">
                <div class="card" style="opacity:0.9 ;">
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="imgs/m_profile.jpeg" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member Login</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <%--<label>Member ID</label>--%>
                                    <asp:TextBox CssClass="form-control rounded-pill" ID="TextBox3" runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <%--<label>Password</label>--%>
                                    <asp:TextBox CssClass="form-control rounded-pill" ID="TextBox4" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg rounded-pill" ID="Button3" runat="server" Text="Login" OnClick="Button3_Click"/>
                                    <hr />
                                </div>

                                <%--<div class="row">
                                    <div class="col">
                                        <center>
                                            <hr />
                                        </center>
                                    </div>
                                </div>--%>

                                <div class="row">
                                    <div class="col">
                                        <center>
                                            <h6 style="color: grey">Don't have an Account ?</h6>
                                        </center>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <a href="usersignup.aspx">
                                        <input class="btn btn-primary btn-block btn-lg rounded-pill" id="Button2" type="button" value="Sign Up" />                                
                                    </a>
                                </div>

                            </div>  
                        </div>



                    </div>
                </div>
                <%--<center>
                    <a href="homepage.aspx"><< Back To Home</a>
                </center>--%>
            </div>

            <%--<div class="col-md-6 mx-right">
                <img class="ml-5" width="400px" height="400px" src ="imgs/lib_img.jpg"> </>                                                   
            </div>--%>
        </div>
    </div>
         
    <br /><br />
    </section>
</asp:Content>
