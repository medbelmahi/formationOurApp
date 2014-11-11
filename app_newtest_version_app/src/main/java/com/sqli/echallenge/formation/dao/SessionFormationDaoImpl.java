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

import com.sqli.echallenge.formation.model.SessionFormation;

/**
 * @author Mouad
 *
 */
@Repository
@Transactional
public class SessionFormationDaoImpl implements SessionFormationDao {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	public SessionFormation getSessionFormation(Long idSessionFormation) throws Exception {
		SessionFormation sessionFormation = entityManager.find(SessionFormation.class, idSessionFormation);
		if(sessionFormation == null) throw new Exception("sqliException : No Entery found");
		
		return sessionFormation;
	}

	@SuppressWarnings("unchecked")
	public List<SessionFormation> getAllSessionFormations() throws Exception {
		Query query = entityManager.createQuery("from SessionFormation");
		
		return query.getResultList();
	}

	@SuppressWarnings("unchecked")
	public List<SessionFormation> getAllSessionFormationsOfFormateur(Long idFormateur) throws Exception {
		Query query = entityManager.createQuery("from SessionFormation where formateur.idUtilisateur=:idFormateur");
		query.setParameter("idFormateur", idFormateur);
		
		return query.getResultList();
	}

	public void updateSessionFormation(SessionFormation sessionFormation) throws Exception {
		entityManager.merge(sessionFormation);
	}

	public void removeSessionFormation(Long idSessionFormation) throws Exception {
		entityManager.remove(getSessionFormation(idSessionFormation));
	}

	public void addSessionFormation(SessionFormation sessionFormation) throws Exception {
		entityManager.persist(sessionFormation);
	}

	public EntityManager getEntityManager() {
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

}
