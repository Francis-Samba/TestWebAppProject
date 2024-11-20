<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminaunthormanagement.aspx.cs" Inherits="ElibraryManagement.adminaunthormanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></head>").append($(this).find("tr.first"))).datatable
        }
        
        )
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Author Details</h4>
                                    <center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100" src="imgs/writer.png" />
                                    <center>
                            </div>
                        </div>
                        <br />

                        <!-- <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div> -->

                        <div class="row">
                            <div class="col-md-4">
                                <label>Author ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="ID"></asp:TextBox>
                                     <asp:Button class="btn btn-info" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                                     </div>   
                                </div>
                            </div>
                            <div class="col-md-8">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Author Name" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                       <%-- <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>--%>



                        <div class="row">
                            <div class="col-4">
                               
                                    <asp:Button class="btn btn-block btn-lg btn-success" ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
                               
                            </div>

                            <div class="col-4">
                               
                                    <asp:Button class="btn btn-block btn-lg btn-primary" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                         
                            </div>

                            <div class="col-4">
                               
                                    <asp:Button class="btn btn-block btn-lg btn-danger" ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" />
                            
                            </div>
                        </div>
                    </div>

                </div>

                <a href="homepage.aspx" style="font-weight: 600;"><< Back to home</a><br />
                <br />
            </div>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">
                    
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Author List</h4>                                  
                                    <center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <div class="table-responsive">
                                <asp:GridView class="tabe table-striped table-bordered" ID="GridView1" runat="server" Width="90%" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource2">
                                    <Columns>
                                        <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                    </Columns>
                                </asp:GridView> 
                                    </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
