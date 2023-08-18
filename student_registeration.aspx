<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="student_registeration.aspx.cs" Inherits="fyp.student_registeration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 312px;
            height: 221px;
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
                                      <img src="icons/icon-student.jpg" class="auto-style2" />
                                  </center>
                              </div>
                          </div>

                           <div class="row">
                              <div class="col">
                                  <center>
                                      <h4><b>Student Registration</b></h4>
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
                                  <label>Roll number: </label>
                                  <div class ="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Roll Number"></asp:TextBox>

                                  </div>

                                       <label>Password:</label>
                                  <div class ="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>

                                  </div>

                                  <label>Student Name: </label>
                                  <div class ="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Name"></asp:TextBox>

                                  </div>

                                  <label>Project Number: </label>
                                  <div class ="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Project Number"></asp:TextBox>

                                  </div>

                                  <label>Semester number: </label>
                                  <div class ="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Semester Number"></asp:TextBox>


                                  </div>


                                  <hr>

                                    <div class ="form-group">
                                       <center> <asp:Button  class="btn btn-info btn-block" ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" /></center>

                                  </div>
                                     


                              </div>
                          </div>


                      </div>
                </div>
                 <a href="userlogin.aspx"><< Return to Student Login Page</a><br>
             </div>

        </div>
    </div>

</asp:Content>


