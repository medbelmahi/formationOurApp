/**
 * 
 */
package com.sqli.echallenge.formation.web.ajax;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sqli.echallenge.formation.metier.CollaborateurMetier;
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
public class InscrireCollaborateurAjaxAction extends SqliBasicAction {
	private static final long serialVersionUID = 5033218013153478951L;

	@Autowired
	public CollaborateurMetier collaborateurMetier;
	
	@Autowired
	public SessionFormationMetier sessionFormationMetier;
	
	@Autowired
	public SessionInscriptionMetier sessionInscriptionMetier;
	
	private Long idCollaborateur;
	private Long idSessionFormation;
	private String status;
	
	@Override
	public String execute() throws Exception {
		try {
			Collaborateur collaborateur = collaborateurMetier.getCollaborateur(idCollaborateur);
			SessionFormation sessionFormation = sessionFormationMetier.getSessionFormation(idSessionFormation);
			
			SessionInscription si = new SessionInscription();
			si.setCodeInscription(new SqliRandomGenerator().generateRandomString(30));//generated code
			
			si.setCollaborateur(collaborateur);
			si.setSessionFormation(sessionFormation);
			
			sessionInscriptionMetier.addSessionInscription(si);
			
			//Send Email to collaborateur
			
			
			status = ActionSupport.SUCCESS;
			
		} catch (Exception e) {
			status = ActionSupport.ERROR;
		}
		
		return ActionSupport.NONE;
	}
	
	public Long getIdCollaborateur() {
		return idCollaborateur;
	}

	public void setIdCollaborateur(Long idCollaborateur) {
		this.idCollaborateur = idCollaborateur;
	}

	public Long getIdSessionFormation() {
		return idSessionFormation;
	}

	public void setIdSessionFormation(Long idSessionFormation) {
		this.idSessionFormation = idSessionFormation;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
}
