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

import com.sqli.echallenge.formation.model.Seance;

/**
 * @author Mouad
 *
 */
@Repository
@Transactional
public class SeanceDaoImpl implements SeanceDao {

	@PersistenceContext
	private EntityManager entityManager;
	
	public Seance getSeance(Long idSeance) throws Exception {
		Seance seance = entityManager.find(Seance.class, idSeance);
		if(seance == null) throw new Exception("sqliException : No Entery found");
		
		return seance;
	}

	@SuppressWarnings("unchecked")
	public List<Seance> getAllSeances() throws Exception {
		Query query = entityManager.createQuery("from Seance");
		return query.getResultList();
	}

	@SuppressWarnings("unchecked")
	public List<Seance> getAllSeancesOfSession(Long idSessionFormation) throws Exception {
		Query query = entityManager.createQuery("from Seance where sessionFormation.idSessionFormation=:idSessionFormation");
		query.setParameter("idSessionFormation", idSessionFormation);
		return query.getResultList();
	}

	public void updateSeance(Seance seance) throws Exception {
		entityManager.merge(seance);
	}

	public void removeSeance(Long idSeance) throws Exception {
		entityManager.remove(getSeance(idSeance));
	}

	public void addSeance(Seance seance) throws Exception {
		entityManager.persist(seance);
	}

	public EntityManager getEntityManager() {
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

}
