<%@ Page Title="" Language="C#" MasterPageFile="~/manager/manager.Master" AutoEventWireup="true" CodeBehind="view-user.aspx.cs" Inherits="PointSaleSystemWeb.manager.view_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Point of Sale - View User
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <!-- Data tables -->

    <!--<link rel="stylesheet" type="text/css" href="../../assets/widgets/datatable/datatable.css">-->
    <script type="text/javascript" src="../assets/widgets/datatable/datatable.js"></script>
    <script type="text/javascript" src="../assets/widgets/datatable/datatable-bootstrap.js"></script>
    <script type="text/javascript" src="../assets/widgets/datatable/datatable-tabletools.js"></script>

    <script type="text/javascript">

        /* Datatables basic */

        $(document).ready(function () {
            $('#datatable-example').dataTable();
        });

        /* Datatables hide columns */
    </script>

    <script type="text/javascript">
        function ShowModal() {
            $("#userStatus").modal('show');
        }
    </script>
    <script type="text/javascript">
        function CloseModal() {
            $("#userStatus").modal('hide');
        }
    </script>

    <div id="page-content">
        <div class="container">
            <div id="page-title">
                <h2>User</h2>
                <p>
                    <asp:Label ID="lblStatus" Visible="false" Text="" runat="server"></asp:Label>
                    <asp:Label ID="lblUserID" Visible="false" Text="Success message title" runat="server"></asp:Label>
                    <asp:Label ID="lblUserName" Visible="false" Text="Success message title" runat="server"></asp:Label>
                    <asp:Label ID="lblChangePass" Text="View and Manage Users." runat="server" />
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
                                    <h3 class="content-box-header bg-white text-center">User Details</h3>
                                    <div class="content-box-wrapper">
                                        <table id="datatable-example" class="table table-striped table-bordered font-size-18">
                                            <thead>
                                                <tr>
                                                    <th class="text-center">Picture</th>
                                                    <th class="text-center">Full Name</th>
                                                    <th class="text-center">Phone</th>
                                                    <th class="text-center">Role</th>
                                                    <th class="text-center">Username</th>
                                                    <th class="text-center">Action</th>
                                                    <th class="text-center">Status</th>
                                                </tr>
                                            </thead>
                                            <tbody id="tblUser" runat="server"></tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="userStatus" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div id="divModal" class="modal-header bg-danger" runat="server">
                        <button id="btnClsModal" type="button" class="close" runat="server" onserverclick="btnModClose_ServerClick" data-dismiss="modal" aria-hidden="true" causesvalidation="false">&times;</button>
                        <h4 class="modal-title">
                            <asp:Label ID="lblModTitle" Text="Delete Hall" runat="server"></asp:Label>
                        </h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-12 text-center font-size-14">
                                <asp:Label ID="lblModMessage" Text="Are you sure you want to delete Hall" runat="server" />
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button id="btnModClose" type="button" class="btn btn-default" runat="server" onserverclick="btnModClose_ServerClick" data-dismiss="modal" causesvalidation="false">
                            <i class="glyph-icon icon-times icon-large"></i>
                            Close
                        </button>
                        <button id="btnModYes" type="button" class="btn btn-danger" runat="server" onserverclick="btnModYes_ServerClick" causesvalidation="false">
                            <i class="glyph-icon icon-check icon-large"></i>
                            Yes
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
