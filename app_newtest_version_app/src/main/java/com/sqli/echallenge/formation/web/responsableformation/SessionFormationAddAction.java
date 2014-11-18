/**
 * 
 */
package com.sqli.echallenge.formation.web.responsableformation;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.DateRangeFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.sqli.echallenge.formation.metier.FormationMetier;
import com.sqli.echallenge.formation.metier.SessionFormationMetier;
import com.sqli.echallenge.formation.metier.UtilisateurMetier;
import com.sqli.echallenge.formation.model.Formation;
import com.sqli.echallenge.formation.model.Seance;
import com.sqli.echallenge.formation.model.SessionFormation;
import com.sqli.echallenge.formation.model.Utilisateur;
import com.sqli.echallenge.formation.web.SqliBasicAction;

/**
 * @author Mouad
 *
 */
@Controller
public class SessionFormationAddAction extends SqliBasicAction {
	private static final long serialVersionUID = 3439036513942558659L;

	@Autowired
	public SessionFormationMetier sessionFormationMetier;
	
	@Autowired
	public FormationMetier formationMetier;
	
	@Autowired
	public UtilisateurMetier utilisateurMetier;
	
	private Long idFormation;
	private Long idFormateur;
	private String titreSessionFormation;
	private String lieuSessionFormation;
	private String desciptionSessionFormation;
	
	private Date dateDebutSessionFormation;
	private Date dateFinSessionFormation;
	
	@SuppressWarnings("deprecation")
	@Override
	public String execute() throws Exception {
		try {
			//else
			SessionFormation sf = new SessionFormation();
			
			Formation formation = formationMetier.getFormation(idFormation);
			Utilisateur formateur = utilisateurMetier.getUtilisateur(idFormateur);
			
			sf.setFormation(formation);
			sf.setFormateur(formateur);
			
			sf.setTitreSessionFormation(titreSessionFormation);
			sf.setLieuSessionFormation(lieuSessionFormation);
			sf.setDesciptionSessionFormation(desciptionSessionFormation);
			
			sf.setDateCreateionSessionFormation(null);
			sf.setDateDebutSessionFormation(dateDebutSessionFormation);
			sf.setDateFinSessionFormation(dateFinSessionFormation);
			
			//addSeances to sessionFormation
			for(Date date = new Date(dateDebutSessionFormation.getTime()); date.compareTo(dateFinSessionFormation)<0; date.setDate(date.getDate()+1)){
				//Seance empty
				Seance seance = new Seance();
				seance.setDateSeance(date);
				
				//add seance to sessionFormation
				sf.getSceances().add(seance);
				seance.setSessionFormation(sf);
			}
			
			sessionFormationMetier.addSessionFormation(sf);
			
			setSessionActionMessageText(getText("addSessionFormation.message.add.success"));
			return ActionSupport.SUCCESS;
		} catch (Exception e) {
			
			setSessionActionErrorText(getText("addSessionFormation.error.add.fail"));
			return ActionSupport.ERROR;
		}
	}
	
	@Override
	public void validate() {
		//if dateDebut grather than dateFin throw Exception
		if(dateDebutSessionFormation != null && dateFinSessionFormation != null){
			if(dateDebutSessionFormation.compareTo(dateFinSessionFormation) > 0){
				addActionError("");
				setSessionActionErrorText(getText("addSessionFormation.error.date.fail"));
			}
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
	public Long getIdFormateur() {
		return idFormateur;
	}

	public void setIdFormateur(Long idFormateur) {
		this.idFormateur = idFormateur;
	}

	@RequiredFieldValidator(shortCircuit=true)
	@RequiredStringValidator(message="titre", shortCircuit=true)
	public String getTitreSessionFormation() {
		return titreSessionFormation;
	}

	public void setTitreSessionFormation(String titreSessionFormation) {
		this.titreSessionFormation = titreSessionFormation;
	}

	@RequiredFieldValidator(shortCircuit=true)
	@RequiredStringValidator(message="titre", shortCircuit=true)
	public String getLieuSessionFormation() {
		return lieuSessionFormation;
	}

	public void setLieuSessionFormation(String lieuSessionFormation) {
		this.lieuSessionFormation = lieuSessionFormation;
	}

	public String getDesciptionSessionFormation() {
		return desciptionSessionFormation;
	}

	public void setDesciptionSessionFormation(String desciptionSessionFormation) {
		this.desciptionSessionFormation = desciptionSessionFormation;
	}

	@RequiredFieldValidator(shortCircuit=true)
	@DateRangeFieldValidator(message="dateFormat", dateFormat = "dd/MM/yyyy", shortCircuit=true)
	public Date getDateDebutSessionFormation() {
		return dateDebutSessionFormation;
	}

	public void setDateDebutSessionFormation(Date dateDebutSessionFormation) {
		this.dateDebutSessionFormation = dateDebutSessionFormation;
	}

	@RequiredFieldValidator(shortCircuit=true)
	@DateRangeFieldValidator(message="dateFormat", dateFormat = "dd/MM/yyyy", shortCircuit=true)
	public Date getDateFinSessionFormation() {
		return dateFinSessionFormation;
	}

	public void setDateFinSessionFormation(Date dateFinSessionFormation) {
		this.dateFinSessionFormation = dateFinSessionFormation;
	}
	
}
