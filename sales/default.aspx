<%@ Page Title="" Language="C#" MasterPageFile="~/sales/sales.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="PointSaleSystemWeb.sales._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Point of Sale - Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div id="page-content">
        <div class="container">
            <div id="page-title">
                <h2>Dashboard</h2>
                <p>The most complete user interface for managing point of sale.</p>
            </div>
            <div class="panel">
                <div class="panel-body">
                    <asp:Panel ID="alertErrorPanel" display="Dynamic" Visible="false" Height="60px" runat="server">
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
                    <h3 id="title" class="title-hero" runat="server">Punto de Venta </h3>
                    <div class="example-box-wrapper">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="tile-box tile-box-alt bg-primary">
                                    <div class="tile-header">
                                        Products                       
                                    </div>
                                    <div class="tile-content-wrapper">
                                        <i class="glyph-icon icon-database"></i>
                                        <div id="divProduct" class="tile-content" runat="server">1,000</div>
                                        <small>
                                            <i class="glyph-icon icon-caret-up"></i>
                                            Total Number of Products
                                        </small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="tile-box tile-box-alt bg-google">
                                    <div class="tile-header">
                                        Orders                       
                                    </div>
                                    <div class="tile-content-wrapper">
                                        <i class="glyph-icon font-gray icon-shopping-cart"></i>
                                        <div id="divOrder" class="tile-content" runat="server">5,937</div>
                                        <small>
                                            <i class="glyph-icon icon-caret-up"></i>
                                            Total Number of Completed Orders
                                        </small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="tile-box tile-box-alt bg-blue-alt">
                                    <div class="tile-header">
                                        Users                       
                                    </div>
                                    <div class="tile-content-wrapper">
                                        <i class="glyph-icon icon-user"></i>
                                        <div id="divUser" class="tile-content" runat="server">378</div>
                                        <small>
                                            <i class="glyph-icon icon-caret-up"></i>
                                            Total Number of Users
                                        </small>
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
