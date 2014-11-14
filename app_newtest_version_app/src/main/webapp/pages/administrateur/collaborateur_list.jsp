<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
	<head>
		<title>JFormation</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
		<link href='<s:url value="/lib/JFormation/css/bootstrap.min.css"/>' rel="stylesheet">
		<link href='<s:url value="/lib/JFormation/css/jquery-ui.css"/>' rel="stylesheet">
		<link href='<s:url value="/lib/JFormation/css/slate-theme.css"/>' rel="stylesheet">
		<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700' rel='stylesheet' type='text/css'>
		<!-- Begin CSS for the dateTables -->
		<link rel="stylesheet" href='<s:url value="/lib/dataTable/css/jquery.dataTables.css"/>' />
		<!-- End CSS for the dateTables -->
	</head>
<body>

	<!-- Begin navbar -->

	<s:include value="include/navbar_.jsp"></s:include>

	<!-- End navbar -->


	<div class="sidebar-background"></div>

	<div class="global">


		<!-- Begin sidebar -->

		<s:include value="include/sidebar.jsp"></s:include>

		<!-- End sidebar -->

		<div class="main fluid">

			<div class="row">
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-home"></i></a></li>
					<li><a href="#">Administration</a></li>
					<li class="active">Gestion des collaborateurs</li>
				</ol>
			</div>

			<!-- <div class="row">
        <div class="col-sm-12">
          <div class="box">
            <div class="box-content slate-statboxes">
              <div class="col-md-3 slate-statbox red">
                <i class="fa fa-heart slate-statbox-icon"></i>
                <div class="slate-statbox-title">Likes</div>
                <div class="slate-statbox-value">9<i class="fa fa-caret-up"></i></div>

              </div>
              <div class="col-md-3 slate-statbox purple">
                <i class="fa fa-comments slate-statbox-icon"></i>
                <div class="slate-statbox-title">Comments</div>
                <div class="slate-statbox-value">12</div>
              </div>
              <div class="col-md-3 slate-statbox blue">
                <i class="fa fa-twitter slate-statbox-icon"></i>
                <div class="slate-statbox-title">Followers</div>
                <div class="slate-statbox-value">33<i class="fa fa-caret-down"></i></div>
              </div>
              <div class="col-md-3 slate-statbox green">
                <i class="fa fa-shopping-cart slate-statbox-icon"></i>
                <div class="slate-statbox-title">Purchases</div>
                <div class="slate-statbox-value">6<i class="fa fa-caret-down"></i></div>
              </div>
            </div>
          </div>
        </div>
      </div> -->

			<!-- <div class="row">
        <div class="col-sm-4">
          <div class="slate-colorbox blue">
            <i class="fa fa-download"></i>
            <div class="slate-colorbox-label">Downloads</div>
            <div class="label pull-right">3</div>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="slate-colorbox red">
            <i class="fa fa-camera"></i>
            <div class="slate-colorbox-label">Pictures</div>
            <div class="label pull-right">7</div>
          </div>
        </div>
        <div class="col-sm-4">
          <div class="slate-colorbox yellow">
            <i class="fa fa-exclamation-triangle"></i>
            <div class="slate-colorbox-label">Low signal</div>
          </div>
        </div>
      </div> -->

			<!--
      <div class="row">
        <div class="col-md-12">
      <div class="alert alert-success alert-dismissable">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <span>Congratulations! You just won a cruise to the Bahamas!</span>
      </div>
        </div>
      </div>
      -->
      
			<div class="row">
				<div class="col-lg-12">
					<h3>
						<blockquote>Liste des collaborateurs</blockquote>
					</h3>

					<div class="col-lg-6">
						<h4 class="add">
							<i class="fa fa-plus"></i> <a
								data-toggle="modal" data-target="#addCollaborateurModal"
								href="#">Ajouter collaborateur</a>
						</h4>
					</div>
					<div class="col-lg-2"></div>
					<div class="col-lg-4">
						<div class="input-group">
							<input type="text" class="form-control"> <span
								class="input-group-addon"><span
								class="glyphicon glyphicon-search"></span></span>
						</div>
					</div>
				</div>
			</div>
			
			<div id="notificationMsg" class="row">
			      <div class="box">
			      	<div class="box-content">
			              <div class="alert alert-success alert-dismissable">
			                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
			                <span>Congratulations! You just won a cruise to the Bahamas!</span>
			              </div>
			              <div class="alert alert-info alert-dismissable">
			                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
			                <span>Congratulations! You just won a cruise to the Bahamas!</span>
			              </div>
			              <div class="alert alert-warning alert-dismissable">
			                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
			                <span>Congratulations! You just won a cruise to the Bahamas!</span>
			              </div>
			              <div class="alert alert-danger alert-dismissable">
			                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
			                <span>Can't touch this!</span>
			              </div>
			            </div>
			        </div>
		      </div>
			
			<!-- begin row -->
			<div class="row">
				
				<div class="col-sm-12">
					
						<table id="dataTable_Collaborateur"
							class="display dataTable">
							<thead>
								<tr>
									<th>Nom & Prénom</th>
									<th>Email</th>
									<th>Telephone</th>
									<th>Adresse</th>
									<th>Date de naissance</th>
									<th>Options</th>
								</tr>
							</thead>
	
							<tbody>
	
								<s:iterator value="collaborateurs">
									<tr>
										<td><s:property value="fullname" /></td>
										<td><s:property value="emailCollaborateur" /></td>
										<td><s:property value="telephoneCollaborateur" /></td>
										<td><s:property value="adresseCollaborateur" /></td>
										<td><s:property value="dateNaissanceCollaborateur" /></td>
										<td>
	
											<ul class="nav navbar-nav nav-options">
												<li>
													<!-- <a data-toggle="modal" data-target="#updateModal"
												class="button-nav"> <span class="glyphicon glyphicon-file"
													title="afficher"></span></a> --> <!-- <a href='<s:url action="listHabilitationScores" ><s:param name="id"><s:property value="idCollaborateur"/></s:param></s:url>'>Habilitations</a> -->
												</li>
												<li><a href="message.html" class="button-nav" title="envoyer un message">
													<i class="fa fa-envelope"></i></a>
													<!-- <a href='<s:url action="sendEmailToCollaborateur" ><s:param name="id"><s:property value="idCollaborateur"/></s:param></s:url>'>Email</a> -->
												</li>
												<li><a href='javascript:void(0);'
													onclick="jsonGetCollaborateur(<s:property value="idCollaborateur"/>);"
													class="button-nav" title="modifier"> <i class="fa fa-pencil" ></i></a> <!-- <a href='javascript:void(0);' onclick="jsonGetCollaborateur(<s:property value="idCollaborateur"/>);">Modifier</a> -->
												</li>
												<li><a
													data-href=<s:url action="deleteCollaborateur" ><s:param name="id"><s:property value="idCollaborateur"/></s:param></s:url>
													data-toggle="confirmation" data-original-title="" title="Vous étes sur ?" href="#"
													class="button-nav"> <i class="fa fa-times" title="supprimer"></i></a>
													<!-- <a href='<s:url action="deleteCollaborateur" ><s:param name="id"><s:property value="idCollaborateur"/></s:param></s:url>'>Supprimer</a> -->
												</li>
											</ul>
										</td>
									</tr>
								</s:iterator>
	
							</tbody>
						</table>
					
				</div>
			</div>
			<!-- end row -->

		</div>

	</div>
	
	<!-- Update Collaborateur Modal Form -->
		
		<s:include value="include/update_collaborateur_modal.jsp"></s:include>
	
	<!-- End Update Collaborateur Modal Form -->
	
	
	<!-- Ajout Collaborateur Modal Form -->
	
		<s:include value="include/ajout_collaborateur_modal.jsp"></s:include>
	
	<!-- End Ajout Collaborateur Modal Form -->
	
	

	<!-- Begin Send Message to collaborateur Modal -->
	
	
	
	<!-- End Send Message to collaborateur Modal -->
	

	<div class="modal fade" id="logout-modal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">Are you sure you
						want to log out?</h4>
				</div>
				<div class="modal-body">All your changes will be saved.</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">No
						Thanks</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal">Yes,
						Please</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<div class="modal fade" id="search-modal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="modal-no-results">No results.</h4>
				</div>
				<div class="modal-body">No results found for your query. This
					is a demo, bro! :)</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal">Chill</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<!-- jQuery -->
	<script
		src='<s:url value="/js/jquery-2.1.1.min.js"/>'></script>
	<!-- jQuery UI -->
	<script src='<s:url value="/lib/JFormation/js/plugins/jquery-ui.js"/>'></script>
	<!-- Bootstrap -->
	<script src='<s:url value="/lib/JFormation/js/bootstrap.min.js"/>'></script>
	<!-- Growl Notifications -->
	<script
		src='<s:url value="/lib/JFormation/js/plugins/jquery.bootstrap-growl.js"/>'></script>
	<!-- Charts & Graphs -->
	<script
		src='<s:url value="/lib/JFormation/js/plugins/raphael-min.js"/>'></script>
	<script src='<s:url value="/lib/JFormation/js/plugins/morris.js"/>'></script>
	<!-- Slate Theme Specific -->
	<script src='<s:url value="/lib/JFormation/js/plugins/slate.js"/>'></script>


	<!-- Begin javascript for the dateTables -->
	<script type="text/javascript"
		src='<s:url value="/lib/dataTable/js/jquery.dataTables.js"/>'></script>
	<script type="text/javascript">
			$(document).ready(function() {
				$('#dataTable_Collaborateur').DataTable();
			});
		</script>
	<!-- End javascript for the dateTables -->

	<!-- bootstrap confirmation tool -->
		<script src='<s:url value="/lib/BootstrapConfirmation_files/bootstrap-transition.js"/>'></script>
		<script src='<s:url value="/lib/BootstrapConfirmation_files/bootstrap-tooltip.js"/>'></script>
		<script src='<s:url value="/lib/BootstrapConfirmation_files/holder.js"/>'></script>
		<script src='<s:url value="/lib/BootstrapConfirmation_files/prettify.js"/>'></script>
		<script src='<s:url value="/lib/BootstrapConfirmation_files/application.js"/>'></script>
		<script src='<s:url value="/lib/BootstrapConfirmation_files/bootstrap-confirmation.js"/>'></script>
	<!-- end bootstrap confirmation tool -->


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
					}else{
						document.getElementById("optionFemme").checked = true;
					}
				}
		  	});
			
			$('#updateModal').modal('show');
		}
		</script>
	<!-- End Remplir Update Modal -->

	<!-- DEMO specific -->
	<script>
      $('a').on('click', function(e) {
        if ($(this).attr('href') == '#') {
          e.preventDefault();
        }
      });

      $('#search').on('submit', function() {
        $('#search-modal').modal('show');
        return false;
      });
      
      $(function() {
      setTimeout(function() {
        $.bootstrapGrowl('<img src="<s:url value="/imgs/avatar4.jpg"/>" width="60" class="img-circle" /><span style="margin-left:10px;margin-right:20px;"><span style="color:#999;">Laurence:</span> Hey there!</span>', {
          type: 'dark',
          align: 'right',
          width: 'auto',
          delay: 6000,
          stackup_spacing: 20
        });
      }, 6000);
      setTimeout(function() {
        $.bootstrapGrowl('<img src="../../imgs/avatar2.jpg" width="60" class="img-circle" /><span style="margin-left:10px;margin-right:20px;">You have a new friend request.</span>', {
          type: 'dark',
          align: 'right',
          width: 'auto',
          delay: 6000,
          stackup_spacing: 20
        });
      }, 18000);
      });

      var bar = Morris.Bar({
        element: 'bar-chart',
        data: [
          {period: '2010 Q1', iphone: 2666, ipad: null},
          {period: '2010 Q2', iphone: 2778, ipad: 2294},
          {period: '2010 Q3', iphone: 4912, ipad: 1969},
          {period: '2010 Q4', iphone: 3767, ipad: 3597},
          {period: '2011 Q1', iphone: 6810, ipad: 1914},
          {period: '2011 Q2', iphone: 5670, ipad: 4293},
          {period: '2011 Q3', iphone: 4820, ipad: 3795},
          {period: '2011 Q4', iphone: 15073, ipad: 5967},
          {period: '2012 Q1', iphone: 10687, ipad: 4460},
          {period: '2012 Q2', iphone: 8432, ipad: 5713}
        ],
        barColors: ['#26A0E5', '#20262A'],
        xkey: 'period',
        ykeys: ['iphone', 'ipad'],
        labels: ['iPhone', 'iPad'],
        pointSize: 2,
        hideHover: 'auto'
      });
      
      var area = Morris.Area({
        element: 'area-chart',
        data: [
          {period: '2010 Q1', iphone: 2666, ipad: null, itouch: 2647},
          {period: '2010 Q2', iphone: 2778, ipad: 2294, itouch: 2441},
          {period: '2010 Q3', iphone: 4912, ipad: 1969, itouch: 2501},
          {period: '2010 Q4', iphone: 3767, ipad: 3597, itouch: 5689},
          {period: '2011 Q1', iphone: 6810, ipad: 1914, itouch: 2293},
          {period: '2011 Q2', iphone: 5670, ipad: 4293, itouch: 1881},
          {period: '2011 Q3', iphone: 4820, ipad: 3795, itouch: 1588},
          {period: '2011 Q4', iphone: 15073, ipad: 5967, itouch: 5175},
          {period: '2012 Q1', iphone: 10687, ipad: 4460, itouch: 2028},
          {period: '2012 Q2', iphone: 8432, ipad: 5713, itouch: 1791}
        ],
        lineColors: ['#26A0E5', '#20262A', '#E52626'],
        xkey: 'period',
        ykeys: ['iphone', 'ipad', 'itouch'],
        labels: ['iPhone', 'iPad', 'iPod Touch'],
        pointSize: 2,
        hideHover: 'auto'
      });
      
      var line = Morris.Line({
        element: 'line-chart',
        data: [
          { year: '2008', value: 20 },
          { year: '2009', value: 10 },
          { year: '2010', value: 20 },
          { year: '2011', value: 40 },
          { year: '2012', value: 20 }
        ],
        lineColors: ['#26A0E5', '#FFC617', '#20262A'],
        xkey: 'year',
        ykeys: ['value'],
        labels: ['Value'],
        hideHover: 'auto'
      });
      
      $('form input[type="submit"], form input[type="button"], form button').on('click', function() {
        $.bootstrapGrowl('Successfully Saved!', {
          type: 'success',
          align: 'right',
          width: 'auto',
          delay: 4000,
          stackup_spacing: 20
        });
      });

      var rtime = new Date(1, 1, 2000, 12,00,00);
      var timeout = false;
      var delta = 200;
      $(window).resize(function() {
        rtime = new Date();
        if (timeout === false) {
          timeout = true;
          setTimeout(resizeend, delta);
          $('.slate-graph').addClass('generating');
        }
      });
      
      function resizeend() {
        if (new Date() - rtime < delta) {
          setTimeout(resizeend, delta);
        } else {
          timeout = false;
          $('.slate-graph').removeClass('generating');
          area.redraw();
          bar.redraw();
          line.redraw();
        }               
      }
      
    </script>

</body>
</html>