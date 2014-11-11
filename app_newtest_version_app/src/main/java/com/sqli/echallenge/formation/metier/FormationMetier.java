/**
 * 
 */
package com.sqli.echallenge.formation.metier;

import java.util.List;

import com.sqli.echallenge.formation.model.Formation;

/**
 * @author Mouad
 *
 */
public interface FormationMetier {
	public Formation getFormation(Long idFormation) throws Exception;
	public void addFormation(Formation formation) throws Exception;
	public void updateFormation(Formation formation) throws Exception;
	public void removeFormation(Long idFormation) throws Exception;
	public List<Formation> getAllFormation() throws Exception;
}
