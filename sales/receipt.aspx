<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="receipt.aspx.cs" Inherits="PointSaleSystemWeb.sales.receipt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Point of Sale - Receipt</title>
    <meta charset="UTF-8" />
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

    <!-- Favicons -->

    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/images/icons/apple-touch-icon-144-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/images/icons/apple-touch-icon-114-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/images/icons/apple-touch-icon-72-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" href="../assets/images/icons/apple-touch-icon-57-precomposed.png" />
    <link rel="shortcut icon" href="../assets/images/icons/favicon.png" />


    <link rel="stylesheet" type="text/css" href="../assets/bootstrap/css/bootstrap.css" />
    <!-- HELPERS -->

    <link rel="stylesheet" type="text/css" href="../assets/helpers/animate.css" />
    <link rel="stylesheet" type="text/css" href="../assets/helpers/backgrounds.css" />
    <link rel="stylesheet" type="text/css" href="../assets/helpers/boilerplate.css" />
    <link rel="stylesheet" type="text/css" href="../assets/helpers/border-radius.css" />
    <link rel="stylesheet" type="text/css" href="../assets/helpers/grid.css" />
    <link rel="stylesheet" type="text/css" href="../assets/helpers/page-transitions.css" />
    <link rel="stylesheet" type="text/css" href="../assets/helpers/spacing.css" />
    <link rel="stylesheet" type="text/css" href="../assets/helpers/typography.css" />
    <link rel="stylesheet" type="text/css" href="../assets/helpers/utils.css" />
    <link rel="stylesheet" type="text/css" href="../assets/helpers/colors.css" />

    <!-- ELEMENTS -->

    <link rel="stylesheet" type="text/css" href="../assets/elements/badges.css" />
    <link rel="stylesheet" type="text/css" href="../assets/elements/buttons.css" />
    <link rel="stylesheet" type="text/css" href="../assets/elements/content-box.css" />
    <link rel="stylesheet" type="text/css" href="../assets/elements/dashboard-box.css" />
    <link rel="stylesheet" type="text/css" href="../assets/elements/forms.css" />
    <link rel="stylesheet" type="text/css" href="../assets/elements/images.css" />
    <link rel="stylesheet" type="text/css" href="../assets/elements/info-box.css" />
    <link rel="stylesheet" type="text/css" href="../assets/elements/invoice.css" />
    <link rel="stylesheet" type="text/css" href="../assets/elements/loading-indicators.css" />
    <link rel="stylesheet" type="text/css" href="../assets/elements/menus.css" />
    <link rel="stylesheet" type="text/css" href="../assets/elements/panel-box.css" />
    <link rel="stylesheet" type="text/css" href="../assets/elements/response-messages.css" />
    <link rel="stylesheet" type="text/css" href="../assets/elements/responsive-tables.css" />
    <link rel="stylesheet" type="text/css" href="../assets/elements/ribbon.css" />
    <link rel="stylesheet" type="text/css" href="../assets/elements/social-box.css" />
    <link rel="stylesheet" type="text/css" href="../assets/elements/tables.css" />
    <link rel="stylesheet" type="text/css" href="../assets/elements/tile-box.css" />
    <link rel="stylesheet" type="text/css" href="../assets/elements/timeline.css" />

    <!-- Custom -->

    <link rel="stylesheet" type="text/css" href="../assets/style.css" />


    <!-- ICONS -->

    <link rel="stylesheet" type="text/css" href="../assets/icons/fontawesome/fontawesome.css" />
    <link rel="stylesheet" type="text/css" href="../assets/icons/linecons/linecons.css" />
    <link rel="stylesheet" type="text/css" href="../assets/icons/spinnericon/spinnericon.css" />

    <!-- Components theme -->

    <link rel="stylesheet" type="text/css" href="../assets/themes/components/default.css" />
    <link rel="stylesheet" type="text/css" href="../assets/themes/components/border-radius.css" />


    <!-- JS Core -->

    <script type="text/javascript" src="../assets/js-core/jquery-core.js"></script>
    <script type="text/javascript" src="../assets/js-core/jquery-ui-core.js"></script>
    <script type="text/javascript" src="../assets/js-core/jquery-ui-widget.js"></script>
    <script type="text/javascript" src="../assets/js-core/jquery-ui-mouse.js"></script>
    <script type="text/javascript" src="../assets/js-core/jquery-ui-position.js"></script>
    <!--<script type="text/javascript" src="../assets/js-core/transition.js"></script>-->
    <script type="text/javascript" src="../assets/js-core/modernizr.js"></script>
    <script type="text/javascript" src="../assets/js-core/jquery-cookie.js"></script>


</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div id="sb-site">
            <div id="page-wrapper" class="receipt-top">
                <div id="page-content-wrapper">
                    <div id="page-content">
                        <div class="row">
                            <div class="col-sm-4">
                                <div id="div_receipt" class="profile-box content-box">
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
                                    <div class="content-box-header pad0A bg-default">
                                        <div class="user-details text-center">
                                            <div>
                                                <asp:Label ID="lblOrderID" Visible="false" runat="server" />
                                            </div>
                                            <div>
                                                <asp:Label ID="lblShopName" CssClass="receipt-line font-size-26 pad5T" Text="La Punto de Venta" runat="server" />
                                            </div>
                                            <div>
                                                <asp:Label ID="lblAddress" CssClass="receipt-line  pad0T" Text="Address" runat="server" />
                                            </div>
                                            <div>
                                                <asp:Label ID="lblPhone" CssClass="receipt-line pad0T pad5B" Text="Phone" runat="server" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="content-box-wrapper receipt-content">
                                        <div class="row">
                                            <div class="col-xs-12 " runat="server">
                                                <div class="col-xs-3 pad5B font-size-14">
                                                    <asp:Label ID="lblDate" Text="12/11/2018" runat="server" />
                                                </div>

                                                <div class="col-xs-5 float-right pad5B font-size-14" runat="server">
                                                    <asp:Label ID="lblCustomer" Text="CUSTOMER: Christian Ofori" CssClass="float-right" runat="server" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <div class="col-xs-5 pad5B pad5T font-size-12">
                                                    <asp:Label ID="lblOrderNumber" Text="ORDER NO: 1234567890" runat="server" />
                                                </div>
                                                <div class="form-horizontal bordered-row">
                                                    <div class="form-group receipt-content">
                                                        <div class="col-xs-10 col-xs-offset-1">
                                                            <table class="table table-condensed receipt-table">
                                                                <thead>
                                                                    <tr>
                                                                        <th class="text-center table-header">Product</th>
                                                                        <th class="text-center table-header">Quantity</th>
                                                                        <th class="text-center table-header">Price</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody id="tblOrderItems" runat="server">
                                                                    <tr>
                                                                        <td class="text-center">Milo</td>
                                                                        <td class="text-center">2</td>
                                                                        <td class="text-center">34.00</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="text-center">Milo</td>
                                                                        <td class="text-center">2</td>
                                                                        <td class="text-center">34.00</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="text-center">Milo</td>
                                                                        <td class="text-center">2</td>
                                                                        <td class="text-center">34.00</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="text-center">Milo</td>
                                                                        <td class="text-center">2</td>
                                                                        <td class="text-center">34.00</td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                    <div class="form-group receipt-content">
                                                        <div class="col-xs-12">
                                                            <asp:Label ID="lblUser" Text="User" CssClass="font-size-12" runat="server" />
                                                            <asp:Label ID="lblTotal" Text="TOTAL: GHȻ 50.00" CssClass="font-size-18 font-bold float-right" runat="server" />
                                                        </div>
                                                    </div>
                                                    <div class="form-group receipt-content text-center">
                                                        <asp:Label ID="Label1" Text="THANKS FOR SHOPPING WITH US" CssClass="font-size-12" runat="server" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12">
                                    <a href="~/manager/add-order.aspx" type="button" class="btn btn-info" runat="server">
                                        <span>
                                            <i class="glyph-icon icon-arrow-circle-o-left"></i>
                                        </span>
                                        Back
                                    </a>
                                    <button type="button" class="btn btn-primary float-right" onclick="printDiv('div_receipt')">
                                        Print
                                        <span>
                                            <i class="glyph-icon icon-print"></i>
                                        </span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script type="text/javascript" src="../assets/widgets/content-box/contentbox.js"></script>
</body>
<script type="text/javascript">
    function printDiv(print) {
        var headstr = "<html><head><title></title></head><body>";
        var footstr = "</body";
        var newstr = document.getElementById(print).innerHTML;
        var oldstr = document.body.innerHTML;
        document.body.innerHTML = headstr + newstr + footstr;
        window.print();
        document.body.innerHTML = oldstr;
        return false;
    }
</script>

</html>
