<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<div style="display: none;" aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="addFormationModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
				<h4 class="modal-title">Ajouter Nouvelle Formation</h4>
			</div>

			<div class="modal-body">
				<div class="panel-body">
					<form data-toggle="validator" id="add_formation" action="addFormation" method="post" role="form" class="form-horizontal adminex-form">

						<div class="form-group">
							<label for="inputTitreFormation_2" class="col-sm-2 col-sm-2 control-label">Titre</label> 
							<div class="col-sm-10">
								<input autocomplete="off" name="titreFormation" class="form-control" id="inputTitreFormation_2" placeholder="Nom" type="text" required>
							</div>
						</div>
						
						<div class="form-group">
							<label for="inputAdress_2" class="col-sm-2 col-sm-2 control-label">Description</label> 
							<div class="col-sm-10">
								<input autocomplete="off" name="descriptionFormation" class="form-control" id="inputdescriptionFormation_2" placeholder="Ex : Casablanca Rue 10 N80" type="text">
							</div>
						</div>

						<%-- <div class="form-group">
							<label for="thedateDiv_2" class="col-sm-2 col-sm-2 control-label">Date de naissance</label>
							<div id="thedateDiv_2" class="">

								<div data-date-viewmode="years" data-date-format="dd/mm/yyyy" data-date="12/02/1990" class="col-sm-9 input-append date dpYears">
									<input name="dateNaissance" pattern="^(\d{2})\/(\d{2})\/(\d{4})" type="text" readonly="readonly" value="12/02/1990" size="16" class="form-control"> 
									<span class="input-group-btn add-on">
										<button class="btn btn-primary" type="button">
											<i class="fa fa-calendar"></i>
										</button>
									</span>
								</div>
							</div>
						</div> --%>

						<button type="submit" class="btn btn-primary">Ajouter</button>
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