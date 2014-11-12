<div class="modal fade" id="addCollaborateurModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Ajouter un collaborateur</h4>
			</div>

			<form data-toggle="validator" id="add_collaborateur" action="addCollaborateur" method="post" >
				<div class="modal-body">
					<div class="col-lg-12 image">
						<img src="images/members/avatar.png" />
					</div>
					<div class="form-group">
						<label for="inputLastName" class="col-lg-4 control-label">Nom</label>
						<div class="col-lg-8">
							<input autocomplete="off" name="nom" class="form-control"
								id="inputLastName_2" placeholder="Nom" type="text" required>
						</div>
					</div>
					<div class="form-group">
						<label for="inputFirstName" class="col-lg-4 control-label">Prenom</label>
						<div class="col-lg-8">
							<input autocomplete="off" name="prenom" class="form-control"
								id="inputFirstName_2" placeholder="Prenom" type="text" required>
						</div>
					</div>

					<div class="form-group">
						<label for="inputEmail" class="col-lg-4 control-label">Email</label>
						<div class="col-lg-8">
							<input autocomplete="off" name="email" class="form-control"
								id="inputEmail_2" placeholder="Email" type="email" required>
						</div>
					</div>

					<div class="form-group">
						<label for="inputDateNaissance" class="col-lg-4 control-label">Date
							de Naissance</label>
						<div class="col-lg-8">
							<input autocomplete="off" name="dateNaissance" pattern="^(\d{2})\/(\d{2})\/(\d{4})"
								class="form-control inputDateDeNaissance" id="inputDateNaissance_2"
								placeholder="dateNaissance" type="text" required>
						</div>
					</div>

					<div class="form-group">
						<label for="inputTelephone" class="col-lg-4 control-label">Telephone</label>
						<div class="col-lg-8">
							<input autocomplete="off" name="telephone" class="form-control"
								id="inputTelephone_2" placeholder="Ex : 0610807402" type="text" pattern="^0[5-6]{1}\d{8}">
							<div class="help-block with-errors">Ex : 0610807402</div>
						</div>
						
					</div>
					<div class="form-group">
						<label for="inputAdress" class="col-lg-4 control-label">Adresse</label>
						<div class="col-lg-8">
							<input autocomplete="off" name="adresse" class="form-control"
								id="inputAdress_2" placeholder="Ex : Casablanca Rue 10 N80"
								type="text">
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-4 control-label">Sexe</label>
						<div class="col-lg-8">
							<div class="radio">
								<label> <input type="radio" name="sexe" id="optionHomme_2"
									value="true" checked="checked"> Homme
								</label>
							</div>

							<div class="radio">
								<label> <input type="radio" name="sexe" id="optionFemme_2"
									value="false"> Femme
								</label>
							</div>
						</div>
					</div>


				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Annuler</button>
					<input type="submit" class="btn btn-primary" value="Ajouter">
				</div>

			</form>
		</div>
	</div>
</div>