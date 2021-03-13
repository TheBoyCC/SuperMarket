<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="PointSaleSystemWeb._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <style>
        /* Loading Spinner */
        .spinner{margin:0;width:70px;height:18px;margin:-35px 0 0 -9px;position:absolute;top:50%;left:50%;text-align:center}.spinner > div{width:18px;height:18px;background-color:#333;border-radius:100%;display:inline-block;-webkit-animation:bouncedelay 1.4s infinite ease-in-out;animation:bouncedelay 1.4s infinite ease-in-out;-webkit-animation-fill-mode:both;animation-fill-mode:both}.spinner .bounce1{-webkit-animation-delay:-.32s;animation-delay:-.32s}.spinner .bounce2{-webkit-animation-delay:-.16s;animation-delay:-.16s}@-webkit-keyframes bouncedelay{0%,80%,100%{-webkit-transform:scale(0.0)}40%{-webkit-transform:scale(1.0)}}@keyframes bouncedelay{0%,80%,100%{transform:scale(0.0);-webkit-transform:scale(0.0)}40%{transform:scale(1.0);-webkit-transform:scale(1.0)}}
    </style>

    <title>Point of Sale - Login</title>
    <meta charset="UTF-8" />

    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

    <!-- Favicons -->

    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/images/icons/apple-touch-icon-144-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/images/icons/apple-touch-icon-114-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/images/icons/apple-touch-icon-72-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" href="assets/images/icons/apple-touch-icon-57-precomposed.png" />
    <link rel="shortcut icon" href="assets/images/icons/favicon.png" />


    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.css" />


    <!-- HELPERS -->

    <link rel="stylesheet" type="text/css" href="assets/helpers/animate.css" />
    <link rel="stylesheet" type="text/css" href="assets/helpers/backgrounds.css" />
    <link rel="stylesheet" type="text/css" href="assets/helpers/boilerplate.css" />
    <link rel="stylesheet" type="text/css" href="assets/helpers/border-radius.css" />
    <link rel="stylesheet" type="text/css" href="assets/helpers/grid.css" />
    <link rel="stylesheet" type="text/css" href="assets/helpers/page-transitions.css" />
    <link rel="stylesheet" type="text/css" href="assets/helpers/spacing.css" />
    <link rel="stylesheet" type="text/css" href="assets/helpers/typography.css" />
    <link rel="stylesheet" type="text/css" href="assets/helpers/utils.css" />
    <link rel="stylesheet" type="text/css" href="assets/helpers/colors.css" />

    <!-- ELEMENTS -->

    <link rel="stylesheet" type="text/css" href="assets/elements/buttons.css" />
    <link rel="stylesheet" type="text/css" href="assets/elements/content-box.css" />
    <link rel="stylesheet" type="text/css" href="assets/elements/dashboard-box.css" />
    <link rel="stylesheet" type="text/css" href="assets/elements/forms.css" />
    <link rel="stylesheet" type="text/css" href="assets/elements/images.css" />
    <link rel="stylesheet" type="text/css" href="assets/elements/info-box.css" />
    <link rel="stylesheet" type="text/css" href="assets/elements/invoice.css" />
    <link rel="stylesheet" type="text/css" href="assets/elements/loading-indicators.css" />
    <link rel="stylesheet" type="text/css" href="assets/elements/menus.css" />
    <link rel="stylesheet" type="text/css" href="assets/elements/panel-box.css" />
    <link rel="stylesheet" type="text/css" href="assets/elements/response-messages.css" />
    <link rel="stylesheet" type="text/css" href="assets/elements/responsive-tables.css" />
    <link rel="stylesheet" type="text/css" href="assets/elements/ribbon.css" />
    <link rel="stylesheet" type="text/css" href="assets/elements/social-box.css" />
    <link rel="stylesheet" type="text/css" href="assets/elements/tables.css" />
    <link rel="stylesheet" type="text/css" href="assets/elements/tile-box.css" />
    <link rel="stylesheet" type="text/css" href="assets/elements/timeline.css" />



    <!-- ICONS -->

    <link rel="stylesheet" type="text/css" href="assets/icons/fontawesome/fontawesome.css" />
    <link rel="stylesheet" type="text/css" href="assets/icons/linecons/linecons.css" />
    <link rel="stylesheet" type="text/css" href="assets/icons/spinnericon/spinnericon.css" />
    <link rel="stylesheet" type="text/css" href="assets/icons/elusive/elusive.css" />

    <!-- SNIPPETS -->

    <link rel="stylesheet" type="text/css" href="assets/snippets/login-box.css" />
    <link rel="stylesheet" type="text/css" href="assets/snippets/notification-box.css" />

    <!-- Admin theme -->

    <link rel="stylesheet" type="text/css" href="assets/themes/admin/layout.css" />
    <link rel="stylesheet" type="text/css" href="assets/themes/admin/color-schemes/default.css" />

    <!-- Custom -->

    <link href="assets/style.css" rel="stylesheet" />

    <!-- Components theme -->

    <link rel="stylesheet" type="text/css" href="assets/themes/components/default.css" />
    <link rel="stylesheet" type="text/css" href="assets/themes/components/border-radius.css" />

    <!-- Admin responsive -->

    <link rel="stylesheet" type="text/css" href="assets/helpers/responsive-elements.css" />
    <link rel="stylesheet" type="text/css" href="assets/helpers/admin-responsive.css" />

    <!-- JS Core -->

    <script type="text/javascript" src="assets/js-core/jquery-core.js"></script>
    <script type="text/javascript" src="assets/js-core/jquery-ui-core.js"></script>
    <script type="text/javascript" src="assets/js-core/jquery-ui-widget.js"></script>
    <script type="text/javascript" src="assets/js-core/jquery-ui-mouse.js"></script>
    <script type="text/javascript" src="assets/js-core/jquery-ui-position.js"></script>
    <!--<script type="text/javascript" src="assets/js-core/transition.js"></script>-->
    <script type="text/javascript" src="assets/js-core/modernizr.js"></script>
    <script type="text/javascript" src="assets/js-core/jquery-cookie.js"></script>
    <script src="assets/widgets/parsley/parsley.js"></script>

        <script type="text/javascript">
            $(window).load(function () {
                setTimeout(function () {
                    $('#loading').fadeOut(400, "linear");
                }, 300);
            });
    </script>

</head>
<body>

    <style type="text/css">
        html, body, form {
            height: 100%;
            background: #dedede;
            overflow: hidden;
        }
    </style>
    <script type="text/javascript" src="assets/widgets/wow/wow.js"></script>
    <script type="text/javascript">
        /* WOW animations */

        wow = new WOW({
            animateClass: 'animated',
            offset: 100
        });
        wow.init();
    </script>

    <img src="assets/image-resources/blurred-bg/blurred-bg-7.jpg" class="login-img wow fadeIn" alt="" />

    <form id="form1" runat="server" defaultfocus="txtUsername">

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="center-vertical">
            <div id="loading">
                <div class="spinner">
                    <div class="bounce1"></div>
                    <div class="bounce2"></div>
                    <div class="bounce3"></div>
                </div>
            </div>
            <div class="center-content row">

                <div class="col-md-3 center-margin">
                    <div class="form" id="demo-form" data-parsley-validate="">
                        <div class="content-box wow bounceInDown">
                            <asp:Panel ID="alertPanel" Display="Dynamic" Visible="false" runat="server">
                                <div class="alert alert-close alert-danger">
                                    <a href="#" id="clsAlert" title="Close" class="glyph-icon alert-close-btn icon-remove" runat="server" onserverclick="clsAlert_ServerClick" causesvalidation="false"></a>
                                    <div class="bg-red alert-icon">
                                        <i class="glyph-icon icon-times"></i>
                                    </div>
                                    <div class="alert-content">
                                        <h4 class="alert-title">
                                            <asp:Label ID="alertTitle" Text="Success message title" runat="server"></asp:Label>
                                        </h4>
                                        <p>
                                            <asp:Label ID="alertMessage" Text="Information message box using the" runat="server"></asp:Label>
                                        </p>
                                    </div>
                                </div>
                            </asp:Panel>
                            <div class="content-box-wrapper">
                                <img class="mrg25B center-margin display-block" src="assets/image-resources/logo.jpg" style="height: 100px;" alt="" />

                                <div class="form-group has-feedback">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="txtUsername" placeholder="Username" runat="server" />
                                        <span class="input-group-addon bg-blue">
                                            <i class="glyph-icon icon-elusive-user"></i>
                                        </span>
                                    </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" ForeColor="Red" runat="server" ControlToValidate="txtUsername"
                                        ErrorMessage="Enter Username"
                                        Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group has-feedback">
                                    <div class="input-group">
                                        <asp:TextBox TextMode="password" CssClass="form-control" ID="txtPassword" placeholder="Password" runat="server" />
                                        <span class="input-group-addon bg-blue">
                                            <i class="glyph-icon icon-elusive-lock"></i>
                                        </span>
                                    </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" ForeColor="Red" runat="server" ControlToValidate="txtPassword"
                                        ErrorMessage="Enter Password"
                                        Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                </div>
                                <asp:Button type="button" ID="btnSignIn" CssClass="btn btn-info btn-block" OnClick="btnSignIn_Click" runat="server" Text="Sign In" />

                                <div class="form-group">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </form>
    <!-- WIDGETS -->

    <!-- jGrowl notifications -->

    <script type="text/javascript" src="assets/widgets/jgrowl-notifications/jgrowl.js"></script>
    <script type="text/javascript" src="assets/widgets/jgrowl-notifications/jgrowl-demo.js"></script>

    <script type="text/javascript" src="assets/bootstrap/js/bootstrap.js"></script>

    <!-- Parsley -->

    <script type="text/javascript" src="assets/widgets/parsley/parsley.js"></script>

    <!-- Superclick -->

    <script type="text/javascript" src="assets/widgets/superclick/superclick.js"></script>

    <!-- Input switch alternate -->

    <script type="text/javascript" src="assets/widgets/input-switch/inputswitch-alt.js"></script>

    <!-- Slim scroll -->

    <script type="text/javascript" src="assets/widgets/slimscroll/slimscroll.js"></script>

    <!-- Slidebars -->

    <script type="text/javascript" src="assets/widgets/slidebars/slidebars.js"></script>
    <script type="text/javascript" src="assets/widgets/slidebars/slidebars-demo.js"></script>

    <!-- PieGage -->

    <script type="text/javascript" src="assets/widgets/charts/piegage/piegage.js"></script>

    <!-- Screenfull -->

    <script type="text/javascript" src="assets/widgets/screenfull/screenfull.js"></script>

    <!-- Content box -->

    <script type="text/javascript" src="assets/widgets/content-box/contentbox.js"></script>

    <!-- Overlay -->

    <script type="text/javascript" src="assets/widgets/overlay/overlay.js"></script>

    <!-- Widgets init for demo -->

    <script type="text/javascript" src="assets/js-init/widgets-init.js"></script>

    <!-- Theme layout -->

    <script type="text/javascript" src="assets/themes/admin/layout.js"></script>

    <!-- Theme switcher -->

    <script type="text/javascript" src="assets/widgets/theme-switcher/themeswitcher.js"></script>


</body>

</html>

