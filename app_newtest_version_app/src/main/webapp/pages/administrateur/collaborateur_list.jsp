<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<link rel="shortcut icon" href="#" type="image/png">
	
	<title>Administrateur : Gestion des collaborateurs</title>
	
	<!--dynamic table-->
  	<link href='<s:url value="/js/advanced-datatable/css/demo_page.css"/>' rel="stylesheet" />
  	<link href='<s:url value="/js/advanced-datatable/css/demo_table.css"/>' rel="stylesheet" />
  	<link rel="stylesheet" href='<s:url value="/js/data-tables/DT_bootstrap.css"/>' />
	
	<!--ios7-->
    <link rel="stylesheet" type="text/css" href='<s:url value="/js/ios-switch/switchery.css"/>' />

    <!--icheck-->
    <link href='<s:url value="/js/iCheck/skins/minimal/minimal.css"/>' rel="stylesheet">
    <link href='<s:url value="/js/iCheck/skins/minimal/red.css"/>' rel="stylesheet">
    <link href='<s:url value="/js/iCheck/skins/minimal/green.css"/>' rel="stylesheet">
    <link href='<s:url value="/js/iCheck/skins/minimal/blue.css"/>' rel="stylesheet">
    <link href='<s:url value="/js/iCheck/skins/minimal/yellow.css"/>' rel="stylesheet">
    <link href='<s:url value="/js/iCheck/skins/minimal/purple.css"/>' rel="stylesheet">

    <link href='<s:url value="/js/iCheck/skins/square/square.css"/>' rel="stylesheet">
    <link href='<s:url value="/js/iCheck/skins/square/red.css"/>' rel="stylesheet">
    <link href='<s:url value="/js/iCheck/skins/square/green.css"/>' rel="stylesheet">
    <link href='<s:url value="/js/iCheck/skins/square/blue.css"/>' rel="stylesheet">
    <link href='<s:url value="/js/iCheck/skins/square/yellow.css"/>' rel="stylesheet">
    <link href='<s:url value="/js/iCheck/skins/square/purple.css"/>' rel="stylesheet">

    <link href='<s:url value="/js/iCheck/skins/flat/grey.css"/>' rel="stylesheet">
    <link href='<s:url value="/js/iCheck/skins/flat/red.css"/>' rel="stylesheet">
    <link href='<s:url value="/js/iCheck/skins/flat/green.css"/>' rel="stylesheet">
    <link href='<s:url value="/js/iCheck/skins/flat/blue.css"/>' rel="stylesheet">
    <link href='<s:url value="/js/iCheck/skins/flat/yellow.css"/>' rel="stylesheet">
    <link href='<s:url value="/js/iCheck/skins/flat/purple.css"/>' rel="stylesheet">

    <!--multi-select-->
    <link rel="stylesheet" type="text/css" href='<s:url value="/js/jquery-multi-select/css/multi-select.css"/>' />

    <!--file upload-->
    <link rel="stylesheet" type="text/css" href='<s:url value="/css/bootstrap-fileupload.min.css"/>' />

    <!--tags input-->
    <link rel="stylesheet" type="text/css" href='<s:url value="/js/jquery-tags-input/jquery.tagsinput.css"/>' />
    
      <!--pickers css-->
	  <link rel="stylesheet" type="text/css" href='<s:url value="/js/bootstrap-datepicker/css/datepicker-custom.css"/>' />
	  <link rel="stylesheet" type="text/css" href='<s:url value="/js/bootstrap-timepicker/css/timepicker.css"/>' />
	  <link rel="stylesheet" type="text/css" href='<s:url value="/js/bootstrap-colorpicker/css/colorpicker.css"/>' />
	  <link rel="stylesheet" type="text/css" href='<s:url value="/js/bootstrap-daterangepicker/daterangepicker-bs3.css"/>' />
	  <link rel="stylesheet" type="text/css" href='<s:url value="/js/bootstrap-datetimepicker/css/datetimepicker-custom.css"/>' />
	
	<!-- initial style -->
	<link href='<s:url value="/css/style.css"/>' rel="stylesheet">
	<link href='<s:url value="/css/style-responsive.css"/>' rel="stylesheet">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	  <script src="js/html5shiv.js"></script>
	  <script src="js/respond.min.js"></script>
	  <![endif]-->
</head>

<body class="sticky-header">

<section>
    <!-- left side start-->
		<s:include value="include/left_side_bar.jsp"></s:include>
    <!-- left side end-->
    
    <!-- main content start-->
    <div class="main-content" >

        <!-- header section start-->
        	<s:include value="include/header_section.jsp"></s:include>
        <!-- header section end-->

        <!-- page heading start-->
        <div class="page-heading">
            <h3>
                Administration <small>Gestion des collaborateurs</small>
            </h3>
        </div>
        <!-- page heading end-->

        <!--body wrapper start-->
        <div class="wrapper">
            
			<div class="row"><!-- present working link Start-->
	            <div class="col-md-12">
	                <!--breadcrumbs start -->
	                <ul class="breadcrumb panel">
	                    <li><a href="#"><i class="fa fa-home"></i> Home</a></li>
	                    <li><a href="#">Dashboard</a></li>
	                    <li class="active">Current page</li>
	                </ul>
	                <!--breadcrumbs end -->
	            </div>
        	</div><!-- present working link End-->
			
			<!-- Data table des collaborateurs Start -->
				<s:include value="include/data_table_collaborateurs.jsp"></s:include>
			<!-- Data table des collaborateurs End -->
			
			
			<!-- Update Collaborateur Modal Form -->
		
<%-- 			<s:include value="include/update_collaborateur_modal.jsp"></s:include> --%>
		
			<!-- End Update Collaborateur Modal Form -->
			
			
			<!-- Ajout Collaborateur Modal Form -->
			
				<s:include value="include/ajout_collaborateur_modal.jsp"></s:include>
			
			<!-- End Ajout Collaborateur Modal Form -->
			
			
		
			<!-- Begin Send Message to collaborateur Modal -->
			
			
			
			<!-- End Send Message to collaborateur Modal -->
			
        </div>
        <!--body wrapper end-->

        <!--footer section start-->
        <footer class="sticky-footer">
            2014 &copy; Mouad & Mohamed
        </footer>
        <!--footer section end-->


    </div>
    <!-- main content end-->
</section>
	
	<!-- jquery start -->
	<script src='<s:url value="/js/jquery-1.10.2.min.js"/>'></script>
	<script src='<s:url value="/js/jquery-ui-1.9.2.custom.min.js"/>'></script>
	<script src='<s:url value="/js/jquery-migrate-1.2.1.min.js"/>'></script>
	<script src='<s:url value="/js/bootstrap.min.js"/>'></script>
	<script src='<s:url value="/js/modernizr.min.js"/>'></script>
	<script src='<s:url value="/js/jquery.nicescroll.js"/>'></script>

	
	<!--dynamic table-->
	<script type="text/javascript" language="javascript" src='<s:url value="/js/advanced-datatable/js/jquery.dataTables.js"/>'></script>
	<script type="text/javascript" src='<s:url value="/js/data-tables/DT_bootstrap.js"/>'></script>
	<!--dynamic table initialization -->
	<script src='<s:url value="/js/dynamic_table_init.js"/>'></script>
	
	<!--ios7-->
	<script src='<s:url value="/js/ios-switch/switchery.js"/>' ></script>
	<script src='<s:url value="/js/ios-switch/ios-init.js"/>' ></script>
	
	<!--icheck -->
	<script src='<s:url value="/js/iCheck/jquery.icheck.js"/>'></script>
	<script src='<s:url value="/js/icheck-init.js"/>'></script>
	<!--multi-select-->
	<script type="text/javascript" src='<s:url value="/js/jquery-multi-select/js/jquery.multi-select.js"/>'></script>
	<script type="text/javascript" src='<s:url value="/js/jquery-multi-select/js/jquery.quicksearch.js"/>'></script>
	<script src='<s:url value="/js/multi-select-init.js"/>'></script>
	<!--spinner-->
	<script type="text/javascript" src='<s:url value="/js/fuelux/js/spinner.min.js"/>'></script>
	<script src='<s:url value="/js/spinner-init.js"/>'""></script>
	<!--file upload-->
	<script type="text/javascript" src='<s:url value="/js/bootstrap-fileupload.min.js"/>'></script>
	<!--tags input-->
	<script src='<s:url value="/js/jquery-tags-input/jquery.tagsinput.js"/>'></script>
	<script src='<s:url value="/js/tagsinput-init.js"/>'></script>
	<!--bootstrap input mask-->
	<script type="text/javascript" src='<s:url value="/js/bootstrap-inputmask/bootstrap-inputmask.min.js"/>'></script>

	
	<!--pickers plugins-->
	<script type="text/javascript" src='<s:url value="/js/bootstrap-datepicker/js/bootstrap-datepicker.js"/>'></script>
	<script type="text/javascript" src='<s:url value="/js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"/>'></script>
	<script type="text/javascript" src='<s:url value="/js/bootstrap-daterangepicker/moment.min.js"/>'></script>
	<script type="text/javascript" src='<s:url value="/js/bootstrap-daterangepicker/daterangepicker.js"/>'></script>
	<script type="text/javascript" src='<s:url value="/js/bootstrap-colorpicker/js/bootstrap-colorpicker.js"/>'></script>
	<script type="text/javascript" src='<s:url value="/js/bootstrap-timepicker/js/bootstrap-timepicker.js"/>'></script>
	
	<!--pickers initialization-->
	<script src='<s:url value="/js/pickers-init.js"/>'></script>


	<!--common scripts for all pages-->
	<script src='<s:url value="/js/scripts.js"/>'></script>
	
</body>
</html>
