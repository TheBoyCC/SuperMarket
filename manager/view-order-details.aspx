<%@ Page Title="" Language="C#" MasterPageFile="~/manager/manager.Master" AutoEventWireup="true" CodeBehind="view-order-details.aspx.cs" Inherits="PointSaleSystemWeb.manager.view_order_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Point of Sale - Order Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div id="page-content">
        <div class="container">
            <div id="page-title">
                <h2>Order Details</h2>
                <p>
                    <asp:Label ID="lblChangePass" Text="View Details of Order." runat="server" />
                    <asp:Label ID="lblOrderID" Visible="false" Text="" runat="server" />
                    <asp:Label ID="lblOrderNum" Visible="false" Text="" runat="server" />
                </p>
            </div>
            <div class="panel">
                <div class="panel-body">
                    <div class="example-box-wrapper">
                        <div class="row">
                            <div class="col-sm-7 col-sm-offset-2">
                                <div class="content-box">
                                    <h3 class="content-box-header bg-white text-center">View Details of Order</h3>
                                    <div class="row">
                                        <div id="divOrderInfo" visible="false" class="col-sm-12" runat="server">
                                            <div class="col-sm-7 pad5B font-size-16 font-bold">
                                                <asp:Label ID="lblOrderNumber" Text="" runat="server" />
                                                <asp:Label ID="lblOrderDate" Text="" runat="server" />

                                            </div>
                                            <div id="divOrderStatus" class="col-sm-5 pad12TB" runat="server">
                                            </div>
                                        </div>
                                    </div>
                                    <table id="example1" class="table table-bordered font-size-18">
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
                                        <div class="col-sm-12">
                                            <div id="divCheckOut" class="form-horizontal bordered-row" runat="server">
                                                <div class="button-pane text-center pad20TB mrg10T">
                                                    <div class="row">
                                                        <div class="col-sm-4 pad12BT font-size-16 font-bold">
                                                            <asp:Label ID="lblTotalCost" Text="" runat="server" />
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <asp:Label ID="lblUsername" Text="" runat="server" />
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
    </div>
</asp:Content>
