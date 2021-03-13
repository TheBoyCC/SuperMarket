<%@ Page Title="" Language="C#" MasterPageFile="~/manager/manager.Master" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="PointSaleSystemWeb.manager.category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Point of Sale - Category
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <!-- Input switch -->

    <link rel="stylesheet" type="text/css" href="../assets/widgets/input-switch/inputswitch.css" />
    <script type="text/javascript" src="../assets/widgets/input-switch/inputswitch.js"></script>
    <script type="text/javascript">
        /* Input switch */

        $(function () {
            "use strict";
            $('.input-switch').bootstrapSwitch();
        });
    </script>

    <div id="page-content">
        <div class="container">
            <div id="page-title">
                <h2>Category</h2>
                <p>
                    <asp:Label ID="lblChangePass" Text="Add and Manage Category Details." runat="server" />
                </p>
            </div>
            <div class="panel">
                <div class="panel-body">
                    <div class="example-box-wrapper">
                        <div class="row">
                            <div class="col-sm-5 col-sm-offset-1">
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
                                    <h3 class="content-box-header bg-white text-center">Enter Details of Category</h3>
                                    <div class="content-box-wrapper">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="form-horizontal bordered-row">
                                                    <div class="form-group remove-border">
                                                        <label class="col-sm-4 control-label">Category:</label>
                                                        <div class="col-sm-6">
                                                            <asp:TextBox ID="txtCategory" CssClass="form-control" placeholder="Enter Category" runat="server" />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" runat="server"
                                                                ControlToValidate="txtCategory"
                                                                ErrorMessage="Enter Category"
                                                                Display="Dynamic">
                                                            </asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                                                ControlToValidate="txtCategory"
                                                                ForeColor="Red"
                                                                ValidationExpression="[a-zA-Z / -]*$"
                                                                ErrorMessage="Enter Aplhabets"
                                                                Display="Dynamic">
                                                            </asp:RegularExpressionValidator>
                                                        </div>
                                                    </div>
                                                    <div class="form-group remove-border">
                                                        <label class="col-sm-4 control-label">Expire Status:</label>
                                                        <div class="col-sm-6">
                                                            <input id="chkExpire" type="checkbox" data-on-color="primary" onserverchange="chkExpire_ServerChange" name="checkbox-example-1" class="input-switch" checked="checked" data-size="medium" data-on-text="Yes" data-off-text="No" runat="server" />
                                                        </div>
                                                    </div>
                                                    <div class="button-pane content-box text-center pad20A mrg20T">
                                                        <asp:Button ID="btnSave" CssClass="btn btn-success float-right" Text="Save Details" OnClick="btnSave_Click" runat="server" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <div class="content-box">
                                    <h3 class="content-box-header bg-white text-center">Manage Category</h3>
                                    <div class="content-box-wrapper">
                                        <table id="example1" class="table table-bordered font-size-18">
                                            <thead>
                                                <tr>
                                                    <th class="text-center">Category</th>
                                                    <th class="text-center">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody id="tblCategory" runat="server"></tbody>
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
