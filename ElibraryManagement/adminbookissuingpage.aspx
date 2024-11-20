<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuingpage.aspx.cs" Inherits="ElibraryManagement.adminbookissuingpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="row">
                    <div class="col">
                        <center>
                            <h4>Book Issuing</h4>
                            <center>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <center>
                            <img width="100" src="imgs/books.png" />
                            <center>
                    </div>
                </div>

                <!-- <div class="row">
                       <div class="col">
                           <hr>
                       </div>
                   </div> -->

                <div class="row">

                    <div class="col-md-6">
                        <label>Member ID</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Member ID" TextMode="SingleLine"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <label>Book ID</label>
                        <div class="form-group">
                            <div class="input-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Book ID"></asp:TextBox>
                                <asp:Button class="btn btn-dark" ID="Button4" runat="server" Text="Go" />
                            </div>
                        </div>
                    </div>
                </div>


                <%-- <div class="row">
                       <div class="col">
                           <hr>
                       </div>
                   </div>--%>
                <div class="row">

                    <div class="col-md-6">
                        <label>Member Name</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Member Name" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <label>Book Name</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Book Name" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div>

                </div>

                <div class="row">

                    <div class="col-md-6">
                        <label>Start Date</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Start Date" TextMode="Date"></asp:TextBox>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <label>End Date</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="End Date" TextMode="Date"></asp:TextBox>
                        </div>
                    </div>

                </div>


                <div class="row">

                    <div class="col-6">

                        <asp:Button class="btn btn-block btn-lg btn-primary" ID="Button1" runat="server" Text="Issue" />

                    </div>

                    <div class="col-6">

                        <asp:Button class="btn btn-block btn-lg btn-success" ID="Button2" runat="server" Text="Return" />

                    </div>


                </div>

                <a href="homepage.aspx" style="font-weight: 600;"><< Back to home</a><br />
                <br />
            </div>

            <div class="col-md-7">

                <div class="row">
                    <div class="col">
                        <center>
                            <h4>Publisher List</h4>
                            <center>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <hr>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <asp:GridView class="tabe table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
