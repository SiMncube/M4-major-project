<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="M4_major_project.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="https://bootswatch.com/3/yeti/bootstrap.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function showModal() {
            $("#myModal").modal('show');
        }

        $(function () {
            $("#btnShow").click(function () {
                showModal();
            });
        });
    </script>
    <table align="center" style="width: 100%">
        <tr>
            <td><br />
    <div class="center" style="margin: auto;width: 60%;border: 0px solid #FFFF00;padding: 0px">
        <div class="row" >
            <div class="col-md-6" style="margin: auto;width: 85%;border: 0px solid #FFFF00;padding: 5px">
                <div class="well well-sm">
                    <div  class="row">
                        <div class="text-center">
                            <h3>Sign up</h3>
                            <p>Please fill the form below to sign up<p>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="Name" class="form-label mt-4"></asp:Label>
                                <asp:TextBox ID="nameTextBox" runat="server" class="form-control" placeholder="Enter name" required=""></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label3" runat="server" Text="ID Number" class="form-label mt-4"></asp:Label>
                                <asp:TextBox ID="idTextBox" runat="server" class="form-control" placeholder="Enter Id Number" required=""></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label4" runat="server" Text="Street name" class="form-label mt-4"></asp:Label>
                                <asp:TextBox ID="streetTextBox" runat="server" class="form-control" placeholder="Enter Street name"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label6" runat="server" Text="City" class="form-label mt-4"></asp:Label>
                                <asp:TextBox ID="cityTextBox" runat="server" class="form-control" placeholder="Enter city"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label9" runat="server" Text="Email" class="form-label mt-4"></asp:Label>
                                <asp:TextBox ID="emailTextBox" runat="server" class="form-control" placeholder="Enter email" required=""></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label10" runat="server" Text="Password" class="form-label mt-4"></asp:Label>
                                <asp:TextBox ID="passwordTextBox" runat="server" class="form-control" placeholder="Enter 8 or more characters" required="" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server" Text="Surname" class="form-label mt-4"></asp:Label>
                                <asp:TextBox ID="surnameTextBox" runat="server" class="form-control" placeholder="Enter surname" required=""></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label8" runat="server" Text="Cell phone" class="form-label mt-4"></asp:Label>
                                <asp:TextBox ID="cellTextBox" runat="server" class="form-control" placeholder="Enter cell number" required=""></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label5" runat="server" Text="Surburb" class="form-label mt-4"></asp:Label>
                                <asp:TextBox ID="surbubNameTextBox" runat="server" class="form-control" placeholder="Enter suburb"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label7" runat="server" Text="Postal code" class="form-label mt-4"></asp:Label>
                                <asp:TextBox ID="postalTextBox" runat="server" class="form-control" placeholder="Enter pastal code" required=""></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label12" runat="server" Text="Confirm email" class="form-label mt-4"></asp:Label>
                                <asp:TextBox ID="confirmEmailTextBox" runat="server" class="form-control" placeholder="Enter email" required=""></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label11" runat="server" Text="Confirm password" class="form-label mt-4"></asp:Label>
                                <asp:TextBox ID="confirmTextBox" runat="server" class="form-control" placeholder="Confirm password" required="" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-12 text-center">
                            <asp:Button class="btn btn-primary pull-center" ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" Width="210px" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>;</td>
        </tr>
    </table>
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Confirmation</h4>
                </div>
                <div class="modal-body" id="modalBody" runat="server">
                    <p>You query has been sent to the support team</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>
