/**
 * 
 */
package com.sqli.echallenge.formation.metier;

import java.util.List;

import com.sqli.echallenge.formation.model.SessionDocument;

/**
 * @author Mouad
 *
 */
public interface SessionDocumentMetier {
	public SessionDocument getSessionDocument(Long idSessionDocument) throws Exception;
	public List<SessionDocument> getAllDocumentsOfSession(Long idSessionFormation) throws Exception;
	public void addSessionDocument(SessionDocument sessionDocument) throws Exception;
	public void deleteSessionDocument(Long idSessionDocument) throws Exception;
}
