/**
 * 
 */
package com.sqli.echallenge.formation.dao;

import java.util.List;

import com.sqli.echallenge.formation.model.Seance;

/**
 * @author Mouad
 *
 */
public interface SeanceDao {
	public Seance getSeance(Long idSeance) throws Exception;
	public List<Seance> getAllSeances() throws Exception;
	public List<Seance> getAllSeancesOfSession(Long idSessionFormation) throws Exception;
	public void updateSeance(Seance seance) throws Exception;
	public void removeSeance(Long idSeance) throws Exception;
	public void addSeance(Seance seance) throws Exception;
}
