<%@ Page Title="" Language="C#" MasterPageFile="~/manager/manager.Master" AutoEventWireup="true" CodeBehind="edit-order-item.aspx.cs" Inherits="PointSaleSystemWeb.manager.edit_order_item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Point of Sale - Edit Order Item
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div id="page-content">
        <div class="container">
            <div id="page-title">
                <h2>Order</h2>
                <p>
                    <asp:Label ID="lblOrderID" Visible="false" Text="Success message title" runat="server"></asp:Label>
                    <asp:Label ID="lblOrderNumber" Visible="false" Text="Success message title" runat="server"></asp:Label>
                    <asp:Label ID="lblOldQty" Visible="false" Text="Success message title" runat="server"></asp:Label>
                    <asp:Label ID="lblQtyAvailable" Visible="false" Text="Success message title" runat="server"></asp:Label>
                    <asp:Label ID="lblItemID" Visible="false" Text="Success message title" runat="server"></asp:Label>
                    <asp:Label ID="lblProductID" Visible="false" Text="Success message title" runat="server"></asp:Label>
                    <asp:Label ID="lblChangePass" Text="Edit Order Item." runat="server" />
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
                                    <h3 class="content-box-header bg-white text-center">Edit Details of Order Item</h3>
                                    <div class="content-box-wrapper">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="form-horizontal bordered-row">
                                                    <div class="form-group remove-border">
                                                        <label class="col-sm-4 control-label">Product Name:</label>
                                                        <div class="col-sm-6">
                                                            <asp:TextBox ID="txtProductName" CssClass="form-control" placeholder="Product Name" BackColor="White" ReadOnly="true" runat="server" />
                                                        </div>
                                                    </div>
                                                    <div class="form-group remove-border">
                                                        <label class="col-sm-4 control-label">Unit Price:</label>
                                                        <div class="col-sm-6">
                                                            <div class="input-prepend input-group">
                                                                <span class="input-group-addon">GHȻ</span>
                                                                <asp:TextBox ID="txtUnitPrice" CssClass="form-control" placeholder="Unit Price" BackColor="White" ReadOnly="true" MaxLength="5" runat="server" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group remove-border">
                                                        <label class="col-sm-4 control-label">Order Quantity:</label>
                                                        <div class="col-sm-6">
                                                            <asp:TextBox ID="txtOrderQty" CssClass="form-control" placeholder="Enter Order Quantity" OnTextChanged="txtOrderQty_TextChanged" runat="server" CausesValidation="true" AutoPostBack="true" />
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" runat="server"
                                                                ControlToValidate="txtOrderQty"
                                                                ErrorMessage="Enter Order Quantity"
                                                                Display="Dynamic">
                                                            </asp:RequiredFieldValidator>
                                                            <asp:CustomValidator ID="valOrderQty" ForeColor="Red" runat="server"
                                                                ControlToValidate="txtOrderQty"
                                                                ErrorMessage=""
                                                                Display="Dynamic"
                                                                OnServerValidate="valOrderQty_ServerValidate">
                                                            </asp:CustomValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                                                ControlToValidate="txtOrderQty"
                                                                ForeColor="Red"
                                                                ValidationExpression="[0-9 ]*$"
                                                                ErrorMessage="Enter Numbers"
                                                                Display="Dynamic">
                                                            </asp:RegularExpressionValidator>
                                                        </div>
                                                    </div>
                                                    <div class="form-group remove-border">
                                                        <label class="col-sm-4 control-label">Cost:</label>
                                                        <div class="col-sm-6">
                                                            <div class="input-prepend input-group">
                                                                <span class="input-group-addon">GHȻ</span>
                                                                <asp:TextBox ID="txtCost" CssClass="form-control" placeholder="Cost" BackColor="White" ReadOnly="true" runat="server" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-pane content-box text-center pad20A mrg20T">
                                                         <button id="btnSave" type="button" class="btn btn-alt btn-hover btn-success float-right" onserverclick="btnSave_ServerClick" runat="server" causesvalidation="true">
                                                            <span>Save</span>
                                                            <i class="glyph-icon icon-save"></i>
                                                        </button>
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

