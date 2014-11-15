<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<div style="display: none;" aria-hidden="true"
	aria-labelledby="myModalLabel" role="dialog" tabindex="-1"
	id="updateModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button aria-hidden="true" data-dismiss="modal" class="close"
					type="button">×</button>
				<h4 class="modal-title">Mise à jour du Collaborateur</h4>
			</div>

			<div class="modal-body">

				<div class="panel-body">
					<form data-toggle="validator" id="add_collaborateur"
						action="updateCollaborateur" method="post" role="form">

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
						
						<input type="hidden" id="idCollaborateur" name="idCollaborateur">
						
						<div class="form-group">
							<label for="inputLastName">Nom</label> <input autocomplete="off"
								name="nom" class="form-control" id="inputLastName"
								placeholder="Nom" type="text" required>
						</div>

						<div class="form-group">
							<label for="inputFirstName">Prenom</label> <input
								autocomplete="off" name="prenom" class="form-control"
								id="inputFirstName" placeholder="Prenom" type="text" required>
						</div>

						<div class="form-group">
							<label for="inputEmail">Email</label> <input autocomplete="off"
								name="email" class="form-control" id="inputEmail"
								placeholder="Email" type="email" required>
						</div>

						<div class="form-group">
							<label for="thedateDiv" class="control-label">Date de naissance</label>
							<div id="thedateDiv" class="">

								<div data-date-viewmode="years" data-date-format="dd/mm/yyyy"
									data-date="12/02/1990" class="input-append date dpYears">
									<input name="dateNaissance" id="inputDateNaissance"
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
							<label for="inputTelephone">Telephone</label> <input
								autocomplete="off" name="telephone" class="form-control"
								id="inputTelephone" placeholder="Ex : 0610807402" type="text"
								pattern="^0[5-6]{1}\d{8}">
							<div class="help-block with-errors">Ex : 0610807402</div>
						</div>


						<div class="form-group">
							<label for="inputAdress">Adresse</label> <input
								autocomplete="off" name="adresse" class="form-control"
								id="inputAdress" placeholder="Ex : Casablanca Rue 10 N80"
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
												id="optionHomme" value="true"> <label>
												Male </label>
										</div>

									</div>
									<div class="square-red single-row col-sm-6">
										<div class="radio ">
											<input tabindex="3" type="radio" name="sexe"
												id="optionFemme" value="false"> <label>
												Female </label>
										</div>
									</div>
								</div>

							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Annuler</button>
							<button type="submit" class="btn btn-success">Mise à jour</button>
						</div>
					</form>
				</div>
			</div>
			<!--  -->

		</div>
	</div>
</div>


<!-- 
<div class="modal fade" id="updateModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Modification</h4>
			</div>

			<form data-toggle="validator" id="update_collaborateur" action="updateCollaborateur"
				method="post">
				<div class="modal-body">
					<div class="col-lg-12 image">
						<img src="images/members/avatar.png" />
					</div>
					<input type="hidden" id="idCollaborateur" name="idCollaborateur">
					<div class="form-group">
						<label for="inputLastName" class="col-lg-4 control-label">Nom</label>
						<div class="col-lg-8">
							<input autocomplete="off" name="nom" class="form-control"
								id="inputLastName" placeholder="Nom" type="text" required>
						</div>
					</div>
					<div class="form-group">
						<label for="inputFirstName" class="col-lg-4 control-label">Prenom</label>
						<div class="col-lg-8">
							<input autocomplete="off" name="prenom" class="form-control"
								id="inputFirstName" placeholder="Prenom" type="text" required>
						</div>
					</div>

					<div class="form-group">
						<label for="inputEmail" class="col-lg-4 control-label">Email</label>
						<div class="col-lg-8">
							<input autocomplete="off" name="email" class="form-control"
								id="inputEmail" placeholder="Email" type="email" required>
						</div>
					</div>

					<div class="form-group">
						<label for="inputDateNaissance" class="col-lg-4 control-label">Date
							de Naissance</label>
						<div class="col-lg-8">
							<input autocomplete="off" name="dateNaissance" pattern="^(\d{2})\/(\d{2})\/(\d{4})"
								class="form-control inputDateDeNaissance" id="inputDateNaissance"
								placeholder="dateNaissance" type="text" required>
						</div>
					</div>

					<div class="form-group">
						<label for="inputTelephone" class="col-lg-4 control-label">Telephone</label>
						<div class="col-lg-8">
							<input autocomplete="off" name="telephone" class="form-control"
								id="inputTelephone" placeholder="Ex : 0610807402" type="text" pattern="^0[5-6]{1}\d{8}">
							<div class="help-block with-errors">Ex : 0610807402</div>
						</div>
						
					</div>
					<div class="form-group">
						<label for="inputAdress" class="col-lg-4 control-label">Adresse</label>
						<div class="col-lg-8">
							<input autocomplete="off" name="adresse" class="form-control"
								id="inputAdress" placeholder="Ex : Casablanca Rue 10 N80"
								type="text">
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-4 control-label">Sexe</label>
						<div class="col-lg-8">
							<div class="radio">
								<label> <input type="radio" name="sexe" id="optionHomme"
									value="true"> Homme
								</label>
							</div>

							<div class="radio">
								<label> <input type="radio" name="sexe" id="optionFemme"
									value="false"> Femme
								</label>
							</div>
						</div>
					</div>


				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Annuler</button>
					<input type="submit" class="btn btn-primary" value="Mettre à
						jour">
				</div>

			</form>
		</div>
	</div>
</div> -->