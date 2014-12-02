<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<div class="row">
	<div class="col-sm-12">
		<section class="panel">
			<header class="panel-heading">
				Les formation <span class="tools pull-right">
					<a href="javascript:;" class="fa fa-chevron-down" id="downUpCollaborateur"></a> 
<!-- 					<a href="javascript:;" class="fa fa-times"></a> -->
				</span>
			</header>
			<div class="panel-body">
				<div class="adv-table">
					<div class="clearfix">
						<div class="btn-group">
							<button href="#addFormationModal" data-toggle="modal" class="btn btn-primary">
								Ajouter Formation <i class="fa fa-plus"></i>
							</button>
						</div>
					</div>
					<div id="hidden-table-info_wrapper"
						class="dataTables_wrapper form-inline" role="grid">

						<table aria-describedby="hidden-table-info_info"
							class="display table table-bordered dataTable"
							id="hidden-table-info">
							<thead>
								<tr role="row">
									<th>Titre</th>
									<th>Description</th>
									<th>Date de création</th>
									<th>Options</th>
									<!-- <th>Sexe</th>
									<th style="display: none;">Adresse</th>
									<th style="display: none;">Date de naissance</th>
									<th style="display: none;">habilitations</th>
									<th style="display: none;">image</th> -->
								</tr>
							</thead>

							<tbody aria-relevant="all" aria-live="polite" role="alert">
								<s:iterator value="formations">
									<tr class="gradeA odd">
										<td class="  sorting_1"><s:property value="titreFormation" /></td>
										<td class=" "><s:property value="descriptionFormation" /></td>
										<td class="hidden-phone "><s:property value="dateCreationFormation" /></td>
										<td class="center hidden-phone ">
											<%-- <ul style="list-style: none;" class="navbar-nav nav-options">
											
												<li style="padding-left: 15px;">
													<a title="Habilitations" href='<s:url action="habilitationScores" ><s:param name="id"><s:property value="idCollaborateur"/></s:param></s:url>'>
														<i class="fa fa-list"></i>
													</a>
												</li>
												
												<li style="padding-left: 15px;">
													<a href='javascript:void(0);'
													   onclick="jsonGetCollaborateur(<s:property value="idCollaborateur"/>);" 
													   title="Mise à jour">
														<i class="fa fa-pencil"></i>
													</a>
												</li>
												
												<li style="padding-left: 15px;">
													<a data-href=<s:url action="deleteCollaborateur" ><s:param name="id"><s:property value="idCollaborateur"/></s:param></s:url> data-toggle="confirmation" data-original-title="" title="Supprimer ?" >
														<i class="fa fa-times"></i>
													</a>
												</li>
												<li style="padding-left: 15px;">
													<a href='javascript:void(0);'
													   onclick="jsonGetCollaborateur_forSendEmail(<s:property value="idCollaborateur"/>);" 
													   title="Envoyer un email">
														<i class="fa fa-envelope"></i>
													</a>
												</li>
											</ul> --%>
											
											<ul>
												<li><a href='javascript:void(0);' onclick="jsonGetFormation(<s:property value="idFormation"/>);">Modifier</a></li>
												<li><a href='<s:url action="deleteFormation" ><s:param name="idFormation"><s:property value="idFormation"/></s:param></s:url>'>Supprimer</a></li>
												
												<li><a href='javascript:void(0);' onclick="updateSessionForm(<s:property value="idFormation"/>);">Add Sessions (+) </a></li>					
											</ul>
										</td>
										<%-- <td style="display: none;"><s:property
												value="adresseCollaborateur" /></td>
										<td style="display: none;"><s:property
												value="dateNaissanceCollaborateur" /></td>
										<td style="display: none;">
											<ul>
												<s:iterator value="habilitations">
													<li><s:property value="habilitation.nomHabilitation" />
														( <s:property value="scoreHabilitation" /> )</li>
												</s:iterator>
											</ul>
										</td>
										<td style="display: none;"><s:property
												value="urlPhotoCollaborateur" /></td> --%>
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