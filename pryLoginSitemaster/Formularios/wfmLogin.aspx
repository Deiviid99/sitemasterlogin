<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfmLogin.aspx.cs" Inherits="pryLoginSitemaster.Formularios.wfmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="../Template/images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../Template/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../Template/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../Template/fonts/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../Template/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../Template/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../Template/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../Template/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../Template/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../Template/css/util.css">
    <link rel="stylesheet" type="text/css" href="../Template/css/main.css">
    <!--===============================================================================================-->
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <div class="limiter">
                    <div class="container-login100">
                        <div class="wrap-login100">
                            <%-- <form class="login100-form validate-form">--%>
                            <span class="login100-form-title p-b-26">Inicio de Sesión
                            </span>
                            <span class="login100-form-title p-b-48">
                                <i class="zmdi zmdi-account"></i>
                            </span>

                            <div class="wrap-input100 validate-input" data-validate="Valid email is: a@b.c">
                                <%--<input class="input100" type="text" name="email">--%>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email campo obligatorio." ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="input100" TextMode="Email"></asp:TextBox>
                                <%--<asp:TextBox ID="txtEmail" runat="server" CssClass="input100" TextMode="Email"></asp:TextBox>--%>
                                <span class="focus-input100" data-placeholder="Email"></span>
                            </div>

                            <div class="wrap-input100 validate-input" data-validate="Enter password">
                                <span class="btn-show-pass">
                                    <i class="zmdi zmdi-eye"></i>
                                </span>
                               <%-- <input class="input100" type="password" name="pass">--%>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password campo obligatorio." ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="input100" TextMode="Password"></asp:TextBox>
                                <%--<<asp:TextBox ID="txtPassword" runat="server" CssClass="input100" TextMode="Password"></asp:TextBox>--%>
                                <span class="focus-input100" data-placeholder="Password"></span>
                            </div>

                            <div class="text">

                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="Smaller" ForeColor="Red" />

                            </div>

                            <div class="text-right">
                                <a class="txt2" href="#"><i class="zmdi zmdi-key"></i>Recuperar contraseña</a>
                            </div>

                            <div class="container-login100-form-btn">
                                <div class="wrap-login100-form-btn">
                                    <div class="login100-form-bgbtn"></div>
                                    <%--<button class="login100-form-btn">
                                        Login
                                    </button>--%>
                                    <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="Transparent" CssClass="login100-form-btn" OnClick="btnLogin_Click" />
                                    <%--<asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="Transparent" CssClass="login100-form-btn" OnClick="btnLogin_Click1" />--%>
                                </div>
                            </div>
                            <br />
                            <div class="text-center">
                                <span class="txt1">¿Aún no te has registrado?
                                </span>
                                <a class="txt2" href="#">Crear cuenta
                                </a>
                            </div>
                            <%--</form>--%>
                        </div>
                    </div>
                </div>

                <div id="dropDownSelect1"></div>
                <!--===============================================================================================-->
                <script src="../Template/vendor/jquery/jquery-3.2.1.min.js"></script>
                <!--===============================================================================================-->
                <script src="../Template/vendor/animsition/js/animsition.min.js"></script>
                <!--===============================================================================================-->
                <script src="../Template/vendor/bootstrap/js/popper.js"></script>
                <script src="../Template/vendor/bootstrap/js/bootstrap.min.js"></script>
                <!--===============================================================================================-->
                <script src="../Template/vendor/select2/select2.min.js"></script>
                <!--===============================================================================================-->
                <script src="../Template/vendor/daterangepicker/moment.min.js"></script>
                <script src="../Template/vendor/daterangepicker/daterangepicker.js"></script>
                <!--===============================================================================================-->
                <script src="../Template/vendor/countdowntime/countdowntime.js"></script>
                <!--===============================================================================================-->
                <script src="../Template/js/main.js"></script>
            </div>
        </div>
    </form>
</body>
</html>
