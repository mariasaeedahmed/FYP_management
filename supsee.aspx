<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="supsee.aspx.cs" Inherits="fyp.supsee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 305px;
            height: 269px;
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
                        <%--  idhar inn k apnay fyps ki info aaye gee,project table se aur missing form ka bhi pata chalay ga plus grades --%>
                           <div class="row">
                              <div class="col">
                                  <asp:GridView AlternatingRowStyle-CssClass="table table-striped table-bordered thead-dark" ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="652px">
<AlternatingRowStyle CssClass="table table-striped table-bordered thead-dark"></AlternatingRowStyle>
                                      <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                      <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                      <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                      <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                      <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                      <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                      <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                      <SortedDescendingHeaderStyle BackColor="#242121" />
                                  </asp:GridView>
                              </div>
                          </div>

                           <div class ="form-group">
                                       <center> <asp:Button  class="btn btn-info btn-block" ID="Button1" runat="server" Text="Add Review" OnClick="Button1_Click"  /></center>

                                  </div>

                      </div>
                </div>
                
             </div>

                       


        </div>
    </div>
</asp:Content>
