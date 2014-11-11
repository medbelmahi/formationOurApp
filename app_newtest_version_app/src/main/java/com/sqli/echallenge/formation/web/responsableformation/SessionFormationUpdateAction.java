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
import com.sqli.echallenge.formation.metier.SessionFormationMetier;
import com.sqli.echallenge.formation.metier.UtilisateurMetier;
import com.sqli.echallenge.formation.model.SessionFormation;
import com.sqli.echallenge.formation.model.Utilisateur;
import com.sqli.echallenge.formation.web.SqliBasicAction;

/**
 * @author Mouad
 *
 */
@Controller
public class SessionFormationUpdateAction extends SqliBasicAction {
	private static final long serialVersionUID = 3439036513942558659L;

	@Autowired
	public SessionFormationMetier sessionFormationMetier;
	
	@Autowired
	public UtilisateurMetier utilisateurMetier;
	
	private Long idSessionFormation;
	private Long idFormateur;
	private String titreSessionFormation;
	private String lieuSessionFormation;
	private String desciptionSessionFormation;
	
	private Date dateDebutSessionFormation;
	private Date dateFinSessionFormation;
	
	@Override
	public String execute() throws Exception {
		try {
			//if dateDebut grather than dateFin throw Exception
			if(dateDebutSessionFormation.compareTo(dateFinSessionFormation) > 0){
				throw new Exception();
			}
			
			//else
			SessionFormation sf = sessionFormationMetier.getSessionFormation(idSessionFormation);
			sf.setTitreSessionFormation(titreSessionFormation);
			sf.setLieuSessionFormation(lieuSessionFormation);
			sf.setDesciptionSessionFormation(desciptionSessionFormation);
			
			sf.setDateDebutSessionFormation(dateDebutSessionFormation);
			sf.setDateFinSessionFormation(dateFinSessionFormation);
			
			Utilisateur formateur = utilisateurMetier.getUtilisateur(idFormateur);
			sf.setFormateur(formateur);
			
			sessionFormationMetier.updateSessionFormation(sf);
			
			setSessionActionMessageText(getText("updateSessionFormation.message.update.success"));
			return ActionSupport.SUCCESS;
		} catch (Exception e) {
			
			setSessionActionErrorText(getText("updateSessionFormation.error.update.fail"));
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
