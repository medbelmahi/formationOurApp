/**
 * 
 */
package com.sqli.echallenge.formation.dao;

import java.util.List;

import com.sqli.echallenge.formation.model.SessionFormation;

/**
 * @author Mouad
 *
 */
public interface SessionFormationDao {
	public SessionFormation getSessionFormation(Long idSessionFormation) throws Exception;
	public List<SessionFormation> getAllSessionFormations() throws Exception;
	public List<SessionFormation> getAllSessionFormationsOfFormateur(Long idFormateur) throws Exception;
	public void updateSessionFormation(SessionFormation sessionFormation) throws Exception;
	public void removeSessionFormation(Long idSessionFormation) throws Exception;
	public void addSessionFormation(SessionFormation sessionFormation) throws Exception;
}
