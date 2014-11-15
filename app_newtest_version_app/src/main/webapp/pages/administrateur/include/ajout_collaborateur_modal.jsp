<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<div style="display: none;" aria-hidden="true"
	aria-labelledby="myModalLabel" role="dialog" tabindex="-1"
	id="addCollaborateurModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button aria-hidden="true" data-dismiss="modal" class="close"
					type="button">×</button>
				<h4 class="modal-title">Ajouter Nouveau Collaborateur</h4>
			</div>

			<div class="modal-body">

				<div class="panel-body">
					<form data-toggle="validator" id="add_collaborateur"
						action="addCollaborateur" method="post" role="form">

						<div class="form-group">
							<label class="control-label col-md-3">Image de profil</label>
							<div class="col-md-9">
								<div class="fileupload fileupload-new"
									data-provides="fileupload">
									<div class="fileupload-new thumbnail"
										style="width: 200px; height: 150px;">
										<img src='<s:url value="/images/select_image.gif"/>' alt="">
									</div>
									<div class="fileupload-preview fileupload-exists thumbnail"
										style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
									<div>
										<span class="btn btn-default btn-file"> <span
											class="fileupload-new"><i class="fa fa-paper-clip"></i>
												Choisir une image</span> <span class="fileupload-exists"><i
												class="fa fa-undo"></i> Modifier</span> <input class="default"
											type="file">
										</span> <a href="#" class="btn btn-danger fileupload-exists"
											data-dismiss="fileupload"><i class="fa fa-trash"></i>
											Supprimer</a>
									</div>
								</div>
								<br>
								<!-- <span class="label label-danger ">NOTE!</span> <span>
								Attached image thumbnail is supported in Latest Firefox, Chrome,
								Opera, Safari and Internet Explorer 10 only </span> -->
							</div>
						</div>

						<div class="form-group">
							<label for="inputLastName">Nom</label> <input autocomplete="off"
								name="nom" class="form-control" id="inputLastName_2"
								placeholder="Nom" type="text" required>
						</div>

						<div class="form-group">
							<label for="inputFirstName">Prenom</label> <input
								autocomplete="off" name="prenom" class="form-control"
								id="inputFirstName_2" placeholder="Prenom" type="text" required>
						</div>

						<div class="form-group">
							<label for="inputEmail">Email</label> <input autocomplete="off"
								name="email" class="form-control" id="inputEmail_2"
								placeholder="Email" type="email" required>
						</div>

						<div class="form-group">
							<label for="thedateDiv" class="control-label">Date de naissance</label>
							<div id="thedateDiv" class="">

								<div data-date-viewmode="years" data-date-format="dd/mm/yyyy"
									data-date="12/02/1990" class="input-append date dpYears">
									<input name="dateNaissance"
										pattern="^(\d{2})\/(\d{2})\/(\d{4})" type="text"
										readonly="readonly" value="12/02/1990" size="16"
										class="form-control"> <span class="input-group-btn add-on">
										<button class="btn btn-primary" type="button">
											<i class="fa fa-calendar"></i>
										</button>
									</span>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="inputTelephone_2">Telephone</label> <input
								autocomplete="off" name="telephone" class="form-control"
								id="inputTelephone_2" placeholder="Ex : 0610807402" type="text"
								pattern="^0[5-6]{1}\d{8}">
							<div class="help-block with-errors">Ex : 0610807402</div>
						</div>


						<div class="form-group">
							<label for="inputAdress_2">Adresse</label> <input
								autocomplete="off" name="adresse" class="form-control"
								id="inputAdress_2" placeholder="Ex : Casablanca Rue 10 N80"
								type="text">
						</div>


						<div class="form-group">
							<div style="display: flex; align-items: center;"
								class="col-lg-4 vcenter">
								<label class="control-label">Sexe</label>
							</div>
							<div class="col-lg-8 vcenter">

								<div class="col-sm-9 icheck ">
									<div class="square-green single-row col-sm-6">
										<div class="radio ">
											<input tabindex="3" type="radio" name="sexe"
												id="optionHomme_2" value="true" checked="checked"> <label>
												Male </label>
										</div>

									</div>
									<div class="square-red single-row col-sm-6">
										<div class="radio ">
											<input tabindex="3" type="radio" name="sexe"
												id="optionFemme_2" value="false"> <label>
												Female </label>
										</div>
									</div>
								</div>

							</div>
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>
			</div>
			<!-- <div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-success">Save changes</button>
			</div> -->

		</div>
	</div>
</div>