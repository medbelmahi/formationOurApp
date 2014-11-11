/**
 * 
 */
package com.sqli.echallenge.formation.web.responsableformation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.sqli.echallenge.formation.metier.FormationMetier;
import com.sqli.echallenge.formation.web.SqliBasicAction;

/**
 * @author Mouad
 *
 */
@Controller
public class FormationDeleteAction extends SqliBasicAction {
	private static final long serialVersionUID = 3727588955864156227L;

	@Autowired
	public FormationMetier formationMetier;
	
	private Long idFormation;
	
	@Override
	public String execute() throws Exception {
		try {
			
			formationMetier.removeFormation(idFormation);
			
			setSessionActionMessageText(getText("addFormation.message.delete.success"));
			return ActionSupport.SUCCESS;
			
		} catch (Exception e) {
			setSessionActionErrorText(getText("addFormation.error.delete.fail"));
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
}
