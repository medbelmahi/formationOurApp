/**
 * 
 */
package com.sqli.echallenge.formation.web.ajax;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sqli.echallenge.formation.metier.SessionFormationMetier;
import com.sqli.echallenge.formation.model.SessionFormation;
import com.sqli.echallenge.formation.util.SqliDate;
import com.sqli.echallenge.formation.web.SqliBasicAction;

/**
 * @author Mouad
 *
 */
@Controller
public class GetSessionFormationAjaxAction extends SqliBasicAction {
	private static final long serialVersionUID = 5033218013153478951L;

	@Autowired
	public SessionFormationMetier sessionFormationMetier;
	
	private String status;
	private Long idSessionFormation;
	private String titreSessionFormation;
	private String lieuSessionFormation;
	private String dateDebutSessionFormation;
	private String dateFinSessionFormation;
	private String desciptionSessionFormation;
	private Long idFormateur;
	
	@Override
	public String execute() throws Exception {
		try {
			SessionFormation sf = sessionFormationMetier.getSessionFormation(idSessionFormation);
			titreSessionFormation = sf.getTitreSessionFormation();
			lieuSessionFormation = sf.getLieuSessionFormation();
			desciptionSessionFormation = sf.getDesciptionSessionFormation();
			
			idFormateur = sf.getFormateur().getIdUtilisateur();
			
			dateDebutSessionFormation = SqliDate.getDateString(sf.getDateDebutSessionFormation());
			dateFinSessionFormation = SqliDate.getDateString(sf.getDateFinSessionFormation());
			
			status = ActionSupport.SUCCESS;
			
		} catch (Exception e) {
			status = ActionSupport.ERROR;
		}
		
		return ActionSupport.NONE;
	}
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Long getIdSessionFormation() {
		return idSessionFormation;
	}

	public void setIdSessionFormation(Long idSessionFormation) {
		this.idSessionFormation = idSessionFormation;
	}

	public String getTitreSessionFormation() {
		return titreSessionFormation;
	}

	public void setTitreSessionFormation(String titreSessionFormation) {
		this.titreSessionFormation = titreSessionFormation;
	}

	public String getDateDebutSessionFormation() {
		return dateDebutSessionFormation;
	}

	public void setDateDebutSessionFormation(String dateDebutSessionFormation) {
		this.dateDebutSessionFormation = dateDebutSessionFormation;
	}

	public String getDateFinSessionFormation() {
		return dateFinSessionFormation;
	}

	public void setDateFinSessionFormation(String dateFinSessionFormation) {
		this.dateFinSessionFormation = dateFinSessionFormation;
	}

	public String getDesciptionSessionFormation() {
		return desciptionSessionFormation;
	}

	public void setDesciptionSessionFormation(String desciptionSessionFormation) {
		this.desciptionSessionFormation = desciptionSessionFormation;
	}

	public Long getIdFormateur() {
		return idFormateur;
	}

	public void setIdFormateur(Long idFormateur) {
		this.idFormateur = idFormateur;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getLieuSessionFormation() {
		return lieuSessionFormation;
	}

	public void setLieuSessionFormation(String lieuSessionFormation) {
		this.lieuSessionFormation = lieuSessionFormation;
	}

}
