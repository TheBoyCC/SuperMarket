<%@ Page Title="" Language="C#" MasterPageFile="~/manager/manager.Master" AutoEventWireup="true" CodeBehind="view-order.aspx.cs" Inherits="PointSaleSystemWeb.manager.view_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Point of Sale - View Order
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <script type="text/javascript" src="../assets/widgets/chosen/chosen.js"></script>
    <script type="text/javascript" src="../assets/widgets/chosen/chosen-demo.js"></script>

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
                                                    <div class="pad20B" id="divFilterButton" runat="server">
                                                        <button id="btnShowFilters" type="button" class="btn btn-alt btn-hover btn-default tooltip-button" onserverclick="btnShowFilters_ServerClick" runat="server" causesvalidation="true" data-placement="top" title="Filter Order">
                                                            <i class="glyph-icon icon-filter"></i>
                                                            <span>Filter Orders</span>
                                                        </button>
                                                    </div>
                                                    <div class="form-horizontal bordered-row" id="divFilter" visible="false" runat="server">
                                                        <div class="form-group remove-border content-box pad0T pad20B">
                                                            <span class="bs-label label-default text-center pad20B font-size-16 col-sm-12">
                                                                <i class="glyph-icon icon-filter"></i>
                                                                Filter Orders
                                                            </span>
                                                            <div class="col-sm-2">
                                                                <asp:DropDownList ID="ddlFilter" CssClass="chosen-select form-control mrg10B tooltip-button" runat="server" OnSelectedIndexChanged="ddlFilter_SelectedIndexChanged" data-placement="top" title="Select Filter Option" AutoPostBack="true">
                                                                    <asp:ListItem Text="- Select Option -" Value="0" Selected="True" />
                                                                </asp:DropDownList>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" runat="server"
                                                                    ControlToValidate="ddlFilter"
                                                                    ErrorMessage="Select Filter Option"
                                                                    InitialValue="0"
                                                                    Display="Dynamic">
                                                                </asp:RequiredFieldValidator>
                                                            </div>
                                                            <div class="col-sm-2" id="divCondition" visible="false" runat="server">
                                                                <asp:DropDownList ID="ddlCondition" CssClass="chosen-select form-control mrg10B" runat="server" OnSelectedIndexChanged="ddlCondition_SelectedIndexChanged" AutoPostBack="true">
                                                                    <asp:ListItem Text="- Select Option -" Value="0" Selected="True" />
                                                                </asp:DropDownList>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" runat="server"
                                                                    ControlToValidate="ddlCondition"
                                                                    ErrorMessage="Select Filter Option"
                                                                    InitialValue="0"
                                                                    Display="Dynamic">
                                                                </asp:RequiredFieldValidator>
                                                            </div>
                                                            <div class="col-sm-8 pad0L" id="divActions" visible="false" runat="server">
                                                                <div class="col-sm-4" id="divUserStatus" visible="false" runat="server">
                                                                    <asp:DropDownList ID="ddlUserStatus" CssClass="chosen-select form-control mrg10B" runat="server">
                                                                        <asp:ListItem Text="- Select Option -" Value="0" Selected="True" />
                                                                    </asp:DropDownList>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="Red" runat="server"
                                                                        ControlToValidate="ddlUserStatus"
                                                                        ErrorMessage="Select Filter Option"
                                                                        InitialValue="0"
                                                                        Display="Dynamic">
                                                                    </asp:RequiredFieldValidator>
                                                                </div>
                                                                <div class="col-sm-3" id="divStartDate" runat="server">
                                                                    <div class="input-prepend input-group">
                                                                        <span class="add-on input-group-addon">
                                                                            <i class="glyph-icon icon-calendar"></i>
                                                                        </span>
                                                                        <asp:TextBox ID="txtStartDate" CssClass="bootstrap-datepicker form-control" placeholder="From" runat="server" />
                                                                    </div>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" runat="server"
                                                                        ControlToValidate="txtStartDate"
                                                                        ErrorMessage="Select Start Date"
                                                                        Display="Dynamic">
                                                                    </asp:RequiredFieldValidator>
                                                                </div>
                                                                <div class="float-left pad5TB" id="divDateAnd" runat="server">
                                                                    <span class="bs-label label-default font-size-16">And
                                                                    </span>
                                                                </div>
                                                                <div class="col-sm-3" id="divEndDate" runat="server">
                                                                    <div class="input-prepend input-group">
                                                                        <span class="add-on input-group-addon">
                                                                            <i class="glyph-icon icon-calendar"></i>
                                                                        </span>
                                                                        <asp:TextBox ID="txtEndDate" CssClass="bootstrap-datepicker form-control" placeholder="To" runat="server" />
                                                                    </div>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" runat="server"
                                                                        ControlToValidate="txtEndDate"
                                                                        ErrorMessage="Select End Date"
                                                                        Display="Dynamic">
                                                                    </asp:RequiredFieldValidator>
                                                                </div>
                                                                <div>
                                                                    <button id="btnFilter" type="button" class="btn btn-alt btn-hover btn-info tooltip-button" onserverclick="btnFilter_ServerClick" runat="server" causesvalidation="true" data-placement="top" title="Filter Order">
                                                                        <span>Filter</span>
                                                                        <i class="glyph-icon icon-filter"></i>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group pad5TB" id="divFilterDetails" runat="server" visible="false">
                                                            <div class="col-sm-12 text-center">
                                                                <span class="bs-label label-default text-center font-size-18 pad20R" id="spnTotalNumOrders" runat="server">
                                                                    Total Orders
                                                                </span>
                                                                <span class="bs-label label-default text-center font-size-18" id="spnTotalCostOrders" runat="server">
                                                                    Total Cost
                                                                </span>
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
