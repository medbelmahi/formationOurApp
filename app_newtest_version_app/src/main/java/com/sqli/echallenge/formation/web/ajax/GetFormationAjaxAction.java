/**
 * 
 */
package com.sqli.echallenge.formation.web.ajax;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sqli.echallenge.formation.metier.FormationMetier;
import com.sqli.echallenge.formation.model.Formation;
import com.sqli.echallenge.formation.web.SqliBasicAction;

/**
 * @author Mouad
 *
 */
@Controller
public class GetFormationAjaxAction extends SqliBasicAction {
	private static final long serialVersionUID = 5033218013153478951L;

	@Autowired
	public FormationMetier formationMetier;
	
	private String status;
	private Long idFormation;
	private String titreFormation;
	private String descriptionFormation;
	
	@Override
	public String execute() throws Exception {
		try {
			Formation formation = formationMetier.getFormation(idFormation);
			titreFormation = formation.getTitreFormation();
			descriptionFormation = formation.getDescriptionFormation();
			
			status = ActionSupport.SUCCESS;
			
		} catch (Exception e) {
			status = ActionSupport.ERROR;
		}
		
		return ActionSupport.NONE;
	}
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Long getIdFormation() {
		return idFormation;
	}

	public void setIdFormation(Long idFormation) {
		this.idFormation = idFormation;
	}

	public String getTitreFormation() {
		return titreFormation;
	}

	public void setTitreFormation(String titreFormation) {
		this.titreFormation = titreFormation;
	}

	public String getDescriptionFormation() {
		return descriptionFormation;
	}

	public void setDescriptionFormation(String descriptionFormation) {
		this.descriptionFormation = descriptionFormation;
	}
}
