<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="supcomment.aspx.cs" Inherits="fyp.supcomment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 285px;
            height: 231px;
        }
    </style>
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
                                  <center>
                                      <h4><b>Add Comment</b></h4>
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
                                  <label>For Group Number: </label>
                                  <div class ="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Project ID"></asp:TextBox>

                                  </div>

                                  <label>Your Supervisor ID: </label>
                                  <div class ="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Your ID"></asp:TextBox>

                                  </div>

                                       <label>Enter your Comment/Review:</label>
                                  <div class ="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Type here..." ></asp:TextBox>

                                  </div>

                                  <hr>

                                    <div class ="form-group">
                                       <center> <asp:Button  class="btn btn-info btn-block" ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" /></center>

                                  </div>


                              </div>
                          </div>


                      </div>
                </div>
                 <a href="supsee.aspx"><< Return to Supervisor Main Page</a><br>
             </div>

        </div>
    </div>

</asp:Content>
