/**
 * 
 */
package com.sqli.echallenge.formation.web.responsableformation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.sqli.echallenge.formation.metier.SessionFormationMetier;
import com.sqli.echallenge.formation.metier.SessionInscriptionMetier;
import com.sqli.echallenge.formation.model.Collaborateur;
import com.sqli.echallenge.formation.model.SessionFormation;
import com.sqli.echallenge.formation.model.SessionInscription;
import com.sqli.echallenge.formation.util.SqliRandomGenerator;
import com.sqli.echallenge.formation.web.SqliBasicAction;

/**
 * @author Mouad
 *
 */
@Controller
public class CollaborateurInscrireAction extends SqliBasicAction {
	private static final long serialVersionUID = 3050958981198816432L;

	@Autowired
	public SessionInscriptionMetier sessionInscriptionMetier;
	
	@Autowired
	public SessionFormationMetier sessionFormationMetier;
	
	private Long idSessionFormation;
	
	@Override
	public String execute() throws Exception {
		try {
			//Get SessionFormation
			SessionFormation sessionFormation = sessionFormationMetier.getSessionFormation(idSessionFormation);
			
			//Get Unregistred collaborateurs
			List<Collaborateur> collaborateursNotInscrit = sessionInscriptionMetier.getUnregistredCollaborateurs(idSessionFormation);
			
			for(Collaborateur c : collaborateursNotInscrit){
				//Inscrire Collaborateur
				SessionInscription si = new SessionInscription();
				si.setCodeInscription(new SqliRandomGenerator().generateRandomString(30));
				si.setCollaborateur(c);
				si.setSessionFormation(sessionFormation);
				sessionInscriptionMetier.addSessionInscription(si);
				
				//Send Email to collaborateur
			}
			
			setSessionActionMessageText(getText("inscrireCollaborateurs.message.register.success"));
			return ActionSupport.SUCCESS;
			
		} catch (Exception e) {
			setSessionActionErrorText(getText("inscrireCollaborateurs.error.register.fail"));
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
