/**
 * 
 */
package com.sqli.echallenge.formation.web.formateur;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sqli.echallenge.formation.metier.SessionFormationMetier;
import com.sqli.echallenge.formation.model.SessionFormation;
import com.sqli.echallenge.formation.model.Utilisateur;
import com.sqli.echallenge.formation.web.SqliBasicAction;

/**
 * @author Mouad
 *
 */
@Controller
public class SessionFormationListAction extends SqliBasicAction {
	private static final long serialVersionUID = -9048136154497987979L;
	
	@Autowired
	public SessionFormationMetier sessionFormationMetier;
	
	private List<SessionFormation> sessionFormations;
	
	@Override
	public String execute() throws Exception {
		try {
			//get Formateur from Session
			Utilisateur formateur = getSessionUser();
			
			//check if Utilisateur is formateur?
			
			//get All sessions de formation of the user
			sessionFormations = sessionFormationMetier.getAllSessionFormationsOfFormateur(formateur.getIdUtilisateur());
			return ActionSupport.SUCCESS;
			
		} catch (Exception e) {
			setSessionActionErrorText(getText("sessionFormationList.error.loading.fail"));
			return ActionSupport.ERROR;
		}
	}

	public List<SessionFormation> getSessionFormations() {
		return sessionFormations;
	}

	public void setSessionFormations(List<SessionFormation> sessionFormations) {
		this.sessionFormations = sessionFormations;
	}

}
