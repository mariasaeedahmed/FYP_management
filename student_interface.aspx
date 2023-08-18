<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="student_interface.aspx.cs" Inherits="fyp.student_interface" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 270px;
            height: 226px;
        }
        .auto-style3 {
            width: 316px;
            height: 229px;
        }
        .auto-style4 {
            width: 331px;
            height: 236px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-4 mx-auto">
                <div class="card">
                      <div class="card-body">


                          <div class="row">
                              <div class="col">
                                  <center>
                                      <img src="icons/icon-student.jpg" class="auto-style2" />
                                  </center>
                              </div>
                          </div>

                           <div class="row">
                              <div class="col">
                                  <center>
                                      <h4><b>Your Profile</b></h4>
                                      <span>&nbsp;</span></center>
                              </div>
                          </div>

                           <div class="row">
                              <div class="col">
                                  <hr>
                              </div>
                          </div>

                           <div class="row">
                              <div class="col ">
                                  <div class ="form-group">

                                  </div>
                                  <div class ="form-group">
                                  <asp:GridView AlternatingRowStyle-CssClass="table table-striped table-bordered thead-dark" ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1820px">
<AlternatingRowStyle CssClass="table table-striped table-bordered thead-dark" BackColor="White"></AlternatingRowStyle>
                                      <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                      <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                      <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                      <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                      <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                      <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                      <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                      <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                      <SortedDescendingHeaderStyle BackColor="#820000" />
                                      </asp:GridView>

                                  </div>

                                  <div class ="form-group">
                                  
                                  </div>


                                  <hr>

                                

                              </div>
                          </div>


                      </div>
                </div>
                 <a href="Home.aspx"><< Return to Home Page</a><br>
             </div>


             <div class="col-md-4 mx-auto">
                <div class="card">
                      <div class="card-body">


                          <div class="row">
                              <div class="col">
                                  <center>
                                      <img src="icons/group.png" class="auto-style3" />
                                  </center>
                              </div>
                          </div>

                           <div class="row">
                              <div class="col">
                                  <center>
                                      <h4><b>Group Information </b></h4>
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
                                   <asp:GridView AlternatingRowStyle-CssClass="table table-striped table-bordered thead-dark" ID="GridView2" runat="server" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1794px">
<AlternatingRowStyle CssClass="table table-striped table-bordered thead-dark" BackColor="White"></AlternatingRowStyle>
                                       <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                       <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                       <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                       <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                       <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                       <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                       <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                       <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                       <SortedDescendingHeaderStyle BackColor="#820000" />
                                   </asp:GridView>
                              </div>
                          </div>


                      </div>
                </div>
                
             </div>

                         <div class="col-md-4 mx-auto">
                <div class="card">
                      <div class="card-body">


                          <div class="row">
                              <div class="col">
                                  <center>
                                      <img src="icons/tchr.png" class="auto-style4" />
                                     
                                  </center>
                              </div>
                          </div>

                           <div class="row">
                              <div class="col">
                                  <center>
                                      <h4><b>Group Information </b></h4>
                                      <span>Status: </span>
                                      <asp:Label class="badge badge-pill badge-info" ID="Label3" runat="server" Text="Pending"></asp:Label>
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
                                 
                           <asp:GridView AlternatingRowStyle-CssClass="table table-striped table-bordered thead-dark" ID="GridView3" runat="server" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1659px">
<AlternatingRowStyle CssClass="table table-striped table-bordered thead-dark" BackColor="White"></AlternatingRowStyle>
                               <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                               <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                               <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                               <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                               <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                               <SortedAscendingCellStyle BackColor="#FDF5AC" />
                               <SortedAscendingHeaderStyle BackColor="#4D0000" />
                               <SortedDescendingCellStyle BackColor="#FCF6C0" />
                               <SortedDescendingHeaderStyle BackColor="#820000" />
                                  </asp:GridView>

                                  <br />

                         <asp:GridView AlternatingRowStyle-CssClass="table table-striped table-bordered thead-dark" ID="GridView4" runat="server" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1658px">
<AlternatingRowStyle CssClass="table table-striped table-bordered thead-dark" BackColor="White"></AlternatingRowStyle>
                             <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                             <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                             <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                             <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                             <SortedAscendingCellStyle BackColor="#FDF5AC" />
                             <SortedAscendingHeaderStyle BackColor="#4D0000" />
                             <SortedDescendingCellStyle BackColor="#FCF6C0" />
                             <SortedDescendingHeaderStyle BackColor="#820000" />
                                  </asp:GridView>

                              </div>
                          </div>


                      </div>
                </div>
                
             </div>


        </div>
    </div>
</asp:Content>
