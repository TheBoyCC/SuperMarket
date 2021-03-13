<%@ Page Title="" Language="C#" MasterPageFile="~/manager/manager.Master" AutoEventWireup="true" CodeBehind="settings.aspx.cs" Inherits="PointSaleSystemWeb.manager.settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Point of Sale - Settings
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div id="page-content">
        <div class="container">
            <div id="page-title">
                <h2>Setting</h2>
                <p>
                    <asp:Label ID="lblUrlString" Text="" Visible="false" runat="server" />
                    <asp:Label ID="lblSettingID" Text="" Visible="false" runat="server" />
                    <asp:Label ID="lblChangePass" Text="Add and Manage Settings." runat="server" />
                </p>
            </div>
            <div class="panel">
                <div class="panel-body">
                    <div class="example-box-wrapper">
                        <div class="row">
                            <div class="col-sm-5">
                                <div class="content-box">
                                    <asp:Panel ID="alertErrorPanel" Display="Dynamic" Visible="false" Height="60px" runat="server">
                                        <div class="alert alert-close alert-danger">
                                            <a href="#" id="clsAlertError" title="Close" class="glyph-icon alert-close-btn icon-remove" runat="server" onserverclick="clsAlertSuccess_ServerClick" causesvalidation="false"></a>
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
                                    <h3 class="content-box-header bg-white text-center">Enter Details of Settings</h3>
                                    <div class="content-box-wrapper">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="form-horizontal bordered-row">
                                                    <div class="form-group remove-border">
                                                        <label class="col-sm-4 control-label">Shop Name:</label>
                                                        <div class="col-sm-6">
                                                            <asp:TextBox ID="txtShopName" CssClass="form-control" placeholder="Enter Shop Name" BackColor="White" runat="server" />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" runat="server"
                                                                ControlToValidate="txtShopName"
                                                                ErrorMessage="Enter Shop Name"
                                                                Display="Dynamic">
                                                            </asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                                                ControlToValidate="txtShopName"
                                                                ForeColor="Red"
                                                                ValidationExpression="[a-zA-Z / -]*$"
                                                                ErrorMessage="Enter Aplhabets"
                                                                Display="Dynamic">
                                                            </asp:RegularExpressionValidator>
                                                        </div>
                                                    </div>
                                                    <div class="form-group remove-border">
                                                        <label class="col-sm-4 control-label">Phone Number:</label>
                                                        <div class="col-sm-6">
                                                            <asp:TextBox ID="txtPhone" CssClass="form-control" placeholder="Enter Phone Number" BackColor="White" MaxLength="10" runat="server" />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" runat="server"
                                                                ControlToValidate="txtPhone"
                                                                ErrorMessage="Enter Phone Number"
                                                                Display="Dynamic">
                                                            </asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server"
                                                                ControlToValidate="txtPhone"
                                                                ForeColor="Red"
                                                                ValidationExpression="[0-9 ]*$"
                                                                ErrorMessage="Enter Numbers"
                                                                Display="Dynamic">
                                                            </asp:RegularExpressionValidator>
                                                        </div>
                                                    </div>
                                                    <div class="form-group remove-border">
                                                        <label class="col-sm-4 control-label">Address:</label>
                                                        <div class="col-sm-6">
                                                            <asp:TextBox ID="txtAddress" CssClass="form-control" placeholder="Enter Address" BackColor="White" TextMode="MultiLine" runat="server" />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ForeColor="Red" runat="server"
                                                                ControlToValidate="txtAddress"
                                                                ErrorMessage="Enter Address"
                                                                Display="Dynamic">
                                                            </asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                    <div id="divBtn" visible="false" class="button-pane content-box text-center pad20A mrg20T" runat="server">
                                                        <asp:Button ID="btnUpdate" CssClass="btn btn-success float-right" Text="Update Details" OnClick="btnUpdate_Click" runat="server" />
                                                        <asp:Button ID="btnSave" CssClass="btn btn-success float-right" Text="Save Details" OnClick="btnSave_Click" runat="server" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-7">
                                <div class="content-box">
                                    <h3 class="content-box-header bg-white text-center">View Settings</h3>
                                    <div class="content-box-wrapper">
                                        <table id="example1" class="table table-bordered font-size-18">
                                            <thead>
                                                <tr>
                                                    <th class="text-center">Shop Name</th>
                                                    <th class="text-center">Contact</th>
                                                    <th class="text-center">Address</th>
                                                    <th class="text-center">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody id="tblSettings" runat="server"></tbody>
                                        </table>
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
