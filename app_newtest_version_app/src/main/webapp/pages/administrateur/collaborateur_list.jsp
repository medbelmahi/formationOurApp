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
				<s:include value="include/data_table_collaborateurs.jsp"></s:include>
			<!-- Data table des collaborateurs End -->
			
			
			<!-- Update Collaborateur Modal Form -->
				<s:include value="include/update_collaborateur_modal.jsp"></s:include>
			<!-- End Update Collaborateur Modal Form -->
			
			
			<!-- Ajout Collaborateur Modal Form -->
				<s:include value="include/ajout_collaborateur_modal.jsp"></s:include>
			<!-- End Ajout Collaborateur Modal Form -->
		
			<!-- Begin Send Message to collaborateur Modal -->
				<s:include value="include/send_msg_collaborateur_modal.jsp"></s:include>	
			<!-- End Send Message to collaborateur Modal -->
			
			<!-- Begin Gestion des habilitations -->
				<s:include value="include/gestion_habilitations.jsp"></s:include>	
			<!-- End Gestion des habilisation -->
			
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
		function jsonGetCollaborateur(idCollaborateur){
			//make ajax request to /ajax/getCollaborateur?idCollaborateur=x
			$.getJSON('<s:url action="getCollaborateur" namespace="/ajax" />', {idCollaborateur : idCollaborateur}, function(jsonResponse) {
				//if satuts == "success" , do
				if(jsonResponse.status === "success"){
					//get update Form			
					var updateForm = document.getElementById("update_collaborateur");
					
					//set inputs value from jsonResponse
					document.getElementById("idCollaborateur").value = jsonResponse.idCollaborateur;
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
				}
		  	});
			
			$('#updateModal').modal('show');
		};
		</script>
	<!-- End Remplir Update Modal -->
	
	
	<!-- Begin envoyer un message à un collaborateur utilisant ajax -->
	<script type="text/javascript">
		function jsonGetCollaborateur_forSendEmail(idCollaborateur){
			//make ajax request to /ajax/getCollaborateur?idCollaborateur=x
			$.getJSON('<s:url action="getCollaborateur" namespace="/ajax" />', {idCollaborateur : idCollaborateur}, function(jsonResponse) {
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
	
	
	<!-- Begin DownUp panel -->
	<script type="text/javascript">
		$('#downUpCollaborateur').click(function () {
			changeUpToDown('#downUpCollaborateur');
			var query_string = window.location.search;
			query_string = query_string.substring(query_string.indexOf("=")+1,query_string.length);
			console.log(query_string);
			
			if(query_string != ""){
				changeUpToDown('#downUphabilitation');
			}
			
		});
		
		$('#downUphabilitation').click(function () {
			changeUpToDown('#downUphabilitation');
			changeUpToDown('#downUpCollaborateur');
		});
		
		function changeUpToDown(theId)
		{
			var el_1 = $(theId).parents(".panel").children(".panel-body");
			if ($(theId).hasClass("fa-chevron-up")) {
	            $(theId).removeClass("fa-chevron-up").addClass("fa-chevron-down");
	            el_1.slideDown(200);
		 	}else{
		 		$(theId).removeClass("fa-chevron-down").addClass("fa-chevron-up");
		 		el_1.slideUp(200);
		 	}
		}
		
		function initDownUpPanel(){
			
			var query_string = window.location.search;
			query_string = query_string.substring(query_string.indexOf("=")+1,query_string.length);
			console.log(query_string);
			
			if(query_string == ""){
				
				var el = $('#downUphabilitation').parents(".panel").children(".panel-body");
				 if ($('#downUphabilitation').hasClass("fa-chevron-down")) {
			            $('#downUphabilitation').removeClass("fa-chevron-down").addClass("fa-chevron-up");
			            el.slideUp(200);
				 }
				 el = $('#downUpCollaborateur').parents(".panel").children(".panel-body");
				 if ($('#downUpCollaborateur').hasClass("fa-chevron-up")) {
			            $('#downUpCollaborateur').removeClass("fa-chevron-up").addClass("fa-chevron-down");
			            el.slideDown(200);
			            condole.log('thr 2');
			     }
				 document.getElementById("gestion_habilitation_panel").innerHTML = 'Gestion des habilitations <p class="text-danger">'
	                    +'Merci de cliquer sur un collaborateur pour gérer sa liste des habilitations.'
	                    +'</p> <span class="tools pull-right"> <a style="display: none;" class="fa fa-chevron-down" href="javascript:;" id="downUphabilitation"></a></span>';

				 
			}else{
				var el = $('#downUphabilitation').parents(".panel").children(".panel-body");
				 if ($('#downUphabilitation').hasClass("fa-chevron-up")) {
			            $('#downUphabilitation').removeClass("fa-chevron-up").addClass("fa-chevron-down");
			            el.slideDown(200);
				 }
				 el = $('#downUpCollaborateur').parents(".panel").children(".panel-body");
				 if ($('#downUpCollaborateur').hasClass("fa-chevron-down")) {
			            $('#downUpCollaborateur').removeClass("fa-chevron-down").addClass("fa-chevron-up");
			            el.slideUp(200);
				 }
				 
				 document.getElementById("gestion_habilitation_panel").innerHTML = 'Gestion des habilitations <span class="tools pull-right"> <a class="fa fa-chevron-down" href="javascript:;" id="downUphabilitation"></a></span>';
			}
				
			 
		};
		
		$('.startRating').rating({callback : function(value, link){
				console.log(value);
				document.getElementById('theScore').value = value;
				}});
		
		$('.startRating_2').rating({callback : function(value, link){
			console.log(value);
			document.getElementById('theScore_2').value = value;
			}});
		
		initDownUpPanel();
		/* $('.ms-elem-selectable').off();
		$('#my_multi_select3_costum').off(); */
		$('.ms-list').off("click", "**");
		$('.startRating').rating('select',0);
	</script>
	<!-- End DownUp panel -->
	
	<!-- Begin SelectHabilitaion from multi-select -->
		<script type="text/javascript">
		$('#ms-my_multi_select3_costum div ul .ms-elem-selectable').click(function selectedItem() {
				$('.ms-elem-selectable').removeClass("selectedItem");
				$(this).addClass("selectedItem");
				
				var str = $(this).attr('id'); 
				var id = str.substring(0,str.lastIndexOf("-"));
				
				document.getElementById('theHabilitation').value = id;
				
				document.getElementById('theHabilitationName').innerHTML = $(this).html();
				document.getElementById('theHabilitationDescription').innerHTML = $(this).attr('data-description');
			});
		
		
		$('#ms-my_multi_select3_costum_2 div ul .ms-elem-selectable').click(function selectedItem() {
			$('.ms-elem-selectable').removeClass("selectedItem");
			$(this).addClass("selectedItem");
			
			var str = $(this).attr('id'); 
			var id = str.substring(0,str.lastIndexOf("-"));
			
			document.getElementById('theHabilitationScore_2').value = id;
			document.getElementById('theHabilitationScore_3').value = id;
			var score = $(this).attr('data-score');
			document.getElementById('theScore_2').value = score;
			
			$('.startRating_2').rating('select',score-1);
			
			document.getElementById('theHabilitationName_2').innerHTML = $(this).html();
			document.getElementById('theHabilitationDescription_2').innerHTML = $(this).attr('data-description');
		});
			
			$(".ms-elem-selectable").mouseleave(function(){
				$(this).removeClass("ms-hover");
			});
		</script>
	<!-- End SelectHabilitaion from multi-select -->
	
	
	<!-- Begin Add and Update habilitation by Ajax -->
	
	<script type="text/javascript">
		function jsonDeleteHabilitationScore(idHabilitationScore){
			$.getJSON('<s:url action="deleteHabilitationScore" namespace="/ajax" />', {idHabilitationScore : idHabilitationScore}, function(jsonResponse) {
		
				if(jsonResponse.status === "success"){
					//afficher message success	
					
					//update table supprimer field
				}else {
					//afficher message fail
				}
		  	});
		}	
		
		function jsonGetHabilitationScore(idHabilitationScore){
			$.getJSON('<s:url action="getHabilitationScore" namespace="/ajax" />', {idHabilitationScore : idHabilitationScore}, function(jsonResponse) {
		
				if(jsonResponse.status === "success"){
					var updateForm = document.getElementById("update_habilitation_score");
					updateForm.idHabilitationScore.value = jsonResponse.idHabilitationScore;
					
					//select sexe option
					for(var i=0; i<updateForm.score.length; i++){
						if(jsonResponse.score == updateForm.score[i].value){
							updateForm.score[i].selected=true;
						}else{
							updateForm.score[i].selected=false;
						}
					}
				}
		  	});
		}
		
		function sleep(milliseconds) {
			  var start = new Date().getTime();
			  for (var i = 0; i < 1e7; i++) {
			    if ((new Date().getTime() - start) > milliseconds){
			      break;
			    }
			  }
			}
		
		function jsonUpdateHabilitationScore(){
			//event.preventDefault();//Prevent default action af the form (submit)
			
			//get data form values
			/* var updateForm = document.getElementById("update_habilitation_score");
			
			var idHabilitationScore = updateForm.idHabilitationScore.value;
			var score = 1;
			for(var i=0; i<updateForm.score.length; i++){
				if(updateForm.score[i].selected == true){
					score = updateForm.score[i].value;
				}
			} */
			
			var idHabilitationScore = document.getElementById("theHabilitationScore_2").value;
			var score = document.getElementById("theScore_2").value;
			
			if(idHabilitationScore !="" && score != ""){
				
			
				//make update request to /ajax/updateHabilitationScore?idHabilitationScore=x&score=y
				$.getJSON('<s:url action="updateHabilitationScore" namespace="/ajax" />', {idHabilitationScore : idHabilitationScore, score : score}, function(jsonResponse) {
					if(jsonResponse.status === "success"){
						//afficher success message
						
						//alert("habilitation modifier")
						
						$.gritter.add({
				            // (string | mandatory) the heading of the notification
				            title: 'Mise à jour !',
				            // (string | mandatory) the text inside the notification
				            text: 'Le mise à jour a été effectué avec succès.'
				            
				        });
						
// 						sleep(1000);
						
						setTimeout(function() {
							// Code a executer
							location.reload();
							}, 800);
						
						//update table
					}else{
						//afficher error message
					}
			  	});
			}
			
			return false;//prevent form from submit
		}
		
		function jsonAddHabilitationScore(){
			//get data form values
			/* var addHbilitationForm = document.getElementById("add_habilitation_score");
			
			var idCollaborateur = addHbilitationForm.idCollaborateur.value;
			var idHabilitation = 1;
			for(var i=0; i<updateForm.idHabilitation.length; i++){
				if(updateForm.idHabilitation[i].selected == true){
					idHabilitation = updateForm.idHabilitation[i].value;
				}
			}
			var score = 1;
			for(var i=0; i<updateForm.score.length; i++){
				if(updateForm.score[i].selected == true){
					score = updateForm.score[i].value;
				}
			} */
			
			var idCollaborateur = document.getElementById("theIdCollaborateur").value;
			var idHabilitation = document.getElementById("theHabilitation").value;
			var score = document.getElementById("theScore").value;
			
			if(idCollaborateur != "" && idHabilitation !="" && score != ""){
				
				if(score == 0) score = 1;
				
				//make update request to /ajax/updateHabilitationScore?idHabilitationScore=x&score=y
				$.getJSON('<s:url action="addHabilitationScore" namespace="/ajax" />', {idCollaborateur : idCollaborateur, idHabilitation : idHabilitation, score : score}, function(jsonResponse) {
					if(jsonResponse.status === "success"){
						//afficher success message
						
						$.gritter.add({
				            // (string | mandatory) the heading of the notification
				            title: 'Ajouter habilitaion !',
				            // (string | mandatory) the text inside the notification
				            text: 'L\'ajout d\'hbilitation a été effectué avec succès.'
				            
				        });
						
// 						sleep(1000);
						
						setTimeout(function() {
							// Code a executer
							location.reload();
							}, 800);
						
						//update table
					}else{
						//afficher error message
					}
			  	});
				
			}
			
			
			return false;//prevent form from submit
		}
	</script>
	
	<!-- End Add and Update habilitation by Ajax -->
</body>
</html>
