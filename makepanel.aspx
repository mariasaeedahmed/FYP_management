<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="makepanel.aspx.cs" Inherits="fyp.makepanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 mx-auto">
                <div class="card">
                      <div class="card-body">



                           <div class="row">
                              <div class="col">
                                  <center>
                                      <h4><b>Make Panel</b></h4>                       
                                  </center>
                              </div>
                          </div>

                           <div class="row">
                              <div class="col">
                                  <hr>
                              </div>
                          </div>

                           <div class="row">
                              <div class="col ">
                                  <label>Panel ID: </label>
                                  <div class ="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Panel ID" OnTextChanged="TextBox1_TextChanged" ></asp:TextBox>

                                  </div>

                                       <label>Member  Faculty ID:</label>
                                  <div class ="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Faculty ID" OnTextChanged="TextBox2_TextChanged" ></asp:TextBox>

                                  </div>

                                  <label>Form Filled:</label>
                                  <div class ="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="yes/no" OnTextChanged="TextBox3_TextChanged" ></asp:TextBox>

                                  </div>

                                  <label>Password:</label>
                                  <div class ="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Password" OnTextChanged="TextBox4_TextChanged" ></asp:TextBox>

                                  </div>


                                  <hr>

                                  

                                  <div class ="form-group">
                                       <center> <asp:Button  class="btn btn-info btn-block" ID="Button1" runat="server" Text="Assign" OnClick="Button1_Click" /></center>

                                  </div>

                              </div>
                          </div>


                      </div>
                </div>
                 <a href="Home.aspx"><< Return to Home Page</a><br>
             </div>


             <div class="col-md-7 mx-auto">
                <div class="card">
                      <div class="card-body">


                           <div class="row">
                              <div class="col">
                                  <center>
                                      <h4><b>Faculty Members Information </b></h4>
                                     
                                  </center>
                              </div>
                          </div>

                           <div class="row">
                              <div class="col">
                                  <hr>
                              </div>
                          </div>

                           <div class="row">
                              <div class="col">
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:GridView AlternatingRowStyle-CssClass="table table-striped table-bordered thead-dark" ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="560px">
<AlternatingRowStyle CssClass="table table-striped table-bordered thead-dark"></AlternatingRowStyle>
                                      <FooterStyle BackColor="White" ForeColor="#000066" />
                                      <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                      <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                      <RowStyle ForeColor="#000066" />
                                      <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                      <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                      <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                      <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                      <SortedDescendingHeaderStyle BackColor="#00547E" />
                                  </asp:GridView>
                              </div>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          </div>


                      </div>
                </div>
                
             </div>

                       


        </div>
    </div>
</asp:Content>
