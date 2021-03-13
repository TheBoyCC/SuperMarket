<%@ Page Title="" Language="C#" MasterPageFile="~/manager/manager.Master" AutoEventWireup="true" CodeBehind="view-inventory.aspx.cs" Inherits="PointSaleSystemWeb.manager.view_inventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Point of Sale - View Inventory
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

    <div id="page-content">
        <div class="container">
            <div id="page-title">
                <h2>Inventory</h2>
                <p>
                    <asp:Label ID="lblChangePass" Text="View and Manage Inventory." runat="server" />
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
                                    <h3 class="content-box-header bg-white text-center">Inventory Details</h3>
                                    <div class="content-box-wrapper">
                                        <table id="datatable-example" class="table table-striped table-bordered font-size-18">
                                            <thead>
                                                <div class="col-sm-12">
                                                    <div class="form-horizontal bordered-row">
                                                        <div class="form-group remove-border content-box pad0T pad0B mrg30B">
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
                                                                </div>
                                                                <div class="col-sm-4">
                                                                    <label>To</label>
                                                                    <div class="input-prepend input-group">
                                                                        <span class="add-on input-group-addon">
                                                                            <i class="glyph-icon icon-calendar"></i>
                                                                        </span>
                                                                        <asp:TextBox ID="txtToDate" CssClass="bootstrap-datepicker form-control" placeholder="yyyy / mm / dd" runat="server" />
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-4 mrg30T">
                                                                    <asp:Button ID="btnSearch" CssClass="btn btn-info" Text="Search" OnClick="btnSearch_Click" runat="server" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="box-footer">
                                                    <tr>
                                                        <th class="text-center">Date</th>
                                                        <th class="text-center">Product</th>
                                                        <th class="text-center">Quantity</th>
                                                        <th class="text-center">Expiry Date</th>
                                                        <th class="text-center">User</th>
                                                    </tr>
                                                </div>
                                            </thead>
                                            <tbody id="tblInventory" runat="server"></tbody>
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
