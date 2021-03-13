<%@ Page Title="" Language="C#" MasterPageFile="~/sales/sales.Master" AutoEventWireup="true" CodeBehind="view-order.aspx.cs" Inherits="PointSaleSystemWeb.sales.view_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Point of Sale - View Order
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <!-- Data tables -->

    <!--<link rel="stylesheet" type="text/css" href="../../assets/widgets/datatable/datatable.css">-->
    <script type="text/javascript" src="../assets/widgets/datatable/datatable.js"></script>
    <script type="text/javascript" src="../assets/widgets/datatable/datatable-bootstrap.js"></script>
    <script type="text/javascript" src="../assets/widgets/datatable/datatable-tabletools.js"></script>
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
    <script type="text/javascript">

        /* Datatables basic */

        $(document).ready(function () {
            $('#datatable-example').dataTable();
        });

        /* Datatables hide columns */
    </script>
    <script type="text/javascript">
        function ShowModal() {
            $("#modOrderDetails").modal('show');
        }
    </script>

    <div id="page-content">
        <div class="container">
            <div id="page-title">
                <h2>Order</h2>
                <p>
                    <asp:Label ID="lblChangePass" Text="View and Manage Orders." runat="server" />
                </p>
            </div>
            <div class="panel">
                <div class="panel-body">
                    <div class="example-box-wrapper">
                        <div class="row">
                            <div class="col-sm-12">
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
                                    <h3 class="content-box-header bg-white text-center">View Order Details</h3>
                                    <div class="content-box-wrapper">
                                        <table id="datatable-example" class="table table-striped table-bordered font-size-18">
                                            <thead>
                                                <div class="col-sm-12">
                                                    <div class="form-horizontal bordered-row">
                                                        <div class="form-group remove-border content-box pad0T pad0B mrg20B">
                                                            <label class="col-sm-3 control-label mrg30T">Search:</label>
                                                            <div class="col-sm-7">
                                                                <div class="col-sm-4">
                                                                    <label>From</label>
                                                                    <div class="input-prepend input-group">
                                                                        <span class="add-on input-group-addon">
                                                                            <i class="glyph-icon icon-calendar"></i>
                                                                        </span>
                                                                        <asp:TextBox ID="txtFromDate" CssClass="bootstrap-datepicker form-control" placeholder="yyyy / mm / dd" runat="server" />
                                                                    </div>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server"
                                                                        ControlToValidate="txtFromDate"
                                                                        ErrorMessage="Select Date"
                                                                        Display="Dynamic">
                                                                    </asp:RequiredFieldValidator>
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <label>To</label>
                                                                    <div class="input-prepend input-group">
                                                                        <span class="add-on input-group-addon">
                                                                            <i class="glyph-icon icon-calendar"></i>
                                                                        </span>
                                                                        <asp:TextBox ID="txtToDate" CssClass="bootstrap-datepicker form-control" placeholder="yyyy / mm / dd" runat="server" />
                                                                    </div>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server"
                                                                        ControlToValidate="txtToDate"
                                                                        ErrorMessage="Select Date"
                                                                        Display="Dynamic">
                                                                    </asp:RequiredFieldValidator>
                                                                </div>
                                                                <div class="col-sm-4 mrg30T">
                                                                    <button id="btnSearch" type="button" class="btn btn-alt btn-hover btn-info tooltip-button" onserverclick="btnSearch_ServerClick" runat="server" causesvalidation="true" data-placement="top" title="Search Orders">
                                                                        <span>Search</span>
                                                                        <i class="glyph-icon icon-search"></i>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-sm-4 control-label">Filter Orders:</label>
                                                            <div class="col-sm-8">
                                                                <button id="btnCompleted" type="button" class="btn btn-alt btn-hover btn-success tooltip-button" onserverclick="btnCompleted_ServerClick" runat="server" causesvalidation="false" data-placement="top" title="View Completed Orders">
                                                                    <span>COMPLETED</span>
                                                                    <i class="glyph-icon icon-check"></i>
                                                                </button>
                                                                <button id="btnPending" type="button" class="btn btn-alt btn-hover btn-yellow tooltip-button" onserverclick="btnPending_ServerClick" runat="server" causesvalidation="false" data-placement="top" title="View Pending Orders">
                                                                    <span>PENDING</span>
                                                                    <i class="glyph-icon icon-database"></i>
                                                                </button>
                                                                <button id="btnCancelled" type="button" class="btn btn-alt btn-hover btn-danger tooltip-button" onserverclick="btnCancelled_ServerClick" runat="server" causesvalidation="false" data-placement="top" title="View Cancelled Orders">
                                                                    <span>CANCELLED</span>
                                                                    <i class="glyph-icon icon-close"></i>
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <div class="form-group"></div>
                                                    </div>
                                                </div>
                                                <div class="box-footer">
                                                    <tr>
                                                        <th class="text-center">Date</th>
                                                        <th class="text-center">Order No</th>
                                                        <th class="text-center">Total</th>
                                                        <th class="text-center">User</th>
                                                        <th class="text-center">Status</th>
                                                        <th class="text-center">Action</th>
                                                    </tr>
                                                </div>
                                            </thead>
                                            <tbody id="tblOrder" runat="server"></tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="modOrderDetails" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div id="divModal" class="modal-header bg-danger" runat="server">
                        <button id="btnClsModal" type="button" class="close" runat="server" onserverclick="btnModClose_ServerClick" aria-hidden="true" causesvalidation="false">&times;</button>
                        <h4 class="modal-title">
                            <asp:Label ID="lblModTitle" Text="Delete Hall" runat="server"></asp:Label>
                        </h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div id="divOrderDetails" visible="true" class="col-sm-12 font-size-20" runat="server">
                            </div>
                        </div>
                        <table id="example1" class="table table-bordered font-size-18 mrg10B">
                            <thead>
                                <tr>
                                    <th class="text-center">Product</th>
                                    <th class="text-center">Quantity</th>
                                    <th class="text-center">Cost</th>
                                </tr>
                            </thead>
                            <tbody id="tblOrderItems" runat="server"></tbody>
                        </table>
                        <div class="row">
                            <div id="divRow" class="col-sm-12 font-size-16 font-bold" runat="server">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-horizontal bordered-row">
                                    <div class="button-pane text-center mrg10T">
                                        <div class="row">
                                            <div id="divUserDetails" class="col-sm-12 pad12BT font-size-16 font-bold" runat="server">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button id="btnModClose" type="button" class="btn btn-default" runat="server" onserverclick="btnModClose_ServerClick" causesvalidation="false">
                            <span>Close</span>
                            <i class="glyph-icon icon-times icon-large"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
