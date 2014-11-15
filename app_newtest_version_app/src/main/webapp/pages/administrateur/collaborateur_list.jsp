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
			
			
			<div class="row">
					<div class="col-sm-12">
						<section class="panel">
							<header class="panel-heading">
								DataTables hidden row details example <span
									class="tools pull-right"> <a href="javascript:;"
									class="fa fa-chevron-down"></a> <a href="javascript:;"
									class="fa fa-times"></a>
								</span>
							</header>
							<div class="panel-body">
								<div class="adv-table">
									<div id="hidden-table-info_wrapper"
										class="dataTables_wrapper form-inline" role="grid">
										
										<table aria-describedby="hidden-table-info_info"
											class="display table table-bordered dataTable"
											id="hidden-table-info">
											<thead>
												<tr role="row">
													<th>Nom & Prénom</th>
													<th>Email</th>
													<th>Telephone</th>
													<th>Sexe</th>
													<th>Options</th>
												</tr>
											</thead>

											<tbody aria-relevant="all" aria-live="polite" role="alert">
												<s:iterator value="collaborateurs">
													<tr class="gradeA odd"> 
														<td class="  sorting_1"><s:property value="fullname" /></td>
														<td class=" "><s:property value="emailCollaborateur" /></td>
														<td class="hidden-phone "><s:property value="telephoneCollaborateur" /></td>
														<td class="center hidden-phone "><s:property value="sexeString" /></td>
														<td class="center hidden-phone ">A</td>
														<!-- <td class="hiden-items" >amiral</td>
														<td class="hiden-items" >mohamed</td>
														<td class="hiden-items" >mouad</td> -->
													</tr>
												</s:iterator>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
			
			
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
	
	<!--common scripts for all pages-->
	<script src='<s:url value="/js/scripts.js"/>'></script>
	
	
	
</body>
</html>
