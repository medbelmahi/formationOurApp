/**
 * 
 */
package com.sqli.echallenge.formation.metier;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sqli.echallenge.formation.dao.SessionInscriptionDao;
import com.sqli.echallenge.formation.model.Collaborateur;
import com.sqli.echallenge.formation.model.SessionInscription;

/**
 * @author Mouad
 *
 */
@Service
@Transactional
public class SessionInscriptionMetierImpl implements SessionInscriptionMetier {

	@Autowired
	private SessionInscriptionDao dao;
	
	public SessionInscription getSessionInscription(Long idSessionInscription) throws Exception {
		return dao.getSessionInscription(idSessionInscription);
	}

	public void addSessionInscription(SessionInscription sessionInscription) throws Exception {
		dao.addSessionInscription(sessionInscription);
	}

	public void updateSessionInscription(SessionInscription sessionInscription)	throws Exception {
		dao.updateSessionInscription(sessionInscription);
	}

	public List<SessionInscription> getAllSessionInscriptions(Long idSessionFormation) throws Exception {
		return dao.getAllSessionInscriptions(idSessionFormation);
	}

	public void removeAllSessionInscription(Long idSessionFormation) throws Exception {
		dao.removeAllSessionInscription(idSessionFormation);
	}

	public List<Collaborateur> getUnregistredCollaborateurs(Long idSessionFormation) throws Exception {
		return dao.getUnregistredCollaborateurs(idSessionFormation);
	}
	
	public List<Collaborateur> getRegistredCollaborateurs(Long idSessionFormation) throws Exception {
		return dao.getRegistredCollaborateurs(idSessionFormation);
	}

	public SessionInscriptionDao getDao() {
		return dao;
	}

	public void setDao(SessionInscriptionDao dao) {
		this.dao = dao;
	}
	
}
