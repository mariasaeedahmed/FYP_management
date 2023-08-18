﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="committee_login.aspx.cs" Inherits="fyp.committee_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 392px;
            height: 351px;
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
                                      <img src="icons/cmt.png" class="auto-style2" />
                                  </center>
                              </div>
                          </div>

                           <div class="row">
                              <div class="col">
                                  <center>
                                      <h4><b>Committee Login</b></h4>
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
                                  <label>Enter your Unique ID: </label>
                                  <div class ="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>

                                  </div>

                                       <label>Enter your Password:</label>
                                  <div class ="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>

                                  </div>

                                  <hr>

                                    <div class ="form-group">
                                       <center> <asp:Button  class="btn btn-info btn-block" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" /></center>

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