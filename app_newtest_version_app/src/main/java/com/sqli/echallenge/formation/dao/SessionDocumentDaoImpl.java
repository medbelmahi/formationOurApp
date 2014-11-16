/**
 * 
 */
package com.sqli.echallenge.formation.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sqli.echallenge.formation.model.SessionDocument;

/**
 * @author Mouad
 *
 *
 */
@Repository
@Transactional
public class SessionDocumentDaoImpl implements SessionDocumentDao {

	@PersistenceContext
	private EntityManager entityManager;
	
	public SessionDocument getSessionDocument(Long idSessionDocument) throws Exception {
		SessionDocument sd = entityManager.find(SessionDocument.class, idSessionDocument);
		if(sd==null) throw new Exception("Empty entry result");
		
		return sd;
	}

	@SuppressWarnings("unchecked")
	public List<SessionDocument> getAllDocumentsOfSession(Long idSessionFormation) throws Exception {
		Query query = entityManager.createQuery("from SessionDocument where idSessionFormation=:idSessionFormation");
		query.setParameter("idSessionFormation", idSessionFormation);
		
		return query.getResultList();
	}

	public void addSessionDocument(SessionDocument sessionDocument) throws Exception {
		entityManager.persist(sessionDocument);
	}

	public void deleteSessionDocument(Long idSessionDocument) throws Exception {
		entityManager.remove(getSessionDocument(idSessionDocument));
	}

	public EntityManager getEntityManager() {
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

}
