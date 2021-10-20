<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="E_Library_Management.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <br />
        <img src="imgs/in-homepage-banner.jpg" class="img-fluid"/>
    </section>
    <section style="background-color: #D6E4ED">
        <br />
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2> Easy 3 Step Process</h2>
                    </center>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img src="imgs/sign-up.png" width="200px"/>
                        <br /><br />
                        <h4>Sign Up</h4>
                        <%--<p class="text-justify"> - </p>--%>
                    </center>
                </div>
                <div class="col-md-4">  
                    <center>
                        <img src="imgs/book-online.png" width="200px"/>
                        <br /><br />
                        <h4>Search Books</h4>
                        <%--<p class="text-justify"> - </p>--%>
                    </center>
                </div><div class="col-md-4">
                    <center>
                        <img src="imgs/library.png" width="200px"/>
                        <br /><br />
                        <h4>Visit Us</h4>
                        <%--<p class="text-justify"> -  </p>--%>
                    </center>
                </div>
            </div>
            <hr />
        </div>
        <br />
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Features</h2>
                        <%--<p><b>Three Primary Features</b></p>--%>
                    </center>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img src="imgs/digital-inventory.png" width="150px"/>
                        <h4>Digital Book Inventory</h4>
                        <p class="text-justify">Library management system is a wireless system which helps in easy maintenance of the records.</p>
                    </center>
                </div>
                <div class="col-md-4">  
                    <center>
                        <img src="imgs/search-online.png" width="150px"/>
                        <h4>Search Books</h4>
                        <p class="text-justify">Search books from our vast inventory with our fast record tracking system.</p>
                    </center>
                </div><div class="col-md-4">
                    <center>
                        <img src="imgs/defaulters-list.png" width="150px"/>
                        <h4>Defaulters List</h4>
                        <p class="text-justify">Users who don't abide by the rules are added to Defaulters List.  </p>
                    </center>
                </div>
            </div>  
            <hr />
            <br />
        </div>
    </section>
</asp:Content>
