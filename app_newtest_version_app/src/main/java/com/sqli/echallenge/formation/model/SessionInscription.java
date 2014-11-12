/**
 * 
 */
package com.sqli.echallenge.formation.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

/**
 * @author Mouad
 *
 */
@Entity
@Table(name="SESSION_INSCRIPTION")
public class SessionInscription {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID_SESSION_INSCRIPTION")
	private Long idSessionInscription;
	@Column(name="DATE_CONFIRMATION")
	@Temporal(TemporalType.DATE)
	private Date dateConfirmation;
	@Column(name="CODE_INSCRIPTION")
	private String codeInscription;//generated Code 
	@Column(name="CONFIRMED_INSCRIPTION")
	private Boolean confirmedInscription;//null = never visited, true=confirmed , false=notConfirmed
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="ID_SESSION_FORMATION")
	private SessionFormation sessionFormation;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="ID_COLLABORATEUR")
	private Collaborateur collaborateur;
	
	public SessionInscription() {
	}

	public Long getIdSessionInscription() {
		return idSessionInscription;
	}

	public void setIdSessionInscription(Long idSessionInscription) {
		this.idSessionInscription = idSessionInscription;
	}

	public Date getDateConfirmation() {
		return dateConfirmation;
	}

	public void setDateConfirmation(Date dateConfirmation) {
		this.dateConfirmation = dateConfirmation;
	}

	public String getCodeInscription() {
		return codeInscription;
	}

	public void setCodeInscription(String codeInscription) {
		this.codeInscription = codeInscription;
	}

	public Boolean getConfirmedInscription() {
		return confirmedInscription;
	}

	public void setConfirmedInscription(Boolean confirmedInscription) {
		this.confirmedInscription = confirmedInscription;
	}

	public SessionFormation getSessionFormation() {
		return sessionFormation;
	}

	public void setSessionFormation(SessionFormation sessionFormation) {
		this.sessionFormation = sessionFormation;
	}

	public Collaborateur getCollaborateur() {
		return collaborateur;
	}

	public void setCollaborateur(Collaborateur collaborateur) {
		this.collaborateur = collaborateur;
	}
	
	@Transient
	public String getStatus(){
		if(confirmedInscription == null) return "Not yet Traiter";
		if(confirmedInscription == true) return "Confirmer";
		if(confirmedInscription == false) return "Not Confirmed";
		
		return null;
	}
	
}
