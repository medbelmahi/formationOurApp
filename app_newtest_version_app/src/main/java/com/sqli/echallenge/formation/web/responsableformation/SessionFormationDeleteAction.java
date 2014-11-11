/**
 * 
 */
package com.sqli.echallenge.formation.web.responsableformation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.sqli.echallenge.formation.metier.SessionFormationMetier;
import com.sqli.echallenge.formation.web.SqliBasicAction;

/**
 * @author Mouad
 *
 */
@Controller
public class SessionFormationDeleteAction extends SqliBasicAction {
	private static final long serialVersionUID = 3439036513942558659L;

	@Autowired
	public SessionFormationMetier sessionFormationMetier;
	
	private Long idSessionFormation;
	
	@Override
	public String execute() throws Exception {
		try {
			sessionFormationMetier.removeSessionFormation(idSessionFormation);
			
			setSessionActionMessageText(getText("removeSessionFormation.message.delete.success"));
			return ActionSupport.SUCCESS;
		} catch (Exception e) {
			
			setSessionActionErrorText(getText("removeSessionFormation.error.delete.fail"));
			return ActionSupport.ERROR;
		}
	}

	@RequiredFieldValidator(shortCircuit=true)
	public Long getIdSessionFormation() {
		return idSessionFormation;
	}

	public void setIdSessionFormation(Long idSessionFormation) {
		this.idSessionFormation = idSessionFormation;
	}
	
}
