/**
 * 
 */
package com.sqli.echallenge.formation.web.responsableformation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sqli.echallenge.formation.metier.FormationMetier;
import com.sqli.echallenge.formation.metier.UtilisateurMetier;
import com.sqli.echallenge.formation.model.Formation;
import com.sqli.echallenge.formation.model.Profil;
import com.sqli.echallenge.formation.model.Utilisateur;
import com.sqli.echallenge.formation.web.SqliBasicAction;

/**
 * @author Mouad
 *
 */
@Controller
public class FormationListAction extends SqliBasicAction {
	private static final long serialVersionUID = 6832530647075532169L;

	@Autowired
	public FormationMetier formationMetier;
	
	@Autowired
	public UtilisateurMetier utilisateurMetier;
	
	private List<Formation> formations;
	
	private List<Utilisateur> formateurs;//this for select formateur in sessionFormation formulaire
	
	@Override
	public String execute() throws Exception {
		try{
			//get Formateurs (utilisateur with Role=formateur)
			formateurs = utilisateurMetier.getAllUtilisateursWithProfil(Profil.ROLE_FORMATEUR);
			//get Formations
			formations = formationMetier.getAllFormation();
			return ActionSupport.SUCCESS;
		}catch(Exception e){
			setSessionActionErrorText(getText("listFormation.error.load.fail"));
			return ActionSupport.ERROR;
		}
	}

	public List<Formation> getFormations() {
		return formations;
	}

	public void setFormations(List<Formation> formations) {
		this.formations = formations;
	}

	public List<Utilisateur> getFormateurs() {
		return formateurs;
	}

	public void setFormateurs(List<Utilisateur> formateurs) {
		this.formateurs = formateurs;
	}
}
