<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<div style="display: none;" aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="updateFormationModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
				<h4 class="modal-title">Mise à jour de la formation</h4>
			</div>

			<div class="modal-body">
				<div class="panel-body">
					<form data-toggle="validator" id="update_formation" action="updateFormation" method="post" role="form" class="form-horizontal adminex-form">
						
						<input type="hidden" name="idFormation" value="" id="idFormation">
						
						<div class="form-group">
							<label for="inputTitreFormation" class="col-sm-2 col-sm-2 control-label">Titre</label> 
							<div class="col-sm-10">
								<input autocomplete="off" name="titreFormation" class="form-control" id="inputTitreFormation" placeholder="Nom" type="text" required>
							</div>
						</div>
						
						<div class="form-group">
							<label for="inputdescriptionFormation" class="col-sm-2 col-sm-2 control-label">Description</label> 
							<div class="col-sm-10">
								<input autocomplete="off" name="descriptionFormation" class="form-control" id="inputdescriptionFormation" placeholder="Ex : atelier de programmation JEE" type="text">
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

						<button type="submit" class="btn btn-primary">Mise à jour</button>
					</form>
				</div>
			</div>
			<!--  -->

		</div>
	</div>
</div>

