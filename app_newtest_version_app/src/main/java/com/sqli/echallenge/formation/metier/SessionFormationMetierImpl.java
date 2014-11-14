/**
 * 
 */
package com.sqli.echallenge.formation.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sqli.echallenge.formation.dao.SessionFormationDao;
import com.sqli.echallenge.formation.model.SessionFormation;

/**
 * @author Mouad
 *
 */
@Service
@Transactional
public class SessionFormationMetierImpl implements SessionFormationMetier {

	@Autowired
	private SessionFormationDao dao;
	
	@Autowired
	private SessionInscriptionMetier sessionInscriptionMetie;
	
	public SessionFormation getSessionFormation(Long idSessionFormation) throws Exception {
		return dao.getSessionFormation(idSessionFormation);
	}

	public List<SessionFormation> getAllSessionFormations() throws Exception {
		return dao.getAllSessionFormations();
	}

	public List<SessionFormation> getAllSessionFormationsOfFormateur(Long idFormateur) throws Exception {
		return dao.getAllSessionFormationsOfFormateur(idFormateur);
	}

	public void updateSessionFormation(SessionFormation sessionFormation) throws Exception {
		dao.updateSessionFormation(sessionFormation);
	}

	public void removeSessionFormation(Long idSessionFormation) throws Exception {
		//remove SessionInscription
		sessionInscriptionMetie.removeAllSessionInscription(idSessionFormation);
		
		//remove SessionFormation
		dao.removeSessionFormation(idSessionFormation);
	}

	public void addSessionFormation(SessionFormation sessionFormation) throws Exception {
		dao.addSessionFormation(sessionFormation);
	}

	public SessionFormationDao getDao() {
		return dao;
	}

	public void setDao(SessionFormationDao dao) {
		this.dao = dao;
	}

	public SessionInscriptionMetier getSessionInscriptionMetie() {
		return sessionInscriptionMetie;
	}

	public void setSessionInscriptionMetie(
			SessionInscriptionMetier sessionInscriptionMetie) {
		this.sessionInscriptionMetie = sessionInscriptionMetie;
	}

}
