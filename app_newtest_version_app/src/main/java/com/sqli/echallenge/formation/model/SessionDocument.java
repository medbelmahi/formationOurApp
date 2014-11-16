/**
 * 
 */
package com.sqli.echallenge.formation.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Mouad
 *
 */
@Entity
@Table(name="SESSION_DOCUMENT")
public class SessionDocument {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID_SESSION_DOCUMENT")
	private Long idSessionDocument;
	
	@Column(name="ID_SESSION_FORMATION")
	private Long idSessionFormation;
	
	@Column(name="NOM_DOCUMENT")
	private String nomDocument;
	
	@Column(name="DESCRIPTION_DOCUMENT")
	private String descriptionDocument;
	
	@Column(name="URL_DOCUMENT")
	private String urlDocument;
	
	public SessionDocument() {}

	public Long getIdSessionDocument() {
		return idSessionDocument;
	}

	public void setIdSessionDocument(Long idSessionDocument) {
		this.idSessionDocument = idSessionDocument;
	}

	public Long getIdSessionFormation() {
		return idSessionFormation;
	}

	public void setIdSessionFormation(Long idSessionFormation) {
		this.idSessionFormation = idSessionFormation;
	}

	public String getNomDocument() {
		return nomDocument;
	}

	public void setNomDocument(String nomDocument) {
		this.nomDocument = nomDocument;
	}

	public String getUrlDocument() {
		return urlDocument;
	}

	public void setUrlDocument(String urlDocument) {
		this.urlDocument = urlDocument;
	}

	public String getDescriptionDocument() {
		return descriptionDocument;
	}

	public void setDescriptionDocument(String descriptionDocument) {
		this.descriptionDocument = descriptionDocument;
	}
	
}
