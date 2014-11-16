/**
 * 
 */
package com.sqli.echallenge.formation.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sqli.echallenge.formation.dao.SessionDocumentDao;
import com.sqli.echallenge.formation.model.SessionDocument;

/**
 * @author Mouad
 *
 */
@Service
@Transactional
public class SessionDocumentMetierImpl implements SessionDocumentMetier {

	@Autowired
	private SessionDocumentDao dao;
	
	public SessionDocument getSessionDocument(Long idSessionDocument) throws Exception {
		return dao.getSessionDocument(idSessionDocument);
	}

	public List<SessionDocument> getAllDocumentsOfSession(Long idSessionFormation) throws Exception {
		return dao.getAllDocumentsOfSession(idSessionFormation);
	}

	public void addSessionDocument(SessionDocument sessionDocument)	throws Exception {
		dao.addSessionDocument(sessionDocument);
	}

	public void deleteSessionDocument(Long idSessionDocument) throws Exception {
		dao.deleteSessionDocument(idSessionDocument);
	}

	public SessionDocumentDao getDao() {
		return dao;
	}

	public void setDao(SessionDocumentDao dao) {
		this.dao = dao;
	}

}
