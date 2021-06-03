<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PHYSICAPP.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>PhysicApp</title>
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body class="bg-primary">

    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-5">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header">
                                    <h3 class="text-center font-weight-light my-4">Inicio del Sistema PhysicApp</h3>
                                </div>
                                <div class="card-body">
                                    <form id="form1" runat="server">
                                        <div class="form-floating mb-3">
                                            <asp:TextBox ID="inputEmail" runat="server" class="form-control" TextMode="Email" placeholder="name@example.com" required=""></asp:TextBox>
                                            <label for="inputEmail">Ingrese su correo</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <asp:TextBox ID="inputPassword" runat="server" class="form-control" TextMode="Password" placeholder="Password" required="" ></asp:TextBox>
                                            <label for="inputPassword">Ingrese su Password</label>
                                        </div>
                                        <div class="form-check mb-3">
                                            <input class="form-check-input" id="inputRememberPassword" type="checkbox" value="" />
                                            <label class="form-check-label" for="inputRememberPassword">Recordar Password</label>
                                        </div>
                                        <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                            <a class="small" href="password.html"></a>
                                            <%--<a class="btn btn-primary" href="index.html">Iniciar Sesion</a>--%>
                                            <asp:Button ID="btnIniciarSesion" runat="server" class="btn btn-primary" Text="Iniciar Sesion" OnClick="btnIniciarSesion_Click"/>
                                        </div>
                                    </form>
                                </div>
                                <div class="card-footer text-center py-3">
                                    <div class="small"><a href="register.html">Registrarme</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
        <div id="layoutAuthentication_footer">
            <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid px-4">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright &copy; PhysicApp 2021</div>
                        <div>
                           
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>

</body>
</html>
