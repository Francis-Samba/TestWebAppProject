<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="ElibraryManagement.adminbookinventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Details</h4>
                                    <center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100" src="imgs/books1.png" />
                                    <center>
                            </div>
                        </div>

                        <!-- <div class="row">
                 <div class="col">
                     <hr>
                 </div>
             </div> -->

                        <div class="row">
                            <div class="col">
                                <asp:FileUpload class="form-control" runat="server"></asp:FileUpload>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-md-3">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-9">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Book Name" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>


                        </div>


                        <%-- <div class="row">
                 <div class="col">
                     <hr>
                 </div>
             </div>--%>
                        <div class="row">

                            <div class="col-md-4">
                                <label>Language</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="English" Value="English" />
                                        <asp:ListItem Text="French" Value="French" />
                                        <asp:ListItem Text="Krio" Value="Krio" />
                                        <asp:ListItem Text="Hindii" Value="Hindii" />
                                        <asp:ListItem Text="Portugeese" Value="Portugeese" />
                                        <asp:ListItem Text="Spanish" Value="Spanish" />
                                    </asp:DropDownList>

                                </div>
                                <label>Publisher Name</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="Publisher 1" Value="Publisher 1" />
                                        <asp:ListItem Text="Publisher 2" Value="Publisher 2" />
                                        <asp:ListItem Text="Publisher 3" Value="Publisher 3" />
                                        <asp:ListItem Text="Publisher 4" Value="Publisher 4" />
                                        <asp:ListItem Text="Millie" Value="Millie" />
                                        <asp:ListItem Text="Tina" Value="Tina" />
                                        <asp:ListItem Text="Miatta" Value="Miatta" />
                                    </asp:DropDownList>

                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="A1" Value="a1" />
                                        <asp:ListItem Text="A2" Value="a2" />
                                        <asp:ListItem Text="A3" Value="a3" />
                                        <asp:ListItem Text="A4 Jr" Value="a4" />
                                        <asp:ListItem Text="A5" Value="a5" />
                                        <asp:ListItem Text="Michael" Value="Michael" />
                                    </asp:DropDownList>
                                </div>

                                <label>Publish Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Publish Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Genre</label>
                                <div class="form-group">
                                    <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                                        <asp:ListItem Text="Action" Value="Action" />
                                        <asp:ListItem Text="Adventure" Value="Adventure" />
                                        <asp:ListItem Text="Comic Book" Value="select" />
                                        <asp:ListItem Text="Self Help" Value="Self Help" />
                                        <asp:ListItem Text="Poems" Value="Poems" />
                                        <asp:ListItem Text="Buisness" Value="Buisness" />
                                        <asp:ListItem Text="Science" Value="Science" />
                                        <asp:ListItem Text="Engineering" Value="Engineering" />
                                        <asp:ListItem Text="Medicine" Value="Medicine" />
                                        <asp:ListItem Text="Art" Value="Art" />
                                        <asp:ListItem Text="Agriculture" Value="Agriculture" />
                                        <asp:ListItem Text="Geology" Value="Geology" />
                                        <asp:ListItem Text="Religion" Value="Religion" />
                                        <asp:ListItem Text="Politics" Value="Politics" />
                                    </asp:ListBox>
                                </div>
                            </div>


                        </div>

                        <%--   <div class="col-md-4">
                             <label>Email ID</label>
                             <div class="form-group">
                                 <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Email ID" TextMode="SingleLine" Enabled="False"></asp:TextBox>
                             </div>
                         </div>--%>


                        <div class="row">
                            <div class="col-md-4">
                                <label>Edition</label>
                                <div class="form-group">
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Edition" TextMode="SingleLine"></asp:TextBox>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-4">
                                <label>Book Cost (per unit)</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Book Cost (per unit)" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pages</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Pages" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Actual Stock</label>
                                <div class="form-group">
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Actual Stock" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-4">
                                <label>Current Stock</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Current Stock" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Issued Books</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Issued Books" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col">
                                <label>Book Description</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Book Description" TextMode="MultiLine" Rows="2" ReadOnly="True"></asp:TextBox>
                                </div>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-4">
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Add" />
                                </div>
                            </div>

                            <div class="col-4">
                                <div class="form-group">
                                    <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button2" runat="server" Text="Update" />
                                </div>
                            </div>

                            <div class="col-4">
                                <div class="form-group">
                                    <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button3" runat="server" Text="Delete" />
                                </div>
                            </div>
                        </div>
                    </div>

                </div>



                <a href="homepage.aspx" style="font-weight: 600;"><< Back to home</a><br />
                <br />
            </div>

            <div class="col-md-7">

                <div class="row">
                    <div class="col">
                        <center>
                            <h4>Book Inventory List</h4>
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
