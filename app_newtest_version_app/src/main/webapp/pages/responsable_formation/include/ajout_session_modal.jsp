<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<div style="display: none;" aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="addSessionModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
				<h4 class="modal-title">Ajouter Nouvelle Formation</h4>
			</div>

			<div class="modal-body">
				<div class="panel-body">
					<form data-toggle="validator" id="add_session" action="addSessionFormation" method="post" role="form" class="form-horizontal adminex-form">

						<input type="hidden" name="idFormation" value="" id="idFormation_session">
						
						<div class="form-group">
							<label for="inputTitreSessionFormation_2" class="col-sm-2 col-sm-2 control-label">Titre</label> 
							<div class="col-sm-10">
								<input autocomplete="off" name="titreSessionFormation" class="form-control" id="inputTitreSessionFormation_2" placeholder="Nom" type="text" required>
							</div>
						</div>
						
						<div class="form-group">
							<label for="inputLieuSessionFormation_2" class="col-sm-2 col-sm-2 control-label">Lieu</label> 
							<div class="col-sm-10">
								<input autocomplete="off" name="lieuSessionFormation" class="form-control" id="inputLieuSessionFormation_2" placeholder="Ex : atelier de programmation JEE" type="text">
							</div>
						</div>
						
						
						<div class="form-group">
                            <label class="control-label col-sm-2">Date </label>
                            <div class="col-sm-10">
                                <div class="input-group input-large custom-date-range" data-date="13/07/2013" data-date-format="dd/mm/yyyy">
                                    <input type="text" class="form-control dpd1" name="dateDebutSessionFormation" pattern="^(\d{2})\/(\d{2})\/(\d{4})" type="text" readonly="readonly" value="12/12/2014" size="16">
                                    <span class="input-group-addon">à</span>
                                    <input type="text" class="form-control dpd2" name="dateFinSessionFormation" pattern="^(\d{2})\/(\d{2})\/(\d{4})" type="text" readonly="readonly" value="16/12/2014" size="16">
                                </div>
                                <span class="help-block">Choisir l'interval</span>
                            </div>
                        </div>
                        
                        
                        <div class="form-group">
							<label for="inputRole_2" class="col-sm-2 col-sm-2 control-label">Formateur</label> 
							<div class="col-sm-10">
								<select id="inputRole" name="idFormateur" class="form-control input-sm m-bot15">
										<s:iterator value="formateurs">
											<option value='<s:property value="idUtilisateur" />'><s:property value="fullname" /></option>
										</s:iterator>
                            	</select>
							</div>
						</div>
						
                        <div class="form-group">
							<label for="inputRole_2" class="col-sm-2 col-sm-2 control-label">Description</label> 
							<div class="col-sm-10">
								<div class="compose-editor">
                                    <textarea class="wysihtml5 form-control" rows="9" name="desciptionSessionFormation" id="desciptionSessionFormation_"></textarea>
                                </div>
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