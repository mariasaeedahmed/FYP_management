<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="makepanelandsup.aspx.cs" Inherits="fyp.makepanelandsup" %>
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
                                      <h4><b>Assigning Supervisor and Panel to Project Group </b></h4>                       
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
                                  <label>Project Number: </label>
                                  <div class ="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Project Number"></asp:TextBox>

                                  </div>

                                       <label>Panel ID:</label>
                                  <div class ="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Panel ID" ></asp:TextBox>

                                  </div>

                                  <label>Supervisor ID: </label>
                                  <div class ="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Supervisor ID" ></asp:TextBox>

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
                                  <asp:GridView AlternatingRowStyle-CssClass="table table-striped table-bordered thead-dark" ID="GridView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Width="820px">
<AlternatingRowStyle CssClass="table table-striped table-bordered thead-dark"></AlternatingRowStyle>
                                      <FooterStyle BackColor="White" ForeColor="#333333" />
                                      <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                      <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                      <RowStyle BackColor="White" ForeColor="#333333" />
                                      <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                      <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                      <SortedAscendingHeaderStyle BackColor="#487575" />
                                      <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                      <SortedDescendingHeaderStyle BackColor="#275353" />
                                  </asp:GridView>
                              </div>
                          </div>


                      </div>
                </div>
                
             </div>

                       


        </div>
    </div>
</asp:Content>
