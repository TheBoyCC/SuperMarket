<%@ Page Title="" Language="C#" MasterPageFile="~/manager/manager.Master" AutoEventWireup="true" CodeBehind="add-inventory.aspx.cs" Inherits="PointSaleSystemWeb.manager.add_inventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Point of Sale - Inventory
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <!-- Bootstrap Datepicker -->

    <!--<link rel="stylesheet" type="text/css" href="../../assets/widgets/datepicker/datepicker.css">-->
    <script type="text/javascript" src="../assets/widgets/datepicker/datepicker.js"></script>
    <script type="text/javascript">
        /* Datepicker bootstrap */

        $(function () {
            "use strict";
            $('.bootstrap-datepicker').bsdatepicker({
                format: 'yyyy-mm-dd'
            });
        });

    </script>
    <div id="page-content">
        <div class="container">
            <div id="page-title">
                <h2>Inventory</h2>
                <p>
                    <asp:Label ID="lblChangePass" Text="Add Details of Inventory." runat="server" />
                </p>
            </div>
            <div class="panel">
                <div class="panel-body">
                    <div class="example-box-wrapper">
                        <div class="row">
                            <div class="col-sm-8 col-sm-offset-2">
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
                                    <h3 class="content-box-header bg-white text-center">Enter Details of Inventory</h3>
                                    <div class="content-box-wrapper">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="form-horizontal bordered-row">
                                                    <div class="form-group remove-border">
                                                        <label class="col-sm-4 control-label">Product Name:</label>
                                                        <div class="col-sm-6">
                                                            <div>
                                                                <asp:DropDownList ID="ddlProduct" CssClass="custom-select form-control" runat="server" OnSelectedIndexChanged="ddlProduct_SelectedIndexChanged" AutoPostBack="True">
                                                                    <asp:ListItem Text="-- Select Product --" Value="0" Selected="True" />
                                                                </asp:DropDownList>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" runat="server"
                                                                    ControlToValidate="ddlProduct"
                                                                    ErrorMessage="Select Product"
                                                                    InitialValue="0"
                                                                    Display="Dynamic">
                                                                </asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group remove-border">
                                                        <label class="col-sm-4 control-label">Quantity Available:</label>
                                                        <div class="col-sm-6">
                                                            <asp:TextBox ID="txtQuantity" CssClass="form-control" placeholder="Quantity Available" BackColor="White" ReadOnly="true" MaxLength="5" runat="server" />
                                                        </div>
                                                    </div>
                                                    <div class="form-group remove-border" runat="server">
                                                        <label class="col-sm-4 control-label">Inventory Date:</label>
                                                        <div class="col-sm-6">
                                                            <div class="input-prepend input-group">
                                                                <span class="add-on input-group-addon">
                                                                    <i class="glyph-icon icon-calendar"></i>
                                                                </span>
                                                                <asp:TextBox ID="txtInvDate" CssClass="bootstrap-datepicker form-control" placeholder="yyyy / mm / dd" runat="server" />
                                                            </div>
                                                            <asp:CustomValidator ID="valInvDate" ForeColor="Red" runat="server"
                                                                ControlToValidate="txtInvDate"
                                                                ErrorMessage="Enter Valid Date"
                                                                Display="Dynamic"
                                                                OnServerValidate="valInvDate_ServerValidate">
                                                            </asp:CustomValidator>
                                                        </div>
                                                    </div>
                                                    <div class="form-group remove-border">
                                                        <label class="col-sm-4 control-label">Batch Number:</label>
                                                        <div class="col-sm-6">
                                                            <asp:TextBox ID="txtBatchNumber" CssClass="form-control" placeholder="Enter Batch Number" MaxLength="10" runat="server" />
                                                        </div>
                                                    </div>
                                                    <div class="form-group remove-border">
                                                        <label class="col-sm-4 control-label">Quantity Delivered:</label>
                                                        <div class="col-sm-6">
                                                            <asp:TextBox ID="txtQtyDelivered" CssClass="form-control" placeholder="Enter Quantity Delivered" runat="server" />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server"
                                                                ControlToValidate="txtQtyDelivered"
                                                                ErrorMessage="Enter Quantity Delivered"
                                                                Display="Dynamic">
                                                            </asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                                                ControlToValidate="txtQtyDelivered"
                                                                ForeColor="Red"
                                                                ValidationExpression="[0-9 ]*$"
                                                                ErrorMessage="Enter Numbers"
                                                                Display="Dynamic">
                                                            </asp:RegularExpressionValidator>
                                                        </div>
                                                    </div>
                                                    <div id="divExpiry" visible="false" class="form-group remove-border" runat="server">
                                                        <label class="col-sm-4 control-label">Expiry Date:</label>
                                                        <div class="col-sm-6">
                                                            <div class="input-prepend input-group">
                                                                <span class="add-on input-group-addon">
                                                                    <i class="glyph-icon icon-calendar"></i>
                                                                </span>
                                                                <asp:TextBox ID="txtExpiryDate" CssClass="bootstrap-datepicker form-control" placeholder="yyyy / mm / dd" runat="server" />
                                                            </div>
                                                            <asp:CustomValidator ID="valExpiryDate" ForeColor="Red" runat="server"
                                                                ControlToValidate="txtExpiryDate"
                                                                ErrorMessage="Enter Valid Date"
                                                                Display="Dynamic"
                                                                OnServerValidate="valExpiryDate_ServerValidate">
                                                            </asp:CustomValidator>
                                                        </div>
                                                    </div>

                                                    <div class="button-pane content-box text-center pad20A mrg20T">
                                                        <asp:Button ID="btnSave" CssClass="btn btn-success float-right" Text="Save Details" OnClick="btnSaveProduct_Click" runat="server" />
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

