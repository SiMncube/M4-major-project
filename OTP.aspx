<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OTP.aspx.cs" Inherits="M4_major_project.OTP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body{
    font-family: 'Roboto';
}
.card {
    box-shadow: 0 20px 27px 0 rgb(0 0 0 / 5%);
}
.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid rgba(0,0,0,.125);
    border-radius: 1rem;
}
.img-thumbnail {
    padding: .25rem;
    background-color: #ecf2f5;
    border: 1px solid #dee2e6;
    border-radius: .25rem;
    max-width: 100%;
    height: auto;
}
.avatar-lg {
    height: 150px;
    width: 150px;
}</style>
    <div class="col-lg-5 col-md-7 mx-auto my-auto">
            <div class="card">
                <div class="card-body px-lg-5 py-lg-5 text-center">
                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" class="rounded-circle avatar-lg img-thumbnail mb-4" alt="profile-image">
                    <div></div>
                    <p class="mb-4" style="font-size: 17px; font-weight: bold; color: #0000FF">Enter Code</p>
                    <p class="mb-4">Enter 6-digits code from your email</p>
                    <div>
                        <div class="row mb-4">
                            <div class="col-lg-2 col-md-2 col-2 ps-0 ps-md-2">
                                <input type="text" class="form-control text-lg text-center" placeholder="_" aria-label="2fa">
                            </div>
                            <div class="col-lg-2 col-md-2 col-2 ps-0 ps-md-2">
                                <input type="text" class="form-control text-lg text-center" placeholder="_" aria-label="2fa">
                            </div>
                            <div class="col-lg-2 col-md-2 col-2 ps-0 ps-md-2">
                                <input type="text" class="form-control text-lg text-center" placeholder="_" aria-label="2fa">
                            </div>
                            <div class="col-lg-2 col-md-2 col-2 pe-0 pe-md-2">
                                <input type="text" class="form-control text-lg text-center" placeholder="_" aria-label="2fa">
                            </div>
                            <div class="col-lg-2 col-md-2 col-2 pe-0 pe-md-2">
                                <input type="text" class="form-control text-lg text-center" placeholder="_" aria-label="2fa">
                            </div>
                            <div class="col-lg-2 col-md-2 col-2 pe-0 pe-md-2">
                                <input type="text" class="form-control text-lg text-center" placeholder="_" aria-label="2fa">
                            </div>
                        </div>
                        <div>
                            <br />
                        </div>
                        <div class="text-center">
                            <button type="button" class="btn bg-info btn-lg my-4">Confirm Code</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
