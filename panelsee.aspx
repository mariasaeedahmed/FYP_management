<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="panelsee.aspx.cs" Inherits="fyp.panelsee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 

    <style type="text/css">
        .auto-style2 {
            width: 294px;
            height: 234px;
        }
    </style>
 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
          


             <div class="col-md-8 mx-auto">
                <div class="card">
                      <div class="card-body">


                          <div class="row">
                              <div class="col">
                                  <center>
                                      <img src="icons/group.png" class="auto-style2" />
                                  </center>
                              </div>
                          </div>

                           <div class="row">
                              <div class="col">
                                  <center>
                                      <h4><b>Assigned FYPs Information </b></h4>
                                      
                                  </center>
                              </div>
                          </div>

                           <div class="row">
                              <div class="col">
                                  <hr>
                              </div>
                          </div>
                        <%--  idhar inn k apnay fyps ki info aaye gee,project table se aur missing form ka bhi pata chalay ga--%>
                           <div class="row">
                              <div class="col">
                                  <asp:GridView AlternatingRowStyle-CssClass="table table-striped table-bordered thead-dark" ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Width="929px">
<AlternatingRowStyle CssClass="table table-striped table-bordered thead-dark"></AlternatingRowStyle>
                                      <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                      <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                                      <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                                      <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                                      <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                                      <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                      <SortedAscendingHeaderStyle BackColor="#594B9C" />
                                      <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                      <SortedDescendingHeaderStyle BackColor="#33276A" />
                                  </asp:GridView>
                              </div>
                          </div>

                           <div class ="form-group">
                                       <center> <asp:Button  class="btn btn-info btn-block" ID="Button1" runat="server" Text="Fill Missing Evaluation Form" OnClick="Button1_Click"  /></center>

                                  </div>

                      </div>
                </div>
                
             </div>

                       


        </div>
    </div>


</asp:Content>
