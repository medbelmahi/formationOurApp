/**
 * 
 */
package com.sqli.echallenge.formation.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sqli.echallenge.formation.dao.SeanceDao;
import com.sqli.echallenge.formation.model.Seance;

/**
 * @author Mouad
 *
 */
@Service
@Transactional
public class SeanceMetierImpl implements SeanceMetier {

	@Autowired
	private SeanceDao dao;
	
	public Seance getSeance(Long idSeance) throws Exception {
		return dao.getSeance(idSeance);
	}

	public List<Seance> getAllSeances() throws Exception {
		return dao.getAllSeances();
	}

	public List<Seance> getAllSeancesOfSession(Long idSessionFormation) throws Exception {
		return dao.getAllSeancesOfSession(idSessionFormation);
	}

	public void updateSeance(Seance seance) throws Exception {
		dao.updateSeance(seance);
	}

	public void removeSeance(Long idSeance) throws Exception {
		dao.removeSeance(idSeance);
	}

	public void addSeance(Seance seance) throws Exception {
		dao.addSeance(seance);
	}

	public SeanceDao getDao() {
		return dao;
	}

	public void setDao(SeanceDao dao) {
		this.dao = dao;
	}

}
