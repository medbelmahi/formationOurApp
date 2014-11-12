/**
 * 
 */
package com.sqli.echallenge.formation.web.ajax;

import java.util.HashMap;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sqli.echallenge.formation.metier.CollaborateurMetier;
import com.sqli.echallenge.formation.model.Collaborateur;
import com.sqli.echallenge.formation.model.HabilitationScore;
import com.sqli.echallenge.formation.util.SqliDate;
import com.sqli.echallenge.formation.web.SqliBasicAction;

/**
 * @author Mouad
 *
 */
@Controller
public class GetCollaborateurAjaxAction extends SqliBasicAction {
	private static final long serialVersionUID = 5033218013153478951L;

	@Autowired
	public CollaborateurMetier collaborateurMetier;
	
	private Long idCollaborateur;
	private String status;
	
	private String nom;
	private String prenom;
	private String email;
	private String dateNaissance;
	private String telephone;
	private String adresse;
	private boolean sexe;
	
	private HashMap<String, Integer> habilitationScores = new HashMap<String, Integer>();
	
	@Override
	public String execute() throws Exception {
		try {
			Collaborateur collaborateur = collaborateurMetier.getCollaborateur(idCollaborateur);
			nom = collaborateur.getNomCollaborateur();
			prenom = collaborateur.getPrenomCollaborateur();
			email = collaborateur.getEmailCollaborateur();
			dateNaissance = SqliDate.getDateString(collaborateur.getDateNaissanceCollaborateur());
			telephone = collaborateur.getTelephoneCollaborateur();
			adresse = collaborateur.getAdresseCollaborateur();
			sexe = collaborateur.isSexeCollaborateur();
			
			//Habilitations
			Set<HabilitationScore> habilitations = collaborateur.getHabilitations();
			for(HabilitationScore hs : habilitations){
				habilitationScores.put(hs.getHabilitation().getNomHabilitation(), hs.getScoreHabilitation());
			}
			
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getDateNaissance() {
		return dateNaissance;
	}

	public void setDateNaissance(String dateNaissance) {
		this.dateNaissance = dateNaissance;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getSexe() {
		return (sexe) ? "true" : "false";
	}

	public void setSexe(boolean sexe) {
		this.sexe = sexe;
	}

	public HashMap<String, Integer> getHabilitationScores() {
		return habilitationScores;
	}

	public void setHabilitationScores(HashMap<String, Integer> habilitationScores) {
		this.habilitationScores = habilitationScores;
	}
	
	public String getSexeString(){
		if(sexe != true){
			return "Male";
		}
		return "Female";
	}
	
	public String getFullname(){
		if(prenom==null || nom==null) return null;
		
		return prenom.substring(0, 1).toUpperCase() + prenom.substring(1) + " " + nom.toUpperCase();
	}
	
}
