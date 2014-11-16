<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<div class="row">
	<div class="col-md-12">
		<section class="panel">
			<header class="panel-heading">
				Gestion des habilitations <span class="tools pull-right"> <a
					class="fa fa-chevron-down" href="javascript:;"
					id="downUphabilitation"></a> <!--                     <a class="fa fa-times" href="javascript:;"></a> -->
				</span>
			</header>
			<div class="panel-body">


				<div class="row">
					<div class="col-md-4">
						<!-- info collaborateur div Begin -->
						<div class="row">
							<div class="col-md-12">
								<div class="panel">
									<div class="panel-body">
										<div class="profile-pic text-center">
											<img alt="" src='<s:url value="/images/photos/user1.png"/>'>
											<h2><s:property value="collaborateur.fullname" /></h2>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="panel">
									<div class="panel-body">
										<ul class="p-info">
											<li>
												<div class="title">Gender</div>
												<div class="desk">Male</div>
											</li>
											<li>
												<div class="title">Founder</div>
												<div class="desk">ABC Inc.</div>
											</li>
											<li>
												<div class="title">Education</div>
												<div class="desk">BSC. in CSE</div>
											</li>
											<li>
												<div class="title">Project Done</div>
												<div class="desk">50+</div>
											</li>
											<li>
												<div class="title">Skills</div>
												<div class="desk">HTML, CSS, JavaScript.</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- info collaborateur div END -->

					<!-- Begin gestion des habilitation d'un collaborateur -->

					<div class="col-md-8">
						<div class="row">
							<div class="col-md-12">
								<div class="panel">
									<div class="panel-body">
										<h4>Mise à jour des habilitations</h4>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-12">
								<div class="panel">
									<div class="panel-body">
										<h4>Ajouter des habilitations</h4>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group last">
													<label class="control-label col-md-3">Searchable</label>

													<div class="col-md-9">
														<select name="country" class="multi-select" multiple=""
															id="my_multi_select3_costum">
															
															<s:iterator value="habilitations">
																<option value='<s:property value="idHabilitation" />' data-description='<s:property value="descriptionHabilitation" />' ><s:property value="nomHabilitation" /></option>
															</s:iterator>
														</select>
													</div>

												</div>
											</div>

											<div class="col-md-6">
												<div class="row">
													<div class="col-md-12">
														<h3 id="theHabilitationName">habilatation name</h3>
														<p id="theHabilitationDescription">Description.</p>
													</div>
												</div>
												<hr>
												<div class="row">
													<div class="col-md-12">
														<div class="col-md-3">Score : </div>
														<div class="col-md-9">
															<input id="theHabilitation" type="hidden" name="theHabilitation" value="" required="required">
															<input id="theScore" type="hidden" name="score" value="1" required="required">
															
															<input name="score_" type="radio" class="star startRating" value="1"/>
															<input name="score_" type="radio" class="star startRating" value="2"/>
															<input name="score_" type="radio" class="star startRating" value="3"/>
															<input name="score_" type="radio" class="star startRating" value="4"/>
															<input name="score_" type="radio" class="star startRating" value="5"/>
														</div>
													</div>
												</div>
												<hr>
												<div class="row">
													<div class="col-md-12">
														<button type="button"
															class="btn btn-primary btn-lg btn-block">Ajouter cette habilitation</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- End gestion des habilitation d'un collaborateur -->

				</div>

			</div>
		</section>
	</div>
</div>