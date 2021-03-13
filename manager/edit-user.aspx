<%@ Page Title="" Language="C#" MasterPageFile="~/manager/manager.Master" AutoEventWireup="true" CodeBehind="edit-user.aspx.cs" Inherits="PointSaleSystemWeb.manager.edit_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Point of Sale - Edit User
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <link href="../assets/style.css" rel="stylesheet" />
    <div id="page-content">
        <div class="container">
            <div id="page-title">
                <h2>Edit User</h2>
                <p>
                    <asp:Label ID="lblUserID" Text="" Visible="false" runat="server" />
                    <asp:Label ID="lblUrlString" Text="" Visible="false" runat="server" />
                    <asp:Label ID="lblChangePass" Text="Edit Details of User." runat="server" />
                </p>
            </div>
            <div class="panel">
                <div class="panel-body">
                    <div class="example-box-wrapper">
                        <div class="row">
                            <div class="col-sm-7 col-sm-offset-2">
                                <div class="content-box">
                                    <asp:Panel ID="alertErrorPanel" Display="Dynamic" Visible="false" Height="60px" runat="server">
                                        <div class="alert alert-close alert-danger">
                                            <a href="#" id="clsAlertError" title="Close" class="glyph-icon alert-close-btn icon-remove" runat="server" onserverclick="clsAlertError_ServerClick" causesvalidation="false"></a>
                                            <div class="bg-red alert-icon">
                                                <i class="glyph-icon icon-times"></i>
                                            </div>
                                            <div class="alert-content">
                                                <h4 class="alert-title">
                                                    <asp:Label ID="alertErrorTitle" Text="Success message title" runat="server"></asp:Label>
                                                </h4>
                                                <p>
                                                    <asp:Label ID="alertErrorMessage" Text="Information message box using the" runat="server"></asp:Label>
                                                </p>
                                            </div>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="alertSuccessPanel" Display="Dynamic" Visible="false" Height="60px" runat="server">
                                        <div class="alert alert-close alert-success">
                                            <a href="#" id="clsAlertSuccess" title="Close" class="glyph-icon alert-close-btn icon-remove" runat="server" onserverclick="clsAlertSuccess_ServerClick" causesvalidation="false"></a>
                                            <div class="bg-green alert-icon">
                                                <i class="glyph-icon icon-check"></i>
                                            </div>
                                            <div class="alert-content">
                                                <h4 class="alert-title">
                                                    <asp:Label ID="alertSuccessTitle" Text="Success message title" runat="server"></asp:Label>
                                                </h4>
                                                <p>
                                                    <asp:Label ID="alertSuccessMessage" Text="Information message box using the" runat="server"></asp:Label>
                                                </p>
                                            </div>
                                        </div>
                                    </asp:Panel>
                                    <h3 class="content-box-header bg-white text-center">Edit User Details</h3>
                                    <div class="content-box-wrapper">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="form-horizontal bordered-row">
                                                    <div class="form-group remove-border">
                                                        <label class="col-sm-4 control-label">First Name:</label>
                                                        <div class="col-sm-6">
                                                            <asp:TextBox ID="txtFirstName" CssClass="form-control" placeholder="First Name" BackColor="White" ReadOnly="true" runat="server" />
                                                        </div>
                                                    </div>
                                                    <div class="form-group remove-border">
                                                        <label class="col-sm-4 control-label">Last Name:</label>
                                                        <div class="col-sm-6">
                                                            <asp:TextBox ID="txtLastName" CssClass="form-control" placeholder="Last Name" BackColor="White" ReadOnly="true" runat="server" />
                                                        </div>
                                                    </div>
                                                    <div class="form-group remove-border">
                                                        <label class="col-sm-4 control-label">Role:</label>
                                                        <div class="col-sm-6 ">
                                                            <div>
                                                                <asp:DropDownList ID="ddlRole" CssClass="custom-select form-control" runat="server">
                                                                    <asp:ListItem Text="-- Select Role --" Value="0" Selected="True" />
                                                                </asp:DropDownList>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" runat="server"
                                                                    ControlToValidate="ddlRole"
                                                                    ErrorMessage="Select Role"
                                                                    InitialValue="0"
                                                                    Display="Dynamic">
                                                                </asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-pane content-box text-center pad20A mrg20T">
                                                        <asp:Button ID="btnSaveuser" CssClass="btn btn-success float-right" Text="Save Details" OnClick="btnSaveuser_Click" runat="server" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
