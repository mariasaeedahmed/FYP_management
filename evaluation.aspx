<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="evaluation.aspx.cs" Inherits="fyp.evaluation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="container-fluid">
        <div class="row">
          


             <div class="col-md-12 mx-auto">
                <div class="card">
                      <div class="card-body">


                           <div class="row">
                              <div class="col">
                                  <center>
                                      <h4><b>Evaluation Form </b></h4>
                                      
                                  </center>
                              </div>
                          </div>

                           <div class="row">
                              <div class="col ">
                                  <label>For Group Number: </label>
                                  <div class ="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Group Number"></asp:TextBox>

                                  </div>

                           <div class="row">
                              <div class="col">
                                  <hr>
                              </div>
                          </div>
                       
                           <div class="row">
                              <div class="col">
                                  <label>FYP Poster: </label>
                                  <center>
                                  <asp:RadioButtonList RepeatDirection="Horizontal" ID="RadioButtonList1" runat="server" Width="835px" DataTextField="n1">
                                  <asp:ListItem>0</asp:ListItem>
                                      <asp:ListItem>1</asp:ListItem>
                                      <asp:ListItem>2</asp:ListItem>
                                      <asp:ListItem>3</asp:ListItem>
                                      <asp:ListItem>4</asp:ListItem>
                                      <asp:ListItem>5</asp:ListItem>
                                      <asp:ListItem>6</asp:ListItem>
                                      <asp:ListItem>7</asp:ListItem>
                                      <asp:ListItem>8</asp:ListItem>
                                      <asp:ListItem>9</asp:ListItem>
                                      <asp:ListItem>10</asp:ListItem>
                                  </asp:RadioButtonList>

                                </center>
                              </div>
                          </div>
                                  <hr>

                                  <div class="row">
                              <div class="col">
                                  <label>Iteration Definition, FYP Plan, Work Breakdown: </label>
                                  <center>
                                  <asp:RadioButtonList RepeatDirection="Horizontal" ID="RadioButtonList2" runat="server" Width="835px" DataTextField="n2">
                                  <asp:ListItem>0</asp:ListItem>
                                      <asp:ListItem>1</asp:ListItem>
                                      <asp:ListItem>2</asp:ListItem>
                                      <asp:ListItem>3</asp:ListItem>
                                      <asp:ListItem>4</asp:ListItem>
                                      <asp:ListItem>5</asp:ListItem>
                                      <asp:ListItem>6</asp:ListItem>
                                      <asp:ListItem>7</asp:ListItem>
                                      <asp:ListItem>8</asp:ListItem>
                                      <asp:ListItem>9</asp:ListItem>
                                      <asp:ListItem>10</asp:ListItem>
                                  </asp:RadioButtonList>

                                </center>
                              </div>
                          </div>
                                  <hr>

                                  <div class="row">
                              <div class="col">
                                  <label>Work completed for the iteration(s) including design & implementation: </label>
                                  <center>
                                  <asp:RadioButtonList RepeatDirection="Horizontal" ID="RadioButtonList3" runat="server" Width="835px" DataTextField="n3">
                                  <asp:ListItem>0</asp:ListItem>
                                      <asp:ListItem>1</asp:ListItem>
                                      <asp:ListItem>2</asp:ListItem>
                                      <asp:ListItem>3</asp:ListItem>
                                      <asp:ListItem>4</asp:ListItem>
                                      <asp:ListItem>5</asp:ListItem>
                                      <asp:ListItem>6</asp:ListItem>
                                      <asp:ListItem>7</asp:ListItem>
                                      <asp:ListItem>8</asp:ListItem>
                                      <asp:ListItem>9</asp:ListItem>
                                      <asp:ListItem>10</asp:ListItem>
                                  </asp:RadioButtonList>

                                </center>
                              </div>
                          </div>
                                  <hr>

                                  <div class="row">
                              <div class="col">
                                  <label>Slide Design and Content Quality: </label>
                                  <center>
                                  <asp:RadioButtonList RepeatDirection="Horizontal" ID="RadioButtonList4" runat="server" Width="835px" DataTextField="n4">
                                  <asp:ListItem>0</asp:ListItem>
                                      <asp:ListItem>1</asp:ListItem>
                                      <asp:ListItem>2</asp:ListItem>
                                      <asp:ListItem>3</asp:ListItem>
                                      <asp:ListItem>4</asp:ListItem>
                                      <asp:ListItem>5</asp:ListItem>
                                      <asp:ListItem>6</asp:ListItem>
                                      <asp:ListItem>7</asp:ListItem>
                                      <asp:ListItem>8</asp:ListItem>
                                      <asp:ListItem>9</asp:ListItem>
                                      <asp:ListItem>10</asp:ListItem>
                                  </asp:RadioButtonList>

                                </center>
                              </div>
                          </div>
                                  <hr>

                                  <div class="row">
                              <div class="col">
                                  <label>Style (Delivery, Confidence, Clarity): </label>
                                  <center>
                                  <asp:RadioButtonList RepeatDirection="Horizontal" ID="RadioButtonList5" runat="server" Width="835px" DataTextField="n5">
                                  <asp:ListItem>0</asp:ListItem>
                                      <asp:ListItem>1</asp:ListItem>
                                      <asp:ListItem>2</asp:ListItem>
                                      <asp:ListItem>3</asp:ListItem>
                                      <asp:ListItem>4</asp:ListItem>
                                      <asp:ListItem>5</asp:ListItem>
                                      <asp:ListItem>6</asp:ListItem>
                                      <asp:ListItem>7</asp:ListItem>
                                      <asp:ListItem>8</asp:ListItem>
                                      <asp:ListItem>9</asp:ListItem>
                                      <asp:ListItem>10</asp:ListItem>
                                  </asp:RadioButtonList>

                                </center>
                              </div>
                          </div>
                                  <hr>

                                  <div class="row">
                              <div class="col">
                                  <label>Clarity of Project Scope: </label>
                                  <center>
                                  <asp:RadioButtonList RepeatDirection="Horizontal" ID="RadioButtonList6" runat="server" Width="835px" DataTextField="n6">
                                  <asp:ListItem>0</asp:ListItem>
                                      <asp:ListItem>1</asp:ListItem>
                                      <asp:ListItem>2</asp:ListItem>
                                      <asp:ListItem>3</asp:ListItem>
                                      <asp:ListItem>4</asp:ListItem>
                                      <asp:ListItem>5</asp:ListItem>
                                      <asp:ListItem>6</asp:ListItem>
                                      <asp:ListItem>7</asp:ListItem>
                                      <asp:ListItem>8</asp:ListItem>
                                      <asp:ListItem>9</asp:ListItem>
                                      <asp:ListItem>10</asp:ListItem>
                                  </asp:RadioButtonList>

                                </center>
                              </div>
                          </div>
                                  <hr>

                                  <div class="row">
                              <div class="col">
                                  <label>Definition of Project Features: </label>
                                  <center>
                                  <asp:RadioButtonList RepeatDirection="Horizontal" ID="RadioButtonList7" runat="server" Width="835px" DataTextField="n7">
                                  <asp:ListItem>0</asp:ListItem>
                                      <asp:ListItem>1</asp:ListItem>
                                      <asp:ListItem>2</asp:ListItem>
                                      <asp:ListItem>3</asp:ListItem>
                                      <asp:ListItem>4</asp:ListItem>
                                      <asp:ListItem>5</asp:ListItem>
                                      <asp:ListItem>6</asp:ListItem>
                                      <asp:ListItem>7</asp:ListItem>
                                      <asp:ListItem>8</asp:ListItem>
                                      <asp:ListItem>9</asp:ListItem>
                                      <asp:ListItem>10</asp:ListItem>
                                  </asp:RadioButtonList>

                                </center>
                              </div>
                          </div>
                                  <hr >
                                  <div class="row">
                              <div class="col">
                                  <label>Team Dynamics (Coordination among team members): </label>
                                  <center>
                                  <asp:RadioButtonList RepeatDirection="Horizontal" ID="RadioButtonList8" runat="server" Width="835px" DataTextField="n8">
                                  <asp:ListItem>0</asp:ListItem>
                                      <asp:ListItem>1</asp:ListItem>
                                      <asp:ListItem>2</asp:ListItem>
                                      <asp:ListItem>3</asp:ListItem>
                                      <asp:ListItem>4</asp:ListItem>
                                      <asp:ListItem>5</asp:ListItem>
                                      <asp:ListItem>6</asp:ListItem>
                                      <asp:ListItem>7</asp:ListItem>
                                      <asp:ListItem>8</asp:ListItem>
                                      <asp:ListItem>9</asp:ListItem>
                                      <asp:ListItem>10</asp:ListItem>
                                  </asp:RadioButtonList>

                                </center>
                              </div>
                          </div>
                                  <hr>

                                  <div class="row">
                              <div class="col">
                                  <label>Timing of Presentation: </label>
                                  <center>
                                  <asp:RadioButtonList RepeatDirection="Horizontal" ID="RadioButtonList9" runat="server" Width="835px" DataTextField="n9">
                                  <asp:ListItem>0</asp:ListItem>
                                      <asp:ListItem>1</asp:ListItem>
                                      <asp:ListItem>2</asp:ListItem>
                                      <asp:ListItem>3</asp:ListItem>
                                      <asp:ListItem>4</asp:ListItem>
                                      <asp:ListItem>5</asp:ListItem>
                                      <asp:ListItem>6</asp:ListItem>
                                      <asp:ListItem>7</asp:ListItem>
                                      <asp:ListItem>8</asp:ListItem>
                                      <asp:ListItem>9</asp:ListItem>
                                      <asp:ListItem>10</asp:ListItem>
                                  </asp:RadioButtonList>

                                </center>
                              </div>
                          </div>
                                  <hr>

                                  <div class="row">
                              <div class="col">
                                  <label>Implementation Work Completion: </label>
                                  <center>
                                  <asp:RadioButtonList RepeatDirection="Horizontal" ID="RadioButtonList10" runat="server" Width="835px" DataTextField="n10">
                                  <asp:ListItem>0</asp:ListItem>
                                      <asp:ListItem>1</asp:ListItem>
                                      <asp:ListItem>2</asp:ListItem>
                                      <asp:ListItem>3</asp:ListItem>
                                      <asp:ListItem>4</asp:ListItem>
                                      <asp:ListItem>5</asp:ListItem>
                                      <asp:ListItem>6</asp:ListItem>
                                      <asp:ListItem>7</asp:ListItem>
                                      <asp:ListItem>8</asp:ListItem>
                                      <asp:ListItem>9</asp:ListItem>
                                      <asp:ListItem>10</asp:ListItem>
                                  </asp:RadioButtonList>

                                </center>
                              </div>
                          </div>
                                  <hr>

                                  <div class="row">
                              <div class="col">
                                  <label>Overall work quality and impression: </label>
                                  <center>
                                  <asp:RadioButtonList RepeatDirection="Horizontal" ID="RadioButtonList11" runat="server" Width="835px" DataTextField="n11">
                                  <asp:ListItem>0</asp:ListItem>
                                      <asp:ListItem>1</asp:ListItem>
                                      <asp:ListItem>2</asp:ListItem>
                                      <asp:ListItem>3</asp:ListItem>
                                      <asp:ListItem>4</asp:ListItem>
                                      <asp:ListItem>5</asp:ListItem>
                                      <asp:ListItem>6</asp:ListItem>
                                      <asp:ListItem>7</asp:ListItem>
                                      <asp:ListItem>8</asp:ListItem>
                                      <asp:ListItem>9</asp:ListItem>
                                      <asp:ListItem>10</asp:ListItem>
                                  </asp:RadioButtonList>

                                </center>
                              </div>
                          </div>
                                  <hr>

                                  <div class="row">
                              <div class="col">
                                  <label>Code Quality: </label>
                                  <center>
                                  <asp:RadioButtonList RepeatDirection="Horizontal" ID="RadioButtonList12" runat="server" Width="835px" DataTextField="n12">
                                  <asp:ListItem>0</asp:ListItem>
                                      <asp:ListItem>1</asp:ListItem>
                                      <asp:ListItem>2</asp:ListItem>
                                      <asp:ListItem>3</asp:ListItem>
                                      <asp:ListItem>4</asp:ListItem>
                                      <asp:ListItem>5</asp:ListItem>
                                      <asp:ListItem>6</asp:ListItem>
                                      <asp:ListItem>7</asp:ListItem>
                                      <asp:ListItem>8</asp:ListItem>
                                      <asp:ListItem>9</asp:ListItem>
                                      <asp:ListItem>10</asp:ListItem>
                                  </asp:RadioButtonList>

                                </center>
                              </div>
                          </div>
                                  <hr>

                                  <div class="row">
                              <div class="col">
                                  <label>Level of code integration: </label>
                                  <center>
                                  <asp:RadioButtonList RepeatDirection="Horizontal" ID="RadioButtonList13" runat="server" Width="835px" DataTextField="n13">
                                  <asp:ListItem>0</asp:ListItem>
                                      <asp:ListItem>1</asp:ListItem>
                                      <asp:ListItem>2</asp:ListItem>
                                      <asp:ListItem>3</asp:ListItem>
                                      <asp:ListItem>4</asp:ListItem>
                                      <asp:ListItem>5</asp:ListItem>
                                      <asp:ListItem>6</asp:ListItem>
                                      <asp:ListItem>7</asp:ListItem>
                                      <asp:ListItem>8</asp:ListItem>
                                      <asp:ListItem>9</asp:ListItem>
                                      <asp:ListItem>10</asp:ListItem>
                                  </asp:RadioButtonList>

                                </center>
                              </div>
                          </div>
                                  <hr>

                                  <div class="row">
                              <div class="col">
                                  <label>Class Diagram/DFD (provided in the report) correctly maps to the Code Implemented: </label>
                                  <center>
                                  <asp:RadioButtonList RepeatDirection="Horizontal" ID="RadioButtonList14" runat="server" Width="835px" DataTextField="n14">
                                  <asp:ListItem>0</asp:ListItem>
                                      <asp:ListItem>1</asp:ListItem>
                                      <asp:ListItem>2</asp:ListItem>
                                      <asp:ListItem>3</asp:ListItem>
                                      <asp:ListItem>4</asp:ListItem>
                                      <asp:ListItem>5</asp:ListItem>
                                      <asp:ListItem>6</asp:ListItem>
                                      <asp:ListItem>7</asp:ListItem>
                                      <asp:ListItem>8</asp:ListItem>
                                      <asp:ListItem>9</asp:ListItem>
                                      <asp:ListItem>10</asp:ListItem>
                                  </asp:RadioButtonList>

                                </center>
                              </div>
                          </div>
                                  <hr>

                                  <div class="row">
                              <div class="col">
                                  <label>Handling of Questions: </label>
                                  <center>
                                  <asp:RadioButtonList RepeatDirection="Horizontal" ID="RadioButtonList15" runat="server" Width="835px" DataTextField="n15">
                                  <asp:ListItem>0</asp:ListItem>
                                      <asp:ListItem>1</asp:ListItem>
                                      <asp:ListItem>2</asp:ListItem>
                                      <asp:ListItem>3</asp:ListItem>
                                      <asp:ListItem>4</asp:ListItem>
                                      <asp:ListItem>5</asp:ListItem>
                                      <asp:ListItem>6</asp:ListItem>
                                      <asp:ListItem>7</asp:ListItem>
                                      <asp:ListItem>8</asp:ListItem>
                                      <asp:ListItem>9</asp:ListItem>
                                      <asp:ListItem>10</asp:ListItem>
                                  </asp:RadioButtonList>

                                </center>
                              </div>
                          </div>
                                  <hr>


                                  






                           <div class ="form-group">
                                       <center> <asp:Button  class="btn btn-info btn-block" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"  /></center>

                                  </div>

                      </div>
                </div>
                
             </div>

                       


        </div>
    </div>

</asp:Content>
