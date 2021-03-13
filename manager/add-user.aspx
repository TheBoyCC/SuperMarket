<%@ Page Title="" Language="C#" MasterPageFile="~/manager/manager.Master" AutoEventWireup="true" CodeBehind="add-user.aspx.cs" Inherits="PointSaleSystemWeb.manager.add_user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Point of Sale - Add User
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <link href="../assets/style.css" rel="stylesheet" />

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
    <script type="text/javascript" src="../assets/widgets/chosen/chosen.js"></script>
    <script type="text/javascript" src="../assets/widgets/chosen/chosen-demo.js"></script>


    <div id="page-content">
        <div class="container">
            <div id="page-title">
                <h2>Add User</h2>
                <p>
                    <asp:Label ID="lblChangePass" Text="Add Details of User." runat="server" />
                    <asp:Label ID="lblFileName" Visible="false" Text="" runat="server" />
                    <asp:Label ID="lblUserID" Visible="false" Text="Add and Manage System Settings." runat="server" />
                    <asp:Label ID="lblPassword" Visible="false" Text="Add and Manage System Settings." runat="server" />
                </p>
            </div>
            <div class="panel">
                <div class="panel-body">
                    <div class="example-box-wrapper">
                        <div class="row">
                            <div class="col-sm-7">
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
                                    <asp:Panel ID="alertSuccessPanel" Display="Dynamic" Visible="false" Height="60px" runat="server">
                                        <div class="alert alert-close alert-success">
                                            <a href="#" id="clsAlertSuccess" title="Close" class="glyph-icon alert-close-btn icon-remove" runat="server" onserverclick="clsAlertError_ServerClick" causesvalidation="false"></a>
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
                                    <h3 class="content-box-header bg-white text-center">Enter Details of User</h3>
                                    <div class="content-box-wrapper">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="form-horizontal bordered-row">
                                                    <!-- Name -->
                                                    <div class="form-group remove-border">
                                                        <div class="col-sm-12">
                                                            <div class="col-sm-6">
                                                                <label>First Name</label>
                                                                <asp:TextBox ID="txtFirstName" CssClass="form-control" placeholder="Enter First Name" runat="server" />
                                                                <asp:RequiredFieldValidator ID="RequiredFiedValidatorFName" ForeColor="Red" runat="server"
                                                                    ControlToValidate="txtFirstName"
                                                                    ErrorMessage="Enter First Name"
                                                                    Display="Dynamic">
                                                                    </asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorFirstName" runat="server"
                                                                    ControlToValidate="txtFirstName"
                                                                    ForeColor="Red"
                                                                    ValidationExpression="[a-zA-Z ]*$"
                                                                    ErrorMessage="Enter Aplhabets"
                                                                    Display="Dynamic">
                                                                 </asp:RegularExpressionValidator>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <label>Last Name</label>
                                                                <asp:TextBox ID="txtLastName" CssClass="form-control" placeholder="Enter Last Name" runat="server" />
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorLName" ForeColor="Red" runat="server"
                                                                    ControlToValidate="txtLastName"
                                                                    ErrorMessage="Enter Last Name"
                                                                    Display="Dynamic">
                                                                    </asp:RequiredFieldValidator>
                                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                                                    ControlToValidate="txtLastName"
                                                                    ForeColor="Red"
                                                                    ValidationExpression="[a-zA-Z -]*$"
                                                                    ErrorMessage="Enter Aplhabets"
                                                                    Display="Dynamic">
                                                                 </asp:RegularExpressionValidator>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Gender & DOB -->
                                                    <div class="form-group remove-border">
                                                        <div class="col-sm-12">
                                                            <div class="col-sm-6 ">
                                                                <div>
                                                                    <label>Gender</label>
                                                                    <asp:DropDownList ID="ddlGender" CssClass="custom-select form-control" runat="server">
                                                                        <asp:ListItem Text="-- Select Gender --" Value="0" Selected="True" />
                                                                        <asp:ListItem Text="Male" />
                                                                        <asp:ListItem Text="Female" />
                                                                    </asp:DropDownList>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server"
                                                                        ControlToValidate="ddlGender"
                                                                        ErrorMessage="Select Gender"
                                                                        InitialValue="0"
                                                                        Display="Dynamic">
                                                                    </asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <label>Date of Birth</label>
                                                                <div class="input-prepend input-group">
                                                                    <span class="add-on input-group-addon">
                                                                        <i class="glyph-icon icon-calendar"></i>
                                                                    </span>
                                                                    <asp:TextBox ID="txtDOB" CssClass="bootstrap-datepicker form-control" placeholder="yyyy / mm / dd" runat="server" />
                                                                </div>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server"
                                                                    ControlToValidate="txtDOB"
                                                                    ErrorMessage="Enter Date of Birth"
                                                                    Display="Dynamic">
                                                                    </asp:RequiredFieldValidator>
                                                                <asp:RangeValidator ID="RangeValidatorDOB" runat="server"
                                                                    ControlToValidate="txtDOB"
                                                                    ForeColor="Red"
                                                                    ErrorMessage="Age must be between 24 & 60"
                                                                    MinimumValue="1958/01/31" MaximumValue="1994/12/31"
                                                                    Type="Date"
                                                                    Display="Dynamic">
                                                                 </asp:RangeValidator>
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <!-- Phone & Address -->
                                                    <div class="form-group remove-border">
                                                        <div class="col-sm-12">
                                                            <div class="col-sm-6">
                                                                <label>Phone Number</label>
                                                                <asp:TextBox ID="txtPhone" CssClass="form-control" placeholder="Enter Phone Number" MaxLength="10" runat="server" />
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" runat="server"
                                                                    ControlToValidate="txtPhone"
                                                                    ErrorMessage="Enter Phone Number"
                                                                    Display="Dynamic">
                                                                    </asp:RequiredFieldValidator>
                                                                <asp:CustomValidator ID="valPhone" ForeColor="Red" runat="server"
                                                                    ControlToValidate="txtPhone"
                                                                    ErrorMessage=""
                                                                    Display="Dynamic"
                                                                    OnServerValidate="valPhone_ServerValidate">
                                                                    </asp:CustomValidator>
                                                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server"
                                                                    ControlToValidate="txtPhone"
                                                                    ForeColor="Red"
                                                                    ValidationExpression="[0-9 ]*$"
                                                                    ErrorMessage="Enter Numbers"
                                                                    Display="Dynamic">
                                                                </asp:RegularExpressionValidator>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <label>Address</label>
                                                                <asp:TextBox ID="txtAddress" CssClass="form-control" placeholder="Enter Address" TextMode="MultiLine" runat="server" />
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ForeColor="Red" runat="server"
                                                                    ControlToValidate="txtAddress"
                                                                    ErrorMessage="Enter Address"
                                                                    Display="Dynamic">
                                                                </asp:RequiredFieldValidator>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Role & Username -->
                                                    <div class="form-group remove-border">
                                                        <div class="col-sm-12">
                                                            <div class="col-sm-6 ">
                                                                <div>
                                                                    <label>Role</label>
                                                                    <asp:DropDownList ID="ddlRole" CssClass="custom-select form-control" runat="server" OnSelectedIndexChanged="ddlRole_SelectedIndexChanged" AutoPostBack="true">
                                                                        <asp:ListItem Text="-- Select Role --" Value="0" Selected="True" />
                                                                    </asp:DropDownList>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" runat="server"
                                                                        ControlToValidate="ddlRole"
                                                                        ErrorMessage="Select Role"
                                                                        InitialValue="0"
                                                                        Display="Dynamic">
                                                                 </asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-6">
                                                                <label>Username</label>
                                                                <asp:TextBox ID="txtUserName" CssClass="form-control" placeholder="Username" BackColor="White" ReadOnly="true" runat="server" />
                                                            </div>
                                                            <asp:TextBox ID="txtPassword" CssClass="form-control" Visible="false" placeholder="Password" BackColor="White" ReadOnly="true" runat="server" />
                                                        </div>
                                                    </div>
                                                    <div class="button-pane content-box text-center pad20A mrg20T">
                                                        <button id="btnSaveDetails" type="button" class="btn btn-alt btn-hover btn-primary float-right tooltip-button" onserverclick="btnSaveDetails_ServerClick" runat="server" causesvalidation="true" data-placement="top" title="Save Details">
                                                            <span>Save Details</span>
                                                            <i class="glyph-icon icon-save"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="content-box">
                                    <h3 class="content-box-header bg-white text-center">Select Picture</h3>
                                    <div class="form-horizontal bordered-row">
                                        <div class="form-group remove-border pad20T pad15B">
                                            <div class="text-center">
                                                <asp:Image ID="imgUser" CssClass="user-image" runat="server" Height="250px" Width="250px" />
                                            </div>
                                        </div>
                                        <div class="form-group remove-border pad0T mrg25B">
                                            <div class="col-sm-10 col-sm-offset-1 text-center">
                                                <a id="btnSelect" href="#uploadPicture" data-placement="top" title="Select Picture" data-toggle="modal" class="btn btn-alt btn-hover btn-info tooltip-button" runat="server">
                                                    <span>Select Picture</span>
                                                    <i class="glyph-icon icon-file-photo-o"></i>
                                                </a>
                                                <a id="btnChange" visible="false" href="#uploadPicture" data-placement="top" title="Change Picture" data-toggle="modal" class="btn btn-info tooltip-button" runat="server">Change Picture</a>
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

    <div class="modal fade" id="uploadPicture" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-primary">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">
                        <asp:Label ID="lblModTitle" Text="Upload Picture" runat="server"></asp:Label>
                    </h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <asp:FileUpload ID="fileUpload" CssClass="form-control" runat="server" />
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button id="btnSavePicture" type="button" class="btn btn-primary" runat="server" onserverclick="btnSavePicture_ServerClick" causesvalidation="false">Save</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
