﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="ElibraryManagement.usersignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100" src="imgs/generaluser.png" />
                                    <center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member Sig Up</h4>
                                    <center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Date Of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact No.</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                                </div>

                            </div>
                            <div class="col-md-6">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="Hill Station" Value="Hill Station" />
                                        <asp:ListItem Text="Lumely" Value="Lumely" />
                                        <asp:ListItem Text="Wilberforce" Value="Wilberforce" />
                                        <asp:ListItem Text="Imatt" Value="Imatt" />
                                        <asp:ListItem Text="Regent" Value="Regent" />
                                        <asp:ListItem Text="Brookfields" Value="Brookfields" />
                                        <asp:ListItem Text="Wellington" Value="Wellington" />
                                        <asp:ListItem Text="Calbatown" Value="Calbatown" />
                                        <asp:ListItem Text="Grafton" Value="Grafton" />
                                        <asp:ListItem Text="Hastings" Value="Hastings" />
                                        <asp:ListItem Text="Waterloo" Value="Waterloo" />
                                        <asp:ListItem Text="York" Value="York" />
                                        <asp:ListItem Text="Masiaka" Value="Masiaka" />
                                        <asp:ListItem Text="Mile 91" Value="Mile 91" />
                                        <asp:ListItem Text="Ogoo Farm" Value="Ogoo Farm" />
                                        <asp:ListItem Text="Adonkia" Value="Adonkia" />
                                    </asp:DropDownList>
                                </div>

                            </div>
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="City" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pin-Code</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Pin Code" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>

                            </div>
                        </div>

                         <div class="row">
     <div class="col">
         <center>
         <span class="badge badge-pill badge-info">Login Credentials</span>
             </center>
     </div>
 </div>


                        <div class="row">
                            <div class="col-md-6">
                                
                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>

                            </div>
                            <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click1" />
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <a href="homepage.aspx" style="font-weight: 600;"><< Back to home</a><br />
                <br />
            </div>
        </div>
    </div>
</asp:Content>
