<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="createfaculty.aspx.cs" Inherits="fyp.createfaculty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 257px;
            height: 212px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                      <div class="card-body">


                          <div class="row">
                              <div class="col">
                                  <center>
                                      <img src="icons/cmt.png" class="auto-style5" />
                                  </center>
                              </div>
                          </div>

                           <div class="row">
                              <div class="col">
                                  <center>
                                      <h4><b>Add Faculty Member</b></h4>
                                      <%--<span>Status: </span>
                                      <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Pending"></asp:Label>
                                          --%>
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
                                  <label>Faculty ID: </label>
                                  <div class ="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID" ></asp:TextBox>

                                  </div>

                                       Faculty Name<label>:</label>
                                  <div class ="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Name" ></asp:TextBox>

                                  </div>

                                  <label>Password: </label>
                                  <div class ="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Password"></asp:TextBox>

                                  </div>

                                  <hr>
                                    <div class ="form-group">
                                       <center> <asp:Button  class="btn btn-info btn-block" ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" /></center>

                                  </div>
                              </div>
                          </div>


                      </div>
                </div>
                 <a href="Home.aspx"><< Return to Home Page</a><br>
             </div>

                       


        </div>
    </div>

</asp:Content>
