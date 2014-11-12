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

import com.sqli.echallenge.formation.model.Collaborateur;
import com.sqli.echallenge.formation.model.SessionInscription;

/**
 * @author Mouad
 *
 */
@Repository
@Transactional
public class SessionInscriptionDaoImpl implements SessionInscriptionDao {

	@PersistenceContext
	private EntityManager entityManager;
	
	public SessionInscription getSessionInscription(Long idSessionInscription) throws Exception {
		Query query = entityManager.createQuery("from SessionInscription where idSessionInscription=:idSessionInscription");
		query.setParameter("idSessionInscription", idSessionInscription);
		
		return (SessionInscription) query.getSingleResult();
	}

	public void addSessionInscription(SessionInscription sessionInscription) throws Exception {
		entityManager.persist(sessionInscription);
	}

	public void updateSessionInscription(SessionInscription sessionInscription) throws Exception {
		entityManager.merge(sessionInscription);
	}

	@SuppressWarnings("unchecked")
	public List<SessionInscription> getAllSessionInscriptions(Long idSessionFormation) throws Exception {
		Query query = entityManager.createQuery("from SessionInscription where sessionFormation.idSessionFormation=:idSessionFormation");
		query.setParameter("idSessionFormation", idSessionFormation);
		
		return query.getResultList();
	}

	public void removeAllSessionInscription(Long idSessionFormation) throws Exception {
		Query query = entityManager.createNativeQuery("DELETE FROM SESSION_INSCRIPTION WHERE ID_SESSION_FORMATION=:idSessionFormation");
		query.setParameter("idSessionFormation", idSessionFormation);
		
		query.executeUpdate();
	}

	@SuppressWarnings("unchecked")
	public List<Collaborateur> getUnregistredCollaborateurs(Long idSessionFormation) throws Exception {
		String s = "SELECT COLLABORATEUR.* FROM COLLABORATEUR WHERE COLLABORATEUR.ID_COLLABORATEUR NOT IN (SELECT ID_COLLABORATEUR from SESSION_INSCRIPTION where ID_SESSION_FORMATION=:idSessionFormation)";
		Query query = entityManager.createNativeQuery(s, Collaborateur.class);
		
		query.setParameter("idSessionFormation", idSessionFormation);
		
		return query.getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Collaborateur> getRegistredCollaborateurs(Long idSessionFormation) throws Exception {
		String s = "SELECT COLLABORATEUR.* FROM COLLABORATEUR WHERE COLLABORATEUR.ID_COLLABORATEUR IN (SELECT ID_COLLABORATEUR from SESSION_INSCRIPTION where ID_SESSION_FORMATION=:idSessionFormation)";
		Query query = entityManager.createNativeQuery(s, Collaborateur.class);
		
		query.setParameter("idSessionFormation", idSessionFormation);
		
		return query.getResultList();
	}
	
	public EntityManager getEntityManager() {
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

}
