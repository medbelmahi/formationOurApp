/**
 * 
 */
package com.sqli.echallenge.formation.web.responsableformation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.sqli.echallenge.formation.metier.SessionInscriptionMetier;
import com.sqli.echallenge.formation.model.Collaborateur;
import com.sqli.echallenge.formation.model.SessionInscription;
import com.sqli.echallenge.formation.web.SqliBasicAction;

/**
 * @author Mouad
 *
 */
@Controller
public class CollaborateurListAction extends SqliBasicAction {
	private static final long serialVersionUID = 3050958981198816432L;

	@Autowired
	public SessionInscriptionMetier sessionInscriptionMetier;
	
	//private List<Collaborateur> collaborateursInscrit;
	private List<SessionInscription> collaborateursInscrit;
	private List<Collaborateur> collaborateursNotInscrit;
	
	private Long idSessionFormation;
	
	@Override
	public String execute() throws Exception {
		try {
			//Get registred collaborateurs 
			collaborateursInscrit = sessionInscriptionMetier.getAllSessionInscriptions(idSessionFormation);
			
			//Get Unregistred collaborateurs
			collaborateursNotInscrit = sessionInscriptionMetier.getUnregistredCollaborateurs(idSessionFormation);
			
			//setSessionActionMessageText(getText(""));
			return ActionSupport.SUCCESS;
			
		} catch (Exception e) {
			setSessionActionErrorText(getText("listCollaborateursRegistred.error.loading.fail"));
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

	public List<SessionInscription> getCollaborateursInscrit() {
		return collaborateursInscrit;
	}

	public void setCollaborateursInscrit(
			List<SessionInscription> collaborateursInscrit) {
		this.collaborateursInscrit = collaborateursInscrit;
	}

	public List<Collaborateur> getCollaborateursNotInscrit() {
		return collaborateursNotInscrit;
	}

	public void setCollaborateursNotInscrit(
			List<Collaborateur> collaborateursNotInscrit) {
		this.collaborateursNotInscrit = collaborateursNotInscrit;
	}
	
}
