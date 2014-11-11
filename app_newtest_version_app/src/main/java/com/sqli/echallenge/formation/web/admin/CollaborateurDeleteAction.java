/**
 * 
 */
package com.sqli.echallenge.formation.web.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.ConversionErrorFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.sqli.echallenge.formation.metier.CollaborateurMetier;
import com.sqli.echallenge.formation.web.SqliBasicAction;

/**
 * @author Mouad
 *
 */
@Controller
public class CollaborateurDeleteAction extends SqliBasicAction {
	private static final long serialVersionUID = 1683964320780613353L;
	
	@Autowired
	public CollaborateurMetier collaborateurMetier;
	
	private Long id;
	
	@Override
	public String execute() throws Exception {
		//After validation
		try {
			//Delete collaborateur & redirect to listCollaborateurs
			collaborateurMetier.removeCollaborateur(id);
			setSessionActionMessageText(getText("deleteCollaborateur.message.delete.success"));
			return ActionSupport.SUCCESS;
			
		} catch (Exception e) {
			//Delete Fail
			setSessionActionErrorText(getText("deleteCollaborateur.error.delete.fail"));
			return ActionSupport.ERROR;
		}
		
	}

	@RequiredFieldValidator(shortCircuit=true)
	@ConversionErrorFieldValidator(shortCircuit=true)
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
}
