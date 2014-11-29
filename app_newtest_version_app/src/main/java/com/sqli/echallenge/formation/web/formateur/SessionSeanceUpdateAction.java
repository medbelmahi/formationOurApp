/**
 * 
 */
package com.sqli.echallenge.formation.web.formateur;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.sqli.echallenge.formation.metier.SeanceMetier;
import com.sqli.echallenge.formation.model.Seance;
import com.sqli.echallenge.formation.web.SqliBasicAction;

/**
 * @author Mouad
 *
 */
@Controller
public class SessionSeanceUpdateAction extends SqliBasicAction {
	private static final long serialVersionUID = 7836414491020447842L;
	
	@Autowired
	public SeanceMetier seanceMetier;
	
	private Long idSessionFormation;
	private Long[] idSeance;
	private String[] titre;
	private String[] date;
	private String[] heureDebut, heureFin;
	private String[] description;
	
	private Date[] dateDebut, dateFin;
	
	@Override
	public void validate() {
		//validate date & time
		dateDebut = new Date[titre.length];
		dateFin = new Date[titre.length];
		
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm");
		
		try{
			for(int i=0; i<titre.length; i++){
				dateDebut[i] = formatter.parse(date[i] + " " + heureDebut[i]);
				dateFin[i] = formatter.parse(date[i] + " " + heureFin[i]);
			}
			
		}catch(Exception e){
			setSessionActionErrorText(getText("sessionSeanceUpdate.error.update.fail"));
			addFieldError("date", "date");
			return;
		}
	}
	
	@Override
	public String execute() throws Exception {
		try{
			for(int i=0; i<titre.length; i++){
				Seance seance = seanceMetier.getSeance(idSeance[i]);
				
				seance.setTitreSeance(titre[i]);
				seance.setDescriptionSeance(description[i]);
				seance.setHeureDebutSeance(dateDebut[i]);
				seance.setHeureFinSeance(dateFin[i]);
				
				seanceMetier.updateSeance(seance);
			}
			
			setSessionActionMessageText(getText("sessionSeanceUpdate.message.update.success"));
			return ActionSupport.SUCCESS;
		}catch(Exception e){

			setSessionActionErrorText(getText("sessionSeanceUpdate.error.update.fail"));
			return ActionSupport.SUCCESS;
		}
	}

	@RequiredFieldValidator(message="titre", shortCircuit=true)
	public String[] getTitre() {
		return titre;
	}

	public void setTitre(String[] titre) {
		this.titre = titre;
	}
	
	@RequiredFieldValidator(message="heureDebut", shortCircuit=true)
	public String[] getHeureDebut() {
		return heureDebut;
	}

	public void setHeureDebut(String[] heureDebut) {
		this.heureDebut = heureDebut;
	}
	
	@RequiredFieldValidator(message="heureFin", shortCircuit=true)
	public String[] getHeureFin() {
		return heureFin;
	}

	public void setHeureFin(String[] heureFin) {
		this.heureFin = heureFin;
	}

	@RequiredFieldValidator(message="description", shortCircuit=true)
	public String[] getDescription() {
		return description;
	}

	public void setDescription(String[] description) {
		this.description = description;
	}

	@RequiredFieldValidator(message="idSessionFormation", shortCircuit=true)
	public Long getIdSessionFormation() {
		return idSessionFormation;
	}

	public void setIdSessionFormation(Long idSessionFormation) {
		this.idSessionFormation = idSessionFormation;
	}

	@RequiredFieldValidator(message="date", shortCircuit=true)
	public String[] getDate() {
		return date;
	}

	public void setDate(String[] date) {
		this.date = date;
	}

	@RequiredFieldValidator(message="idSeance", shortCircuit=true)
	public Long[] getIdSeance() {
		return idSeance;
	}

	public void setIdSeance(Long[] idSeance) {
		this.idSeance = idSeance;
	}

}
