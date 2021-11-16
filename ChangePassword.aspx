<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="M4_major_project.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="https://bootswatch.com/3/yeti/bootstrap.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function showModal() {
            $("#myModal").modal('show');
        }
    </script>
    <div class="center" style="margin: auto; width: 60%; border: 0px solid #FFFF00; padding: 0px">
        <div class="changePassword">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-4" style="margin: auto;width: 55%;border: 0px solid #FFFF00;padding: 5px">
                        <div class="well well-sm">
                            <h1>Change password</h1>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="New Password" class="form-label mt-4"></asp:Label>
                            <br />
                            <asp:TextBox ID="passwordTextBox" runat="server" required="" class="form-control" placeholder="Enter new password" TextMode="Password"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label2" runat="server" Text="Confirm password"></asp:Label>
                            <br />
                            <asp:TextBox ID="confirmTextBox" runat="server" required="" class="form-control" placeholder="Confirm password" TextMode="Password"></asp:TextBox>
                            <br />
                            <div class="col-md text-center">
                                <asp:Button ID="confirmBtn" runat="server" Text="Change password" OnClick="Button1_Click" class="btn btn-primary pull-center" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
                    <button type="button" id="closeCtn" class="btn btn-default" data-dismiss="modal" OnClick_Click="CloseBtn_Click" runat="server">Close</button>
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>
