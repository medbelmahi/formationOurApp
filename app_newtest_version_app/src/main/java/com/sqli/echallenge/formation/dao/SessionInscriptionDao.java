/**
 * 
 */
package com.sqli.echallenge.formation.dao;

import java.util.List;

import com.sqli.echallenge.formation.model.Collaborateur;
import com.sqli.echallenge.formation.model.SessionInscription;

/**
 * @author Mouad
 *
 */
public interface SessionInscriptionDao {
	public SessionInscription getSessionInscription(Long idSessionInscription) throws Exception;
	public void addSessionInscription(SessionInscription sessionInscription) throws Exception;
	public void updateSessionInscription(SessionInscription sessionInscription) throws Exception;
	public List<SessionInscription> getAllSessionInscriptions(Long idSessionFormation) throws Exception;
	public void removeAllSessionInscription(Long idSessionFormation) throws Exception;
	public void removeSessionInscriptionOfCollaborateur(Long idCollaborateur) throws Exception;
	
	public List<Collaborateur> getRegistredCollaborateurs(Long idSessionFormation) throws Exception;
	public List<Collaborateur> getUnregistredCollaborateurs(Long idSessionFormation) throws Exception;
}
