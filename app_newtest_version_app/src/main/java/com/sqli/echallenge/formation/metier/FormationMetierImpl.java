/**
 * 
 */
package com.sqli.echallenge.formation.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sqli.echallenge.formation.dao.FormationDao;
import com.sqli.echallenge.formation.model.Formation;

/**
 * @author Mouad
 *
 */
@Service
@Transactional
public class FormationMetierImpl implements FormationMetier {
	
	@Autowired
	private FormationDao dao;
	
	public Formation getFormation(Long idFormation) throws Exception {
		return dao.getFormation(idFormation);
	}

	public void addFormation(Formation formation) throws Exception {
		dao.addFormation(formation);
	}

	public void updateFormation(Formation formation) throws Exception {
		dao.updateFormation(formation);
	}

	public void removeFormation(Long idFormation) throws Exception {
		dao.removeFormation(idFormation);
	}

	public List<Formation> getAllFormation() throws Exception {
		return dao.getAllFormation();
	}

	public FormationDao getDao() {
		return dao;
	}

	public void setDao(FormationDao dao) {
		this.dao = dao;
	}

}
