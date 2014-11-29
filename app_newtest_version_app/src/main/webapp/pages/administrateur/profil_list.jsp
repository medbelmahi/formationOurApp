<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<link rel="shortcut icon" href="#" type="image/png">
	
	<title>Administrateur : Gestion des Profils</title>
	
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
	
	<!-- wysihtml5 -->
	<link rel="stylesheet" type="text/css" href='<s:url value="/js/bootstrap-wysihtml5/bootstrap-wysihtml5.css"/>' />
	
	<!--gritter css-->
	<link rel="stylesheet" type="text/css" href='<s:url value="/js/gritter/css/jquery.gritter.css"/>' />
	
	<!-- initial style -->
	<link href='<s:url value="/css/style.css"/>' rel="stylesheet">
	<link href='<s:url value="/css/style-responsive.css"/>' rel="stylesheet">
	
	<!-- rating -->
	<link href='<s:url value="/css/jquery.rating.css"/>' rel="stylesheet">
	
	<style type="text/css" rel="stylesheet">
		.ms-selection{
			display: none;
		}
		
		.selectedItem{
			background-color: #65CEA7;
			
		}
	</style>
	
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
                Administration <small>Gestion des Profils</small>
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
        	
        	<!-- success message Start -->
        	<s:if test="isSessionMessageError()">
	        	<div class="row">
	        		<div class="col-md-12">
	        			<div class="alert alert-info fade in">
	                         <button type="button" class="close close-sm" data-dismiss="alert">
	                             <i class="fa fa-times"></i>
	                         </button>
	                         <strong>Message : </strong>  <s:property value="sessionActionMessageText" />
	                     </div>
	        		</div>
	        	</div>
	        </s:if>
			<!-- success message End -->
			
			
			<!-- Error message Start -->
			<s:if test="isSessionActionError()">
				<div class="row">
		        		<div class="col-md-12">
		        			<div class="alert alert-block alert-danger fade in">
	                            <button type="button" class="close close-sm" data-dismiss="alert">
	                                <i class="fa fa-times"></i>
	                            </button>
	                            <strong>Erreur ! </strong> <s:property value="sessionActionErrorText" />
	                        </div>
		        		</div>
		        </div>
		    </s:if>
			<!-- Error message End -->
			
			<!-- Data table des collaborateurs Start -->
				<s:include value="include/data_table_profils.jsp"></s:include>
			<!-- Data table des collaborateurs End -->
			
			
			<!-- Update Collaborateur Modal Form -->
				<s:include value="include/update_profil_modal.jsp"></s:include>
			<!-- End Update Collaborateur Modal Form -->
			
			
			<!-- Ajout Collaborateur Modal Form -->
				<s:include value="include/ajout_profil_modal.jsp"></s:include>
			<!-- End Ajout Collaborateur Modal Form -->
		
			<!-- Begin Gestion des Actions -->
				<s:include value="include/gestion_actions.jsp"></s:include>	
			<!-- End Gestion des Actions -->
			
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
	
	
	<!-- bootstrap-wysihtml5 -->
	<script type="text/javascript" src='<s:url value="/js/bootstrap-wysihtml5/wysihtml5-0.3.0.js"/>'></script>
	<script type="text/javascript" src='<s:url value="/js/bootstrap-wysihtml5/bootstrap-wysihtml5.js"/>'></script>
	<script>
	    jQuery(document).ready(function(){
	         $('.wysihtml5').wysihtml5();
	         
	    });
	</script>
	
	
	<!--common scripts for all pages-->
	<script src='<s:url value="/js/scripts.js"/>'></script>
	
	
	<!-- bootstrap confirmation tool -->
		<script src='<s:url value="/lib/BootstrapConfirmation_files/bootstrap-transition.js"/>'></script>
		<script src='<s:url value="/lib/BootstrapConfirmation_files/bootstrap-tooltip.js"/>'></script>
		<script src='<s:url value="/lib/BootstrapConfirmation_files/holder.js"/>'></script>
		<script src='<s:url value="/lib/BootstrapConfirmation_files/prettify.js"/>'></script>
		<script src='<s:url value="/lib/BootstrapConfirmation_files/application.js"/>'></script>
		<script src='<s:url value="/lib/BootstrapConfirmation_files/bootstrap-confirmation.js"/>'></script>
	<!-- end bootstrap confirmation tool -->
	
	
	<!-- Rating -->
	<script src='<s:url value="/js/jquery.rating.pack.js"/>'></script>
	
	
	<!--gritter script-->
	<script type="text/javascript" src='<s:url value="/js/gritter/js/jquery.gritter.js"/>'></script>
	<script src='<s:url value="/js/gritter/js/gritter-init.js"/>' type="text/javascript"></script>
	
	<!-- Remplir Update Modal -->
		<script type="text/javascript">
		function jsonGetProfil(idProfil){
			$.getJSON('<s:url action="getProfil" namespace="/ajax" />', {idProfil : idProfil}, function(jsonResponse) {
				if(jsonResponse.status === "success"){
					
					//set inputs value from jsonResponse
					document.getElementById("idProfil").value = jsonResponse.idProfil;
					document.getElementById("inputProfilName").value = jsonResponse.nom;
					document.getElementById("inputDescription").value = jsonResponse.description;
					
					//select role option
					var role = document.getElementById("inputRole");
					
					for(var i=0; i<role.length; i++){
						if(jsonResponse.role == role[i].value){
							role[i].selected=true;
						}else{
							role[i].selected=false;
						}
					}
					
					$('#updateModal').modal('show');
				}
		  	});
		}
		//remplir le modal d'affectation des Actions
		function jsonGetProfil_pourAffectation(idProfil){
			$.getJSON('<s:url action="getActions" namespace="/ajax" />', {id : idProfil}, function(jsonResponse) {
				if(jsonResponse.status === "success"){
					
					
					//set inputs value from jsonResponse
					document.getElementById("idProfilAffectation").value = jsonResponse.id;
					
					var checkboxElementInnerHtml = "";
					var stringTemp = "";
					for(i = 0; i < jsonResponse.actionBeans.length; i++){
						if(jsonResponse.actionBeans[i].checked){
							stringTemp = '<div class="col-lg-12 vcenter">'
										+'<div class="col-sm-12 icheck ">'
										+'<div class="square-green single-row col-sm-12">'
										+'<div class="checkbox col-sm-12" style="position: relative;">'
										+'<input name="actions" value="'+jsonResponse.actionBeans[i].action.idAction+'" type="checkbox" checked>'
										+'<label class="popovers" data-trigger="hover" data-placement="right" data-content="'+jsonResponse.actionBeans[i].action.descriptionAction+'" data-original-title="'+jsonResponse.actionBeans[i].action.nomAction+'">'
										+jsonResponse.actionBeans[i].action.nomAction+' </label>'
										+'</div>'
										+'</div>'
										+'</div>'
										+'</div>';
						}else{
							stringTemp = '<div class="col-lg-12 vcenter">'
								+'<div class="col-sm-12 icheck ">'
								+'<div class="square-green single-row col-sm-12">'
								+'<div class="checkbox col-sm-12" style="position: relative;">'
								+'<input name="actions" value="'+jsonResponse.actionBeans[i].action.idAction+'" type="checkbox">'
								+'<label class="popovers" data-trigger="hover" data-placement="right" data-content="'+jsonResponse.actionBeans[i].action.descriptionAction+'" data-original-title="'+jsonResponse.actionBeans[i].action.nomAction+'">'
								+jsonResponse.actionBeans[i].action.nomAction+' </label>'
								+'</div>'
								+'</div>'
								+'</div>'
								+'</div>';
						}
						
						checkboxElementInnerHtml += stringTemp;
					}
					
					var checkboxElement = document.getElementById("checkboxElement");
					checkboxElement.innerHTML = checkboxElementInnerHtml;
					
					document.getElementById("profilTitle").innerHTML = "Affectation des action au profil ( "+jsonResponse.actionBeans[0].action.profils[0].nomProfil+" )";
					 
					 $.getScript('<s:url value="/js/icheck-init.js"/>', function(){
					   // Here you can use anything you defined in the loaded script
					});
					// popovers

				    $('.popovers').popover();
					 
					$('#myModal_action').modal('show');
				}
		  	});
		}
		</script>
	<!-- End Remplir Update Modal -->
	
	
	<!-- Begin Initialisation du tableau utilisateur -->
	<script type="text/javascript">
		function fnFormatDetails ( oTable, nTr )
		{
		    var aData = oTable.fnGetData( nTr );
		    var sOut = '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">';
		    sOut += '<tr><td>Action : </td><td>'+aData[5]+'</td></tr>';
		   /*  sOut += '<tr><td>Email:</td><td>'+aData[2]+'</td></tr>';
		    sOut += '<tr><td>Telephone:</td><td>'+aData[3]+'</td></tr>';
		    sOut += '<tr><td>Sexe:</td><td>'+aData[4]+'</td></tr>';
		    sOut += '<tr><td>Adresse:</td><td>'+aData[7]+'</td></tr>';
		    sOut += '<tr><td>Date de naissance:</td><td>'+aData[8]+'</td></tr>';
		    sOut += '<tr><td>Profil:</td><td>'+aData[5]+'</td></tr>'; */
		    sOut += '</table>';
		
		    return sOut;
		}
	</script>
	<!-- End Initialisation du tableau utilisateur -->
</body>
</html>



<%-- 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<script src="http://code.jquery.com/jquery-2.1.0.min.js"
	type="text/javascript"></script>
<script type="text/javascript">

function jsonGetProfil(idProfil){
	$.getJSON('<s:url action="getProfil" namespace="/ajax" />', {idProfil : idProfil}, function(jsonResponse) {
		if(jsonResponse.status === "success"){
			//get update Form			
			var updateForm = document.getElementById("update_profil");
			
			//set inputs value from jsonResponse
			updateForm.idProfil.value = jsonResponse.idProfil;
			updateForm.nom.value = jsonResponse.nom;
			updateForm.description.value = jsonResponse.description;
			
			//select role option
			for(var i=0; i<updateForm.role.length; i++){
				if(jsonResponse.role == updateForm.role[i].value){
					updateForm.role[i].selected=true;
				}else{
					updateForm.role[i].selected=false;
				}
			}
		}
  	});
}	
</script>
</head>
<body>

	<s:fielderror />
	<!-- My version of Action Notifications -->
	<s:if test="isSessionActionError()">
		Error: <s:property value="sessionActionErrorText" />
	</s:if>
	<s:if test="isSessionMessageError()">
		Message: <s:property value="sessionActionMessageText" />
	</s:if>
	<!-- End of Action Notifications -->

	<br>

	<table border="1">
		<tr>
			<td>Nom</td>
			<td>Role de Base</td>
			<td>Elementaire</td>
			<td>Desciption</td>
			<td>Options</td>
		</tr>

		<s:iterator value="profils">
			<s:if test="isElementaire()">
				<tr style="background-color:#eee;">
					<td><s:property value="nomProfil" /></td>
					<td><s:property value="roleBase" /></td>
					<td><s:property value="elementaire" /></td>
					<td><s:property value="description" /></td>
					<td>
						<!-- Le profil est elementaire (n'est pas besoin de se modifier) -->
					</td>
				</tr>
			</s:if>
			<s:else>
				<tr>
					<td><s:property value="nomProfil" /></td>
					<td><s:property value="roleBase" /></td>
					<td><s:property value="elementaire" /></td>
					<td><s:property value="description" /></td>
					<td>
						<ul>
							<li><a href='javascript:void(0);'
								onclick="jsonGetProfil(<s:property value="idProfil"/>);">Modifier</a></li>
							<li><a
								href='<s:url action="deleteProfil" ><s:param name="id"><s:property value="idProfil"/></s:param></s:url>'>Supprimer</a></li>
							<li><a
								href='<s:url action="actions" ><s:param name="id"><s:property value="idProfil"/></s:param></s:url>'>Actions</a></li>
						</ul>
					</td>
				</tr>
			</s:else>

		</s:iterator>
	</table>

	<!-- Add Form -->
	<hr>
	<h3>Add Profil</h3>
	<s:form id="add_profil" action="addProfil" method="post">
		nom: <s:textfield name="nom" />
		<br>
		description: <s:textfield name="description" />
		<br>
		<s:select label="Role de base"
			list="#{'Administrateur':'Administrateur', 'Responsable de formation':'Responsable de formation', 'Formateur' : 'Formateur'}"
			name="role" />
		<br>
		<s:submit value="Add" />
	</s:form>
	<!-- End Add Form -->

	<hr>
	<h3>Update Profil</h3>
	<!-- Update Form -->
	<s:form id="update_profil" action="updateProfil" method="post">
		<s:hidden name="idProfil" />
		<br>
		<s:textfield name="nom" />
		<br>
		<s:textfield name="description" />
		<br>
		<s:select label="Role de base"
			list="#{'Administrateur':'Administrateur', 'Responsable de formation':'Responsable de formation', 'Formateur' : 'Formateur'}"
			name="role" />
		<br>
		<s:submit value="Update" />
	</s:form>
	<!-- End Update Form -->

</body>
</html>

--%>