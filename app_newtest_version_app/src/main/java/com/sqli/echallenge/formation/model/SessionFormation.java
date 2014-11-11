/**
 * 
 */
package com.sqli.echallenge.formation.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * @author Mouad
 *
 */
@Entity
@Table(name="SESSION_FORMATION")
public class SessionFormation {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID_SESSION_FORMATION")
	private Long idSessionFormation;
	
	@Column(name="TITRE_SESSION_FORMATION")
	private String titreSessionFormation;
	
	@Column(name="DESCIPTION_SESSION_FORMATION")
	private String desciptionSessionFormation;
	
	@Column(name="DATE_CREATEION_SESSIONFORMATION")
	@Temporal(TemporalType.DATE)
	private Date dateCreateionSessionFormation;
	
	@Column(name="DATE_DEBUT_SESSION_FORMATION")
	@Temporal(TemporalType.DATE)
	private Date dateDebutSessionFormation;
	
	@Column(name="DATE_FIN_SESSION_FORMATION")
	@Temporal(TemporalType.DATE)
	private Date dateFinSessionFormation;
	
	@Column(name="LIEU_SESSION_FORMATION")
	private String lieuSessionFormation;
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.EAGER, mappedBy="sessionFormation")
	private Set<Seance> sceances = new HashSet<Seance>();
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="ID_FORMATION")
	private Formation formation;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="ID_FORMATEUR")
	private Utilisateur formateur;
	
	public SessionFormation() {
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

	public String getDesciptionSessionFormation() {
		return desciptionSessionFormation;
	}

	public void setDesciptionSessionFormation(String desciptionSessionFormation) {
		this.desciptionSessionFormation = desciptionSessionFormation;
	}

	public Date getDateCreateionSessionFormation() {
		return dateCreateionSessionFormation;
	}

	public void setDateCreateionSessionFormation(Date dateCreateionSessionFormation) {
		if(dateCreateionSessionFormation == null)
			this.dateCreateionSessionFormation = new Date();
		else
			this.dateCreateionSessionFormation = dateCreateionSessionFormation;
	}

	public Date getDateDebutSessionFormation() {
		return dateDebutSessionFormation;
	}

	public void setDateDebutSessionFormation(Date dateDebutSessionFormation) {
		this.dateDebutSessionFormation = dateDebutSessionFormation;
	}

	public Date getDateFinSessionFormation() {
		return dateFinSessionFormation;
	}

	public void setDateFinSessionFormation(Date dateFinSessionFormation) {
		this.dateFinSessionFormation = dateFinSessionFormation;
	}

	public String getLieuSessionFormation() {
		return lieuSessionFormation;
	}

	public void setLieuSessionFormation(String lieuSessionFormation) {
		this.lieuSessionFormation = lieuSessionFormation;
	}

	public Set<Seance> getSceances() {
		return sceances;
	}

	public void setSceances(Set<Seance> sceances) {
		this.sceances = sceances;
	}

	public Formation getFormation() {
		return formation;
	}

	public void setFormation(Formation formation) {
		this.formation = formation;
	}

	public Utilisateur getFormateur() {
		return formateur;
	}

	public void setFormateur(Utilisateur formateur) {
		this.formateur = formateur;
	}
}
