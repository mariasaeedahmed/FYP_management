<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="midder.aspx.cs" Inherits="fyp.midder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                      <div class="card-body">


                          <div class="row">
                              <div class="col">
                                  <center>
                                      <img src="icons/tchr.png" class="auto-style2" />
                                  </center>
                              </div>
                          </div>

                           <div class="row">
                              <div class="col">
                           

                                 

                                    <div class ="form-group">
                                       <center> <asp:Button  class="btn btn-info btn-block" ID="Button1" runat="server" Text="Panel Member Login" OnClick="Button1_Click" /></center>

                                  </div>
                                   <hr>
                                   <div class ="form-group">
                                       <center> <asp:Button  class="btn btn-info btn-block" ID="Button2" runat="server" Text="Supervisor Login" OnClick="Button2_Click" /></center>

                                  </div>
                              </div>
                          </div>


                      </div>
                </div>
                 <a href="Home.aspx"><< Return to Main Page</a><br>
             </div>

        </div>
    </div>
</asp:Content>
