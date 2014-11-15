<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<div class="row">
	<div class="col-sm-12">
		<section class="panel">
			<header class="panel-heading">
				DataTables hidden row details example <span class="tools pull-right">
					<a href="javascript:;" class="fa fa-chevron-down"></a> <a
					href="javascript:;" class="fa fa-times"></a>
				</span>
			</header>
			<div class="panel-body">
				<div class="adv-table">
					<div class="clearfix">
						<div class="btn-group">
							<button href="#addCollaborateurModal" data-toggle="modal" class="btn btn-primary">
								Ajouter Collaborateur <i class="fa fa-plus"></i>
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
									<th>Nom & Prénom</th>
									<th>Email</th>
									<th>Telephone</th>
									<th>Sexe</th>
									<th>Options</th>
									<th style="display: none;">Adresse</th>
									<th style="display: none;">Date de naissance</th>
									<th style="display: none;">habilitations</th>
									<th style="display: none;">image</th>
								</tr>
							</thead>

							<tbody aria-relevant="all" aria-live="polite" role="alert">
								<s:iterator value="collaborateurs">
									<tr class="gradeA odd">
										<td class="  sorting_1"><s:property value="fullname" /></td>
										<td class=" "><s:property value="emailCollaborateur" /></td>
										<td class="hidden-phone "><s:property
												value="telephoneCollaborateur" /></td>
										<td class="center hidden-phone "><s:property
												value="sexeString" /></td>
										<td class="center hidden-phone ">A</td>
										<td style="display: none;"><s:property
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
												value="urlPhotoCollaborateur" /></td>
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