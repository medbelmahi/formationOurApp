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
public class FormationAddAction extends SqliBasicAction {
	private static final long serialVersionUID = -5986101471092569767L;

	@Autowired
	public FormationMetier formationMetier;
	
	private String titreFormation;
	private String descriptionFormation;
	
	@Override
	public String execute() throws Exception {
		try {
			System.out.println(descriptionFormation);
			Formation formation = new Formation();
			formation.setTitreFormation(titreFormation);
			formation.setDescriptionFormation(descriptionFormation);
			formation.setDateCreationFormation(null);//null = Today
			
			formationMetier.addFormation(formation);
			
			setSessionActionMessageText(getText("addFormation.message.add.success"));
			return ActionSupport.SUCCESS;
		
		} catch (Exception e) {
			setSessionActionErrorText(getText("addFormation.error.add.fail"));
			return ActionSupport.ERROR;
		}
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
