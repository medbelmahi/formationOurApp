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
                Administration <small>Gestion des utilisateurs</small>
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
				<s:include value="include/data_table_utilisateurs.jsp"></s:include>
			<!-- Data table des collaborateurs End -->
			
			
			<!-- Update Collaborateur Modal Form -->
				<s:include value="include/update_utilisateur_modal.jsp"></s:include>
			<!-- End Update Collaborateur Modal Form -->
			
			
			<!-- Ajout Collaborateur Modal Form -->
				<s:include value="include/ajout_utilisateur_modal.jsp"></s:include>
			<!-- End Ajout Collaborateur Modal Form -->
		
			<!-- Begin Send Message to collaborateur Modal -->
				<s:include value="include/send_msg_utilisateur_modal.jsp"></s:include>	
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
		
		function jsonGetUtilisateur(idUtilisateur){
			//make ajax request to /ajax/getCollaborateur?idCollaborateur=x
			$.getJSON('<s:url action="getUtilisateur" namespace="/ajax" />', {idUtilisateur : idUtilisateur}, function(jsonResponse) {
				//if satuts == "success" , do
				if(jsonResponse.status === "success"){
					//get update Form			
					var updateForm = document.getElementById("update_utilisateur");
					
					//set inputs value from jsonResponse
					document.getElementById("idUtilisateur").value = jsonResponse.idUtilisateur;
					document.getElementById("inputLastName").value = jsonResponse.nom;
					document.getElementById("inputFirstName").value = jsonResponse.prenom;
					document.getElementById("inputEmail").value = jsonResponse.email;
					document.getElementById("inputTelephone").value = jsonResponse.telephone;
					document.getElementById("inputDateNaissance").value = jsonResponse.dateNaissance;
					document.getElementById("inputAdress").value = jsonResponse.adresse; 
					
					//check sexe option
					if(jsonResponse.sexe == "true"){
						document.getElementById("optionHomme").checked = true;
						document.getElementById("optionFemme").checked = false;
						var elementGreen = $(".iradio_square-green");
						var elementRed = $(".iradio_square-red");
						elementGreen.addClass("checked");
						elementRed.removeClass("checked");
					}else{
						document.getElementById("optionFemme").checked = true;
						document.getElementById("optionHomme").checked = false;
						var elementRed = $(".iradio_square-red");
						var elementGreen = $(".iradio_square-green");
						elementRed.addClass("checked");
						elementGreen.removeClass("checked");
					}
					
					var profilSelected = document.getElementById("profilSelected");
					
					//select profil option
					for(var i=0; i < profilSelected.length; i++){
						if(jsonResponse.profil == profilSelected[i].value){
							profilSelected[i].selected=true;
						}else{
							profilSelected[i].selected=false;
						}
					}
					
					$('#updateModal').modal('show');
					
				}
		  	});
		}	
		
		</script>
	<!-- End Remplir Update Modal -->
	
	
	<!-- Begin envoyer un message à un collaborateur utilisant ajax -->
	<script type="text/javascript">
		function jsonGetUtilisateur_forSendEmail(idUtilisateur){
			//make ajax request to /ajax/getCollaborateur?idCollaborateur=x
			$.getJSON('<s:url action="getUtilisateur" namespace="/ajax" />', {idUtilisateur : idUtilisateur}, function(jsonResponse) {
				//if satuts == "success" , do
				if(jsonResponse.status === "success"){
					
					//set inputs value from jsonResponse
					document.getElementById("idCollaborateur_sendMessage").value = jsonResponse.idCollaborateur;
					var fullName = jsonResponse.nom + " " + jsonResponse.prenom;
					document.getElementById("fullnameTo").innerHTML = fullName;
					document.getElementById("to").value = jsonResponse.email;
	
				}
		  	});
			
			$('#sendMessageModal').modal('show');
		};
		
		function sendMessageToCollaboroateur_ajax(){
			var idCollaborateur = document.getElementById("idCollaborateur_sendMessage").value;
			var object = document.getElementById("subject").value;
			var msg = document.getElementById("msg_").value;
			
			if(idCollaborateur != "" && object != "" && msg != ""){
				$('#sendMessageModal').modal('hide');
				$.getJSON('<s:url action="sendEmailToCollaborateurAjax" namespace="/ajax" />', {id : idCollaborateur, object : object, msg : msg}, function(jsonResponse) {
					//if satuts == "success" , do
					if(jsonResponse.status === "success"){
						
						$.gritter.add({
				            // (string | mandatory) the heading of the notification
				            title: 'Message !',
				            // (string | mandatory) the text inside the notification
				            text: 'Le message ("'+jsonResponse.object+'") été bien envoyé à '+jsonResponse.collaborateur.fullname+' .'
				            
				        });
						
						
						//vider les champs :
							document.getElementById("subject").value = "";
							document.getElementById("msg_").value = "";
// 						console.log(jsonResponse);
					}else
						{
							alert("message nn envoyé");
						}
			  	});
			}else
				{
					alert("remplir tout les champ");
				}
		}
	</script>
	<!-- End envoyer un message à un collaborateur utilisant ajax -->
	
	<!-- Begin Initialisation du tableua utilisateur -->
	<script type="text/javascript">
		function fnFormatDetails ( oTable, nTr )
		{
		    var aData = oTable.fnGetData( nTr );
		    var sOut = '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">';
		    sOut += '<tr><td>Nom & Prénom:</td><td>'+aData[1]+'</td></tr>';
		    sOut += '<tr><td>Email:</td><td>'+aData[2]+'</td></tr>';
		    sOut += '<tr><td>Telephone:</td><td>'+aData[3]+'</td></tr>';
		    sOut += '<tr><td>Sexe:</td><td>'+aData[4]+'</td></tr>';
		    sOut += '<tr><td>Adresse:</td><td>'+aData[7]+'</td></tr>';
		    sOut += '<tr><td>Date de naissance:</td><td>'+aData[8]+'</td></tr>';
		    sOut += '<tr><td>Profil:</td><td>'+aData[5]+'</td></tr>';
		    sOut += '</table>';
		
		    return sOut;
		}
	</script>
	<!-- End Initialisation du tableua utilisateur -->
</body>
</html>


<%-- 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<script src="http://code.jquery.com/jquery-2.1.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
function jsonGetUtilisateur(idUtilisateur){
	//make ajax request to /ajax/getCollaborateur?idCollaborateur=x
	$.getJSON('<s:url action="getUtilisateur" namespace="/ajax" />', {idUtilisateur : idUtilisateur}, function(jsonResponse) {
		//if satuts == "success" , do
		if(jsonResponse.status === "success"){
			//get update Form			
			var updateForm = document.getElementById("update_utilisateur");
			
			//set inputs value from jsonResponse
			updateForm.idUtilisateur.value = jsonResponse.idUtilisateur;
			updateForm.nom.value = jsonResponse.nom;
			updateForm.prenom.value = jsonResponse.prenom;
			updateForm.email.value = jsonResponse.email;
			updateForm.telephone.value = jsonResponse.telephone;
			updateForm.dateNaissance.value = jsonResponse.dateNaissance;
			updateForm.adresse.value = jsonResponse.adresse;
			
			//select sexe option
			for(var i=0; i<updateForm.sexe.length; i++){
				if(jsonResponse.sexe == updateForm.sexe[i].value){
					updateForm.sexe[i].selected=true;
				}else{
					updateForm.sexe[i].selected=false;
				}
			}
			
			//select sexe option
			for(var i=0; i<updateForm.profil.length; i++){
				if(jsonResponse.profil == updateForm.profil[i].value){
					updateForm.profil[i].selected=true;
				}else{
					updateForm.profil[i].selected=false;
				}
			}
			
		}
  	});
}	
</script>
</head>
<body>

	<s:fielderror/>
	<!-- My version of Action Notifications -->
	<s:if test="isSessionActionError()">
		Error: <s:property value="sessionActionErrorText" />
	</s:if>
	<s:if test="isSessionMessageError()">
		Message: <s:property value="sessionActionMessageText" />
	</s:if>
	<!-- End of Action Notifications -->
	
	<a href='<s:url action="addCollaborateur" />'>Ajouter Collaborateur</a><br>
	
	<table border="1">
		<tr>
			<td>Nom et prenom</td>
			<td>Email</td>
			<td>Telephone</td>
			<td>Adresse</td>
			<td>Profil</td>
			<td>Options</td>
		</tr>

		<s:iterator value="utilisateurs">
			<tr>
				<td><s:property value="fullname"/></td>
				<td><s:property value="emailUtilisateur"/></td>
				<td><s:property value="telephoneUtilisateur"/></td>
				<td><s:property value="adresseUtilisateur"/></td>
				<td><s:property value="profil.nomProfil"/></td>
				<td>
					<ul>
						<li><a href='javascript:void(0);' onclick="jsonGetUtilisateur(<s:property value="idUtilisateur"/>);">Modifier</a></li>
						<li><a href='<s:url action="deleteUtilisateur" ><s:param name="id"><s:property value="idUtilisateur"/></s:param></s:url>'>Supprimer</a></li>
						<li><a href='<s:url action="sendEmailToUtilisateur" ><s:param name="id"><s:property value="idUtilisateur"/></s:param></s:url>'>Email</a></li>
					</ul>
				</td>
			</tr>
		</s:iterator>
	</table>
	
	<hr>
	<h3>Add Utilisateur</h3>
	<!-- Add Form -->
	<s:form id="add_utilisateur" action="addUtilisateur" method="post">
		nom: <s:textfield name="nom" /><br>
		prenom: <s:textfield name="prenom" /><br>
		email: <s:textfield name="email" /><br>
		date: <s:textfield name="dateNaissance" /><br>
		tele: <s:textfield name="telephone" /><br>
		adresse: <s:textfield name="adresse"  /><br>
		<s:select label="Sexe" list="#{'true':'Male', 'false':'Female'}" name="sexe" />
		<br>
		<select name="profil">
			<s:iterator value="profils">
				<option value='<s:property value="idProfil" />'><s:property value="nomProfil" /></option>
			</s:iterator>
		</select>
		<br>
		<s:checkbox name="sendEmail">Envoyer email:</s:checkbox><br>
		
		<s:submit value="Add"  />
	</s:form>
	<!-- End Add Form -->
	
	<hr>
	<h3>Update Utilisateur</h3>	
	<!-- Update Form -->
	<s:form id="update_utilisateur" action="updateUtilisateur" method="post">
		<s:hidden name="idUtilisateur" />
		<s:textfield name="nom" /><br>
		<s:textfield name="prenom" /><br>
		<s:textfield name="email" /><br>
		<s:textfield name="dateNaissance" /><br>
		<s:textfield name="telephone" /><br>
		<s:textfield name="adresse"  /><br>
		<s:select label="Sexe" list="#{'true':'Male', 'false':'Female'}" name="sexe" />
		<br>
		<select name="profil">
			<s:iterator value="profils">
				<option value='<s:property value="idProfil" />'><s:property value="nomProfil" /></option>
			</s:iterator>
		</select>
		<br>
		
		<s:checkbox name="sendEmail">Envoyer email:</s:checkbox><br>
		
		<s:submit value="Update"  />
	</s:form>
	<!-- End Update Form -->
	
</body>
</html>

--%>