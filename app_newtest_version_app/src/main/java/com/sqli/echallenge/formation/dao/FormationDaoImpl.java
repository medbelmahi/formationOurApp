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

import com.sqli.echallenge.formation.model.Formation;

/**
 * @author Mouad
 *
 */
@Repository
@Transactional
public class FormationDaoImpl implements FormationDao {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	public Formation getFormation(Long idFormation) throws Exception {
		Formation formation = entityManager.find(Formation.class, idFormation);
		if(formation == null) throw new Exception("sqliException : No Entery found");
		
		return formation;
	}

	public void addFormation(Formation formation) throws Exception {
		entityManager.persist(formation);
	}

	public void updateFormation(Formation formation) throws Exception {
		entityManager.merge(formation);
	}

	public void removeFormation(Long idFormation) throws Exception {
		entityManager.remove(getFormation(idFormation));
	}

	@SuppressWarnings("unchecked")
	public List<Formation> getAllFormation() throws Exception {
		Query query = entityManager.createQuery("from Formation");
		return query.getResultList();
	}

	public EntityManager getEntityManager() {
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

}
