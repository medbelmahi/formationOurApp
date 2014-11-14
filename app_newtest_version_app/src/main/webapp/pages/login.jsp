<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <link rel="shortcut icon" href="#" type="image/png">

    <title>Login</title>

    <link href='<s:url value="/css/style.css"/>' rel="stylesheet">
    <link href='<s:url value="/css/style-responsive.css"/>' rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="login-body">

<div class="container">
	
    <s:form cssClass="form-signin" action="login" method="get">
        <div class="form-signin-heading text-center">
            <h1 class="sign-title">Se connecter</h1>
            <img src="images/login-logo.png" alt=""/>
        </div>
        <div class="login-wrap">
            <input type="text" class="form-control" placeholder="Email" autofocus name="email" required pattern="^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$">
            <input type="password" class="form-control" placeholder="Mot de passe" required name="password">

            <button class="btn btn-lg btn-login btn-block" type="submit">
<%-- 				<s:submit cssClass="btn btn-lg btn-login btn-block" /> --%>
                <i class="fa fa-check"></i>
            </button>
			
			<!-- singup div
            <div class="registration">
                Not a member yet?
                <a class="" href="registration.html">
                    Signup
                </a>
            </div><!-- End singup div -->
            
            <!-- Begin Remember me -->
            <label class="checkbox">
			<!-- <input type="checkbox" value="remember-me"> Remember me -->
                <span class="pull-right">
                    <a data-toggle="modal" href="#myModal"> Mot de passe oublié ?</a>

                </span>
                
            </label><!-- End Remember me -->

        </div>

        

    </s:form>
	
	<!-- Modal -->
        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Mot de passe oublié ?</h4>
                    </div>
                    <form action="theAction" id="theId">
	                    <div class="modal-body">
	                        <p>Entrez votre adresse e-mail ci-dessous pour réinitialiser votre mot de passe.</p>
	                        <input type="text" name="email_" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
	
	                    </div>
	                    <div class="modal-footer">
	                        <button data-dismiss="modal" class="btn btn-default" type="button">Annuler</button>
	                        <button class="btn btn-primary" type="button">Envoyer</button>
	                    </div>
	                </form>
                </div>
            </div>
        </div>
        <!-- modal -->


</div>

<script src='<s:url value="/js/jquery-1.10.2.min.js"/>'></script>
<script src='<s:url value="/js/bootstrap.min.js"/>'></script>
<script src='<s:url value="/js/modernizr.min.js"/>'></script>

</body>
</html>