/**
 * 
 */
package com.sqli.echallenge.formation.web.responsableformation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.sqli.echallenge.formation.metier.FormationMetier;
import com.sqli.echallenge.formation.model.Formation;
import com.sqli.echallenge.formation.web.SqliBasicAction;

/**
 * @author Mouad
 *
 */
@Controller
public class FormationUpdateAction extends SqliBasicAction {
	private static final long serialVersionUID = 8265967978844392069L;
	
	@Autowired
	public FormationMetier formationMetier;
	
	private Long idFormation;
	private String titreFormation;
	private String descriptionFormation;
	
	@Override
	public String execute() throws Exception {
		try {
			Formation formation = formationMetier.getFormation(idFormation);
			formation.setTitreFormation(titreFormation);
			formation.setDescriptionFormation(descriptionFormation);
			
			
			formationMetier.updateFormation(formation);
			
			setSessionActionMessageText(getText("updateFormation.message.update.success"));
			return ActionSupport.SUCCESS;
			
		} catch (Exception e) {
			setSessionActionErrorText(getText("updateFormation.error.update.fail"));
			return ActionSupport.ERROR;
		}
	}
	
	@RequiredFieldValidator(shortCircuit=true)
	public Long getIdFormation() {
		return idFormation;
	}

	public void setIdFormation(Long idFormation) {
		this.idFormation = idFormation;
	}
	@RequiredFieldValidator(shortCircuit=true)
	@RequiredStringValidator(message="titre", shortCircuit=true)
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
